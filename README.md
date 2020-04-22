> **wac does not in any way work. It is an experimental language still in the design phase**

The basic design:
- Compiles directly and plainly to wasm
- Expression based language. Expressions can "return a value"
- Macro and const-function first language: many constructs (i.e. generics) don't exist
  but are solved with macros and insertable types.
- Supports basic integer, float and pointer types, structs, enums and interfaces, 
  with an extensive std library.
- Memorry is RAII with tracking of ownership. Stack/vs heap not controllable by
  programmer.
- Inspired by rust and a [withoutboats blog
  post](https://boats.gitlab.io/blog/post/notes-on-a-smaller-rust/)

# Overview

All functions take a struct as input, and all structs are addressable by
index, so are essentially tuples. All data structures (structs/enums/function
inputs/etc) are declared like:

```
{arg1 [type1]; arg2 [String] = "default value"}
```

A statement-expression executes some behavior and can optionally end in`;`.
Multiple statements (a statement block) can be contained within `(...)`.
Statements that don't end in `;` can return a value.

For example:
```
let own v [i32] = (
  let a = 2;
  let b = 40;
  a + b
);
si.print(v);           // function call on system interface, prints "42"
si.printf$("v={}", v); // macro call, prints "v=42"
```

A type expression is always inside `[]`
```
type Id [u32];
let own id [Id] = 42;
```

The following is the function `splitl` which takes a struct
containg a string and delimiter as input and returns an annonymous struct
containing the values to the left and right of the first delimiter on the left.
Please ignore the `own` keyword, it will be discussed in ownership.

```
fn splitl{own s [String]; delimiter [char]}
  -> { own left [String]; own right [String]; }
(
  for$$({let c = ch let i = index}; s.charsIndex{}) (
    if c == delimter (
      let own right = s.removeTail(s.len() - i - 1);
      s.pop(); // pop delimiter
      return {left = s; right = right};
    )
  )
  return {left = s; right = String.default()};
)
```

If you wanted to be able to address both the input and output structs by index,
you would write the following

```
byindex$
fn split{own s [String]; delimiter [char]}
  -> byindex${left [String]; right [String]}
  ( ... )

// Can now call like:
split{"foo,bar"; ','}
```

`byindex$` and `for$$` are macros. Macros with one `$` consume the next
expression. Macros with two `$` (like `for$$`) consume the next two
expressions.

Macros can consume any expression meaning they can consume a container (a
struct value, etc), a statement or block of statements `(...)`, a function, a
struct definition, a type statement (`[u32]`), etc.

Macros can be chained by simply putting them next to eachother without passing
them an expression. For instance, to implement the Debug and Eq interfaces for
a struct you might do:

```
Debug.impl$ Eq.impl$
struct Point (
  x: int;
  y: int;
)
```

In this case, the expressions get consumed bottom-up. So the `struct` expression
gets sent to `Eq.impl$` which gets passed to `Debug.impl$`. In this case, the
order doesn't matter, but that might not always be the case.


# Core Types
- bool
- u8, u16, u32, etc
- i8, i16, i32, etc
- usize, isize, ptr
- f32, f64
- Void


# Ownership
There are a few ways to declare a value:
- `let` expressions
- function inputs and outputs
- structs and enums

The following control how the value can be used and when it is freed:

- `own mut var [type]` declares an _owned exclusive value_. It can be
  mutated and will be destroyed at end of scope. It can be cloned (`own+ v`,
  creates a new value) or given to other functions as `own mut`. It can also be
  converted into a non-mutable value (`let v = own v` or implicitly `f{a=own
  v}`) but after that point it can no longer be used mutably.
- `own var [type]` declares an _immutable value_, possibly shared via
  refcount/GC or possibly const. It will be desroyed at end of scope, which may
  simply decrement the refcount. Cloning (`v.clone()`) may simply increase the
  number of references instead of making a new value.
- `mut var [type]` declares an _exlusive reference_. It can be given to other
  functions as a mutable or immutable reference. The lifetime (`lt$`) tracker
  will ensure that it is not used while other functions have access to it.
- `var [type]` declares an _immutable reference_. It can be given to other
  functions or stored inside collections. It is guaranteed safe by the `lt$`
  tracker.
- `sync var [type]` is an owned (probably refcounted) value that may be shared
  across threads. Types which are declared `sync` can only receive owned or
  sync values (not references). The language provides no way to convert sync
  values to any of the other ownership types, but instead must have methods
  which can convert them (i.e. `Mutex.lock$`).
- `sync mut var [type]` is a mutable, owned value (probably using atomics or
  lockfree algorithms) that may be shared and mutated across threads. It
  can be converted to any of the other ownership types, as it is implied
  that all kinds of ownership and reference are safely allowed. However,
  only `sync mut` or `own mut` values may be inserted into it.
- `const var [type]` declares a constant variable defined at compile time. It
  cannot be mutated and can be converted into any immutable type except sync
  (as there is no reason to do so, since sync is unusable without internal
  tracking/mutability).

A struct can declare that it must never be mutable by simply not having any
`mut` types (note that `sync mut` doesn't count). Internal mutabilty (i.e. to
implement a refcount) can still be achieved by using unsafe contexts.


## Taint analysis and lifetimes

Here is `splitl` using references instead of owned values. In order to use
references, the lifetimes must be marked correctly in this case because
the compiler has no way to know the programer intended the output to be
tied to the input.

```
lt$$(s [res]) // "s" must outlive all values in "res" (result)
fn splitl{s [String]; delimiter [char]}
  -> {left [String]; right [String]}
(
  for$$({let c = v; let i = index}; s.charsIndex{}) (
    if c == delimter (
      return {left=s.slice(0, i); right=s.slice(i+1, s.len())};
    )
  )
  {left=s; right=""}
)
```

Note that `s` is an immutable reference. How might this work?
```
let mut own in = stdin();
let {left=line1; right=line2} = splitl{s=in; delimter='\n'};
// cannot use `in` mutably since it has a reference to left/right
if left == "not good" {
  abort(1);
}
// left/right are no longer used, so we own `in` again and can use mutably.
in.replace("very good", "super good");

// At end of function compiler inserts `in.destroy{}`
```

To summarize:
- The ownership specifications (i.e. `own`, `own mut`, etc) influence
  where `v.destory{}` is inserted -- at the end of scope for the variable
  in reverse order. No lifetime analysis is required for this.
- The ownership specification also outright forbids certain bad things,
  like putting a non-exclusive owned value into a sync or mutating an immutable
  value.
- Taint analysis goes through every function call local to a value and ensures:
  - taints a reference if it is stored in a container type (lowest level is
    typically a slice): their lifetimes must be explicitly bound and that
    reference can no longer be used mutably (via `lt`).
  - taints a reference if any field/index is referenced, it cannot be used
    mutably. If the sub-reference was mutable, only other sub-references (i.e.
    fields) can be used.

The `lt$$` macro is really just calling a compiler intrinsic macro which
assigns _attributes_ to types. This is information known at compile time
which can be used by internal and external tooling to help check programs.
Values assigned must implement the `toJson` interface.

```
attr$$(taint=Vec.of${
   {symbol=tar.inp.s, taint=Taint.Outlive.from(tar.res.all$())};
})
```


# Generics, or rather the lack thereof
The language does not provide generics. Instead types can be specified in
using `[]` as part of their name and macros can inject new types (including
functions, implementations, etc) into packages.

For an example long type:
```
let v [std.collect.HashMap[std.collect.String;u32]];
```

However, note that normally people do not specify types in this way... and in fact,
you can imagine that `HashMap` is not implemented for every possible type, even
the ones in the standard library. Instead, the type must be _generated_ by a macro
from within that package, which also  _injects_ it.

```
type String [std.collect.String];
type HashMap$ [std.collect.HashMap$];

let m [HashMap$[String; u32]]
```

The variant of `HashMap` (which implements the interface
`std.collect.Map[std.collect.String;u32]`) is then _generated_ on the fly.
Declaring the macro like `std.collect.HashMap$` is covered later.

"Generic functions" are also generated via a macro:

```
// continuing above example
m.insert{key="foo"; value=42}; // normal function
assertEq$[_]{expected=someMap; result=m}?;
```

In the above example we use the `m` value normally by inserting a value into
it. We then call a generated function for comparing the map with another map.
The `?` does error handling, which will be covered later.

What functions or types have to be generated? The answer is _any_ function
which does not take in a concrete struct, enum or virtual interface.


## Virtual and Generated Interfaces
Any type can be converted to have a virtual interface to explicit interfaces.
The value is then stored in memory as a "fatpointer" to the value's data and to
the vtable for its methods.

Virtual interface types are declared with `&[]`:

```
type AssertResult [Result$[Void,String]];

fn assertEqU32{expected &[+Debug+Eq$[u32]], result &[+Debug+Into$[u32]]}
  -> AssertResult (
  if expected == result.into$[u32]{} (
    AssertResult.Ok{0=Void};
  ) else (
    AssertResult.Err{0=format$("expected != result; expected={}; result={}", expected, result)};
  )
)
```

Regular functions can accept and return values which have virtual interfaces,
and their code doesn't have to be generated for every possible variant.
Functions which want to use non-virtual interfaces must be generated and
inserted into their respective package. The eaiser way to do this is to be
declared with the `gen$` macro, which will consume the `[+A+B]` type parameters
and convert the input values appropriately when called as a macro.

```
gen$$[A [+Debug]] // Generic over A, which must implement Debug
fn assertEq{
    expected: [+Debug+Eq$[A]];
    result:[+Into$[A]];
  } -> AssertResult (
  let result = result.into$[A];
  if expected == result (
    AssertResult.Ok{0=Void};
  ) else (
    AssertResult.Err{0=format$("expected != result; expected={}; result={}", expected, result)};
  )
)

// Can then be called like
assertEq$[A=u32]{expected=32, result=42}?;

// Or telling it to infer the types.
assertEq$[_]{expected=32, result=42}?;
```


# Reserved keywords:
- types: struct, enum, type
- ownership: let, const, mut, own
- functions: fn, inp, res
- structs: Self
- impl: self
- macros: lt$$, gen$$, tar (target)

# Inline wasm
The `wasm$` macro enables inline wasm. It can use any variables that are
accessible to the program at that point by using their cannonical names
and is not allowed to use addresses that are not accessible local/global
variables.

The compiler itself also extensively uses `wasm_priv$` which can execute
ANY arbitrary wasm, but is not available to other programs.

The canonical names are generated the following way. Note that the names will
be obfuscated to comply with wat naming standards.

For values related to structs and implementations of structs the
```
$<scope>$$struct(offset|method_name)$$<package>$$<type>($$<method>)?
```

- scope: `local` or `global`
- wtype: the wasm "type", or what the variable actually is. wtypes include:
  - `struct`: the variable contains information related to a struct. Includes:
    - `struct_offset`: an offset. `struct {a [u8]; b[u8]}` will give
      `a` an offset of 0, `b` an offset of 8.
    - `struct_method_name`: the name of a method for a struct to be called.

The wtype for values that are stored in memory is:

```
$(global|local)_(ptr|value)$$<package>$$<name>
```

  - `global_ptr`: a pointer to the start of a global data block.
  - `local_ptr`: a local value pointing into memory, i.e. a value on the stack.

There is also the following:

- `$stack_ptr`: the pointer to the memory stack. Eventually this will be
  thread-local (??)


## Name to wasm mapping
https://webassembly.github.io/spec/core/text/values.html#text-id

The text-id spec above is very permissive. It allows most ascii characters
(including `!$%*+./:<>=@` etc). It does NOT allow `()[]`.

Type names must use the characters `\w_.[]` Note that `<>` are not permitted.
Therefore, when converting type names `[]` will be converted to `<>`
