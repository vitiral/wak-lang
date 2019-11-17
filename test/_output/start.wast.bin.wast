(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\84\80\80\80\00\01\60"
    "\00\00\03\82\80\80\80\00\01\00\08\81\80\80\80\00"
    "\01\0a\88\80\80\80\00\01\82\80\80\80\00\00\0b"
  )
  "unknown function"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7f\03\82\80\80\80\00\01\00\08\81\80\80\80"
    "\00\00\0a\8b\80\80\80\00\01\85\80\80\80\00\00\41"
    "\00\0f\0b"
  )
  "start function"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\01\7f\00\03\82\80\80\80\00\01\00\08\81\80\80\80"
    "\00\00\0a\88\80\80\80\00\01\82\80\80\80\00\00\0b"
  )
  "start function"
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\88\80\80\80\00\02\60"
  "\00\00\60\00\01\7f\03\84\80\80\80\00\03\00\01\00"
  "\05\84\80\80\80\00\01\01\01\01\07\8d\80\80\80\00"
  "\02\03\69\6e\63\00\00\03\67\65\74\00\01\08\81\80"
  "\80\80\00\02\0a\af\80\80\80\00\03\8f\80\80\80\00"
  "\00\41\00\41\00\2d\00\00\41\01\6a\3a\00\00\0b\88"
  "\80\80\80\00\00\41\00\2d\00\00\0f\0b\88\80\80\80"
  "\00\00\10\00\10\00\10\00\0b\0b\87\80\80\80\00\01"
  "\00\41\00\0b\01\41"
)
(assert_return (invoke "get") (i32.const 68))
(invoke "inc")
(assert_return (invoke "get") (i32.const 69))
(invoke "inc")
(assert_return (invoke "get") (i32.const 70))
(module binary
  "\00\61\73\6d\01\00\00\00\01\88\80\80\80\00\02\60"
  "\00\00\60\00\01\7f\03\84\80\80\80\00\03\00\01\00"
  "\05\84\80\80\80\00\01\01\01\01\07\8d\80\80\80\00"
  "\02\03\69\6e\63\00\00\03\67\65\74\00\01\08\81\80"
  "\80\80\00\02\0a\af\80\80\80\00\03\8f\80\80\80\00"
  "\00\41\00\41\00\2d\00\00\41\01\6a\3a\00\00\0b\88"
  "\80\80\80\00\00\41\00\2d\00\00\0f\0b\88\80\80\80"
  "\00\00\10\00\10\00\10\00\0b\0b\87\80\80\80\00\01"
  "\00\41\00\0b\01\41"
)
(assert_return (invoke "get") (i32.const 68))
(invoke "inc")
(assert_return (invoke "get") (i32.const 69))
(invoke "inc")
(assert_return (invoke "get") (i32.const 70))
(module binary
  "\00\61\73\6d\01\00\00\00\01\88\80\80\80\00\02\60"
  "\01\7f\00\60\00\00\02\96\80\80\80\00\01\08\73\70"
  "\65\63\74\65\73\74\09\70\72\69\6e\74\5f\69\33\32"
  "\00\00\03\82\80\80\80\00\01\01\08\81\80\80\80\00"
  "\01\0a\8c\80\80\80\00\01\86\80\80\80\00\00\41\01"
  "\10\00\0b"
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\88\80\80\80\00\02\60"
  "\01\7f\00\60\00\00\02\96\80\80\80\00\01\08\73\70"
  "\65\63\74\65\73\74\09\70\72\69\6e\74\5f\69\33\32"
  "\00\00\03\82\80\80\80\00\01\01\08\81\80\80\80\00"
  "\01\0a\8c\80\80\80\00\01\86\80\80\80\00\00\41\02"
  "\10\00\0b"
)
(module binary
  "\00\61\73\6d\01\00\00\00\01\84\80\80\80\00\01\60"
  "\00\00\02\92\80\80\80\00\01\08\73\70\65\63\74\65"
  "\73\74\05\70\72\69\6e\74\00\00\08\81\80\80\80\00"
  "\00"
)
(assert_trap
  (module binary
    "\00\61\73\6d\01\00\00\00\01\84\80\80\80\00\01\60"
    "\00\00\03\82\80\80\80\00\01\00\08\81\80\80\80\00"
    "\00\0a\89\80\80\80\00\01\83\80\80\80\00\00\00\0b"
  )
  "unreachable"
)
(assert_malformed
  (module quote
    "(module (func $a (unreachable)) (func $b (unreachable)) (start $a) (start $b))"
  )
  "multiple start sections"
)
