(module)
(module)
(module
  (type $0 (func (param i32 i32) (result i32)))
  (func $0 (type 0) (local.get 0) (local.get 1) (i32.add))
  (export "addTwo" (func 0))
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00")
  "unexpected end"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\00")
  "unexpected end"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\00\00\05\01\00\07\00" "\00")
  "unexpected end"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\00\26\10\61\20\63\75\73"
    "\74\6f\6d\20\73\65\63\74\69\6f\6e\74\68\69\73\20"
    "\69\73\20\74\68\65\20\70\61\79\6c\6f\61\64"
  )
  "unexpected end"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\00\25\10\61\20\63\75\73"
    "\74\6f\6d\20\73\65\63\74\69\6f\6e\74\68\69\73\20"
    "\69\73\20\74\68\65\20\70\61\79\6c\6f\61\64\00\24"
    "\10\61\20\63\75\73\74\6f\6d\20\73\65\63\74\69\6f"
    "\6e\74\68\69\73\20\69\73\20\74\68\65\20\70\61\79"
    "\6c\6f\61\64"
  )
  "invalid section id"
)
(assert_malformed
  (module binary
    "\00\61\73\6d\01\00\00\00\01\07\01\60\02\7f\7f\01"
    "\7f\00\25\10\61\20\63\75\73\74\6f\6d\20\73\65\63"
    "\74\69\6f\6e\74\68\69\73\20\69\73\20\74\68\65\20"
    "\70\61\79\6c\6f\61\64\03\02\01\00\0a\09\01\07\00"
    "\20\00\20\01\6a\0b\00\1b\07\63\75\73\74\6f\6d\32"
    "\74\68\69\73\20\69\73\20\74\68\65\20\70\61\79\6c"
    "\6f\61\64"
  )
  "function and code section have inconsistent lengths"
)
(assert_malformed
  (module binary "\00\61\73\6d\01\00\00\00\00\61\73\6d\01\00\00\00")
  "length out of bounds"
)
