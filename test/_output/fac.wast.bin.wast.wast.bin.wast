(module binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7e\01\7e\03\86\80\80\80\00\05\00\00\00\00\00"
  "\07\c1\80\80\80\00\05\07\66\61\63\2d\72\65\63\00"
  "\00\0d\66\61\63\2d\72\65\63\2d\6e\61\6d\65\64\00"
  "\01\08\66\61\63\2d\69\74\65\72\00\02\0e\66\61\63"
  "\2d\69\74\65\72\2d\6e\61\6d\65\64\00\03\07\66\61"
  "\63\2d\6f\70\74\00\04\0a\d2\81\80\80\00\05\97\80"
  "\80\80\00\00\20\00\42\00\51\04\7e\42\01\05\20\00"
  "\20\00\42\01\7d\10\00\7e\0b\0b\97\80\80\80\00\00"
  "\20\00\42\00\51\04\7e\42\01\05\20\00\20\00\42\01"
  "\7d\10\01\7e\0b\0b\af\80\80\80\00\01\02\7e\20\00"
  "\21\01\42\01\21\02\02\40\03\40\20\01\42\00\51\04"
  "\40\0c\02\05\20\01\20\02\7e\21\02\20\01\42\01\7d"
  "\21\01\0b\0c\00\0b\0b\20\02\0b\af\80\80\80\00\01"
  "\02\7e\20\00\21\01\42\01\21\02\02\40\03\40\20\01"
  "\42\00\51\04\40\0c\02\05\20\01\20\02\7e\21\02\20"
  "\01\42\01\7d\21\01\0b\0c\00\0b\0b\20\02\0b\ac\80"
  "\80\80\00\01\01\7e\42\01\21\01\02\40\20\00\42\02"
  "\53\0d\00\03\40\20\01\20\00\7e\21\01\20\00\42\7f"
  "\7c\21\00\20\00\42\01\55\0d\00\0b\0b\20\01\0b"
)
(assert_return
  (invoke "fac-rec" (i64.const 25))
  (i64.const 7_034_535_277_573_963_776)
)
(assert_return
  (invoke "fac-iter" (i64.const 25))
  (i64.const 7_034_535_277_573_963_776)
)
(assert_return
  (invoke "fac-rec-named" (i64.const 25))
  (i64.const 7_034_535_277_573_963_776)
)
(assert_return
  (invoke "fac-iter-named" (i64.const 25))
  (i64.const 7_034_535_277_573_963_776)
)
(assert_return
  (invoke "fac-opt" (i64.const 25))
  (i64.const 7_034_535_277_573_963_776)
)
(assert_exhaustion
  (invoke "fac-rec" (i64.const 1_073_741_824))
  "call stack exhausted"
)
