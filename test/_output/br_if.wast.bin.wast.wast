(module
  (type $0 (func (param i32 i32 i32) (result i32)))
  (type $1 (func))
  (type $2 (func (result i32)))
  (type $3 (func (result i64)))
  (type $4 (func (result f32)))
  (type $5 (func (result f64)))
  (type $6 (func (param i32) (result i32)))
  (type $7 (func (param i32)))
  (type $8 (func (param i32 i32)))
  (table $0 1 1 funcref)
  (memory $0 1)
  (global $0 (mut i32) (i32.const 10))
  (func $0 (type 1))
  (func $1
    (type 1)
    (block (i32.const 0) (i32.const 1) (br_if 0) (i32.ctz) (drop))
  )
  (func $2
    (type 1)
    (block (i64.const 0) (i32.const 1) (br_if 0) (i64.ctz) (drop))
  )
  (func $3
    (type 1)
    (block (f32.const 0) (i32.const 1) (br_if 0) (f32.neg) (drop))
  )
  (func $4
    (type 1)
    (block (f64.const 0) (i32.const 1) (br_if 0) (f64.neg) (drop))
  )
  (func $5
    (type 2)
    (block (result i32) (i32.const 1) (i32.const 1) (br_if 0) (i32.ctz))
  )
  (func $6
    (type 3)
    (block (result i64) (i64.const 2) (i32.const 1) (br_if 0) (i64.ctz))
  )
  (func $7
    (type 4)
    (block (result f32) (f32.const 3) (i32.const 1) (br_if 0) (f32.neg))
  )
  (func $8
    (type 5)
    (block (result f64) (f64.const 4) (i32.const 1) (br_if 0) (f64.neg))
  )
  (func $9
    (type 6)
    (block (local.get 0) (br_if 0) (i32.const 2) (return))
    (i32.const 3)
  )
  (func $10
    (type 6)
    (block (call 0) (local.get 0) (br_if 0) (i32.const 2) (return))
    (i32.const 3)
  )
  (func $11 (type 7) (block (call 0) (call 0) (local.get 0) (br_if 0)))
  (func $12
    (type 6)
    (block
      (result i32)
      (i32.const 10)
      (local.get 0)
      (br_if 0)
      (drop)
      (i32.const 11)
      (return)
    )
  )
  (func $13
    (type 6)
    (block
      (result i32)
      (call 0)
      (i32.const 20)
      (local.get 0)
      (br_if 0)
      (drop)
      (i32.const 21)
      (return)
    )
  )
  (func $14
    (type 6)
    (block
      (result i32)
      (call 0)
      (call 0)
      (i32.const 11)
      (local.get 0)
      (br_if 0)
    )
  )
  (func $15
    (type 6)
    (block (loop (local.get 0) (br_if 1) (i32.const 2) (return)))
    (i32.const 3)
  )
  (func $16
    (type 6)
    (block (loop (call 0) (local.get 0) (br_if 1) (i32.const 2) (return)))
    (i32.const 4)
  )
  (func $17 (type 7) (loop (call 0) (local.get 0) (br_if 1)))
  (func $18
    (type 2)
    (block (result i32) (i32.const 1) (i32.const 2) (br_if 0) (br 0))
  )
  (func $19 (type 1) (block (i32.const 1) (i32.const 1) (br_if 0) (br_if 0)))
  (func $20
    (type 2)
    (block
      (result i32)
      (i32.const 1)
      (i32.const 2)
      (br_if 0)
      (i32.const 3)
      (br_if 0)
      (drop)
      (i32.const 4)
    )
  )
  (func $21
    (type 6)
    (block
      (result i32)
      (i32.const 2)
      (i32.const 1)
      (local.get 0)
      (br_if 0)
      (br_if 0)
      (drop)
      (i32.const 4)
    )
  )
  (func $22
    (type 1)
    (block (i32.const 1) (i32.const 2) (br_if 0) (br_table 0 0 0))
  )
  (func $23
    (type 2)
    (block
      (result i32)
      (i32.const 1)
      (i32.const 2)
      (br_if 0)
      (i32.const 3)
      (br_table 0 0 0)
      (i32.const 4)
    )
  )
  (func $24
    (type 2)
    (block
      (result i32)
      (i32.const 2)
      (i32.const 1)
      (i32.const 3)
      (br_if 0)
      (br_table 0 0)
      (i32.const 4)
    )
  )
  (func $25
    (type 3)
    (block (result i64) (i64.const 1) (i32.const 2) (br_if 0) (return))
  )
  (func $26
    (type 6)
    (block
      (result i32)
      (i32.const 1)
      (local.get 0)
      (br_if 0)
      (if (result i32) (then (i32.const 2)) (else (i32.const 3)))
    )
  )
  (func $27
    (type 8)
    (block (local.get 0) (if (then (local.get 1) (br_if 1)) (else (call 0))))
  )
  (func $28
    (type 8)
    (block (local.get 0) (if (then (call 0)) (else (local.get 1) (br_if 1))))
  )
  (func $29
    (type 6)
    (block
      (result i32)
      (i32.const 3)
      (i32.const 10)
      (br_if 0)
      (i32.const 2)
      (local.get 0)
      (select)
    )
  )
  (func $30
    (type 6)
    (block
      (result i32)
      (i32.const 1)
      (i32.const 3)
      (i32.const 10)
      (br_if 0)
      (local.get 0)
      (select)
    )
  )
  (func $31
    (type 2)
    (block
      (result i32)
      (i32.const 1)
      (i32.const 2)
      (i32.const 3)
      (i32.const 10)
      (br_if 0)
      (select)
    )
  )
  (func $32 (type 0) (i32.const -1))
  (func $33
    (type 2)
    (block
      (result i32)
      (i32.const 12)
      (i32.const 1)
      (br_if 0)
      (i32.const 2)
      (i32.const 3)
      (call 32)
    )
  )
  (func $34
    (type 2)
    (block
      (result i32)
      (i32.const 1)
      (i32.const 13)
      (i32.const 1)
      (br_if 0)
      (i32.const 3)
      (call 32)
    )
  )
  (func $35
    (type 2)
    (block
      (result i32)
      (i32.const 1)
      (i32.const 2)
      (i32.const 14)
      (i32.const 1)
      (br_if 0)
      (call 32)
    )
  )
  (func $36 (type 0) (local.get 0))
  (func $37
    (type 2)
    (block
      (result i32)
      (i32.const 4)
      (i32.const 10)
      (br_if 0)
      (i32.const 1)
      (i32.const 2)
      (i32.const 0)
      (call_indirect (type 0))
    )
  )
  (func $38
    (type 2)
    (block
      (result i32)
      (i32.const 1)
      (i32.const 4)
      (i32.const 10)
      (br_if 0)
      (i32.const 2)
      (i32.const 0)
      (call_indirect (type 0))
    )
  )
  (func $39
    (type 2)
    (block
      (result i32)
      (i32.const 1)
      (i32.const 2)
      (i32.const 4)
      (i32.const 10)
      (br_if 0)
      (i32.const 0)
      (call_indirect (type 0))
    )
  )
  (func $40
    (type 2)
    (block
      (result i32)
      (i32.const 1)
      (i32.const 2)
      (i32.const 3)
      (i32.const 4)
      (i32.const 10)
      (br_if 0)
      (call_indirect (type 0))
    )
  )
  (func $41
    (type 6)
    (local i32)
    (block
      (result i32)
      (i32.const 17)
      (local.get 0)
      (br_if 0)
      (local.set 0)
      (i32.const -1)
    )
  )
  (func $42
    (type 6)
    (block
      (result i32)
      (i32.const 1)
      (local.get 0)
      (br_if 0)
      (local.tee 0)
      (i32.const -1)
      (return)
    )
  )
  (func $43
    (type 6)
    (block
      (result i32)
      (i32.const 1)
      (local.get 0)
      (br_if 0)
      (global.set 0)
      (i32.const -1)
      (return)
    )
  )
  (func $44
    (type 2)
    (block (result i32) (i32.const 1) (i32.const 1) (br_if 0) (i32.load))
  )
  (func $45
    (type 2)
    (block (result i32) (i32.const 30) (i32.const 1) (br_if 0) (i32.load8_s))
  )
  (func $46
    (type 2)
    (block
      (result i32)
      (i32.const 30)
      (i32.const 1)
      (br_if 0)
      (i32.const 7)
      (i32.store)
      (i32.const -1)
    )
  )
  (func $47
    (type 2)
    (block
      (result i32)
      (i32.const 2)
      (i32.const 31)
      (i32.const 1)
      (br_if 0)
      (i32.store)
      (i32.const -1)
    )
  )
  (func $48
    (type 2)
    (block
      (result i32)
      (i32.const 32)
      (i32.const 1)
      (br_if 0)
      (i32.const 7)
      (i32.store8)
      (i32.const -1)
    )
  )
  (func $49
    (type 2)
    (block
      (result i32)
      (i32.const 2)
      (i32.const 33)
      (i32.const 1)
      (br_if 0)
      (i32.store16)
      (i32.const -1)
    )
  )
  (func $50
    (type 5)
    (block (result f64) (f64.const 1) (i32.const 1) (br_if 0) (f64.neg))
  )
  (func $51
    (type 2)
    (block
      (result i32)
      (i32.const 1)
      (i32.const 1)
      (br_if 0)
      (i32.const 10)
      (i32.add)
    )
  )
  (func $52
    (type 2)
    (block
      (result i32)
      (i32.const 10)
      (i32.const 1)
      (i32.const 1)
      (br_if 0)
      (i32.sub)
    )
  )
  (func $53
    (type 2)
    (block (result i32) (i32.const 0) (i32.const 1) (br_if 0) (i32.eqz))
  )
  (func $54
    (type 2)
    (block
      (result i32)
      (i32.const 1)
      (i32.const 1)
      (br_if 0)
      (i32.const 10)
      (i32.le_u)
    )
  )
  (func $55
    (type 2)
    (block
      (result i32)
      (i32.const 10)
      (i32.const 1)
      (i32.const 42)
      (br_if 0)
      (i32.ne)
    )
  )
  (func $56
    (type 2)
    (block (result i32) (i32.const 1) (i32.const 1) (br_if 0) (memory.grow))
  )
  (func $57
    (type 6)
    (i32.const 1)
    (block
      (result i32)
      (i32.const 2)
      (drop)
      (i32.const 4)
      (block
        (result i32)
        (i32.const 8)
        (local.get 0)
        (br_if 1)
        (drop)
        (i32.const 16)
      )
      (i32.add)
    )
    (i32.add)
  )
  (func $58
    (type 6)
    (i32.const 1)
    (block
      (result i32)
      (i32.const 2)
      (drop)
      (block
        (result i32)
        (i32.const 8)
        (local.get 0)
        (br_if 1)
        (drop)
        (i32.const 4)
      )
      (br 0)
      (i32.const 16)
    )
    (i32.add)
  )
  (func $59
    (type 6)
    (i32.const 1)
    (block
      (result i32)
      (i32.const 2)
      (drop)
      (block
        (result i32)
        (i32.const 8)
        (local.get 0)
        (br_if 1)
        (drop)
        (i32.const 4)
      )
      (i32.const 1)
      (br_if 0)
      (drop)
      (i32.const 16)
    )
    (i32.add)
  )
  (func $60
    (type 6)
    (i32.const 1)
    (block
      (result i32)
      (i32.const 2)
      (drop)
      (i32.const 4)
      (block
        (result i32)
        (i32.const 8)
        (local.get 0)
        (br_if 1)
        (drop)
        (i32.const 1)
      )
      (br_if 0)
      (drop)
      (i32.const 16)
    )
    (i32.add)
  )
  (func $61
    (type 6)
    (i32.const 1)
    (block
      (result i32)
      (i32.const 2)
      (drop)
      (block
        (result i32)
        (i32.const 8)
        (local.get 0)
        (br_if 1)
        (drop)
        (i32.const 4)
      )
      (i32.const 1)
      (br_table 0)
      (i32.const 16)
    )
    (i32.add)
  )
  (func $62
    (type 6)
    (i32.const 1)
    (block
      (result i32)
      (i32.const 2)
      (drop)
      (i32.const 4)
      (block
        (result i32)
        (i32.const 8)
        (local.get 0)
        (br_if 1)
        (drop)
        (i32.const 1)
      )
      (br_table 0)
      (i32.const 16)
    )
    (i32.add)
  )
  (export "type-i32" (func 1))
  (export "type-i64" (func 2))
  (export "type-f32" (func 3))
  (export "type-f64" (func 4))
  (export "type-i32-value" (func 5))
  (export "type-i64-value" (func 6))
  (export "type-f32-value" (func 7))
  (export "type-f64-value" (func 8))
  (export "as-block-first" (func 9))
  (export "as-block-mid" (func 10))
  (export "as-block-last" (func 11))
  (export "as-block-first-value" (func 12))
  (export "as-block-mid-value" (func 13))
  (export "as-block-last-value" (func 14))
  (export "as-loop-first" (func 15))
  (export "as-loop-mid" (func 16))
  (export "as-loop-last" (func 17))
  (export "as-br-value" (func 18))
  (export "as-br_if-cond" (func 19))
  (export "as-br_if-value" (func 20))
  (export "as-br_if-value-cond" (func 21))
  (export "as-br_table-index" (func 22))
  (export "as-br_table-value" (func 23))
  (export "as-br_table-value-index" (func 24))
  (export "as-return-value" (func 25))
  (export "as-if-cond" (func 26))
  (export "as-if-then" (func 27))
  (export "as-if-else" (func 28))
  (export "as-select-first" (func 29))
  (export "as-select-second" (func 30))
  (export "as-select-cond" (func 31))
  (export "as-call-first" (func 33))
  (export "as-call-mid" (func 34))
  (export "as-call-last" (func 35))
  (export "as-call_indirect-func" (func 37))
  (export "as-call_indirect-first" (func 38))
  (export "as-call_indirect-mid" (func 39))
  (export "as-call_indirect-last" (func 40))
  (export "as-local.set-value" (func 41))
  (export "as-local.tee-value" (func 42))
  (export "as-global.set-value" (func 43))
  (export "as-load-address" (func 44))
  (export "as-loadN-address" (func 45))
  (export "as-store-address" (func 46))
  (export "as-store-value" (func 47))
  (export "as-storeN-address" (func 48))
  (export "as-storeN-value" (func 49))
  (export "as-unary-operand" (func 50))
  (export "as-binary-left" (func 51))
  (export "as-binary-right" (func 52))
  (export "as-test-operand" (func 53))
  (export "as-compare-left" (func 54))
  (export "as-compare-right" (func 55))
  (export "as-memory.grow-size" (func 56))
  (export "nested-block-value" (func 57))
  (export "nested-br-value" (func 58))
  (export "nested-br_if-value" (func 59))
  (export "nested-br_if-value-cond" (func 60))
  (export "nested-br_table-value" (func 61))
  (export "nested-br_table-value-index" (func 62))
  (elem 0 (offset (i32.const 0)) 36)
)
(assert_return (invoke "type-i32"))
(assert_return (invoke "type-i64"))
(assert_return (invoke "type-f32"))
(assert_return (invoke "type-f64"))
(assert_return (invoke "type-i32-value") (i32.const 1))
(assert_return (invoke "type-i64-value") (i64.const 2))
(assert_return (invoke "type-f32-value") (f32.const 3))
(assert_return (invoke "type-f64-value") (f64.const 4))
(assert_return (invoke "as-block-first" (i32.const 0)) (i32.const 2))
(assert_return (invoke "as-block-first" (i32.const 1)) (i32.const 3))
(assert_return (invoke "as-block-mid" (i32.const 0)) (i32.const 2))
(assert_return (invoke "as-block-mid" (i32.const 1)) (i32.const 3))
(assert_return (invoke "as-block-last" (i32.const 0)))
(assert_return (invoke "as-block-last" (i32.const 1)))
(assert_return (invoke "as-block-first-value" (i32.const 0)) (i32.const 11))
(assert_return (invoke "as-block-first-value" (i32.const 1)) (i32.const 10))
(assert_return (invoke "as-block-mid-value" (i32.const 0)) (i32.const 21))
(assert_return (invoke "as-block-mid-value" (i32.const 1)) (i32.const 20))
(assert_return (invoke "as-block-last-value" (i32.const 0)) (i32.const 11))
(assert_return (invoke "as-block-last-value" (i32.const 1)) (i32.const 11))
(assert_return (invoke "as-loop-first" (i32.const 0)) (i32.const 2))
(assert_return (invoke "as-loop-first" (i32.const 1)) (i32.const 3))
(assert_return (invoke "as-loop-mid" (i32.const 0)) (i32.const 2))
(assert_return (invoke "as-loop-mid" (i32.const 1)) (i32.const 4))
(assert_return (invoke "as-loop-last" (i32.const 0)))
(assert_return (invoke "as-loop-last" (i32.const 1)))
(assert_return (invoke "as-br-value") (i32.const 1))
(assert_return (invoke "as-br_if-cond"))
(assert_return (invoke "as-br_if-value") (i32.const 1))
(assert_return (invoke "as-br_if-value-cond" (i32.const 0)) (i32.const 2))
(assert_return (invoke "as-br_if-value-cond" (i32.const 1)) (i32.const 1))
(assert_return (invoke "as-br_table-index"))
(assert_return (invoke "as-br_table-value") (i32.const 1))
(assert_return (invoke "as-br_table-value-index") (i32.const 1))
(assert_return (invoke "as-return-value") (i64.const 1))
(assert_return (invoke "as-if-cond" (i32.const 0)) (i32.const 2))
(assert_return (invoke "as-if-cond" (i32.const 1)) (i32.const 1))
(assert_return (invoke "as-if-then" (i32.const 0) (i32.const 0)))
(assert_return (invoke "as-if-then" (i32.const 4) (i32.const 0)))
(assert_return (invoke "as-if-then" (i32.const 0) (i32.const 1)))
(assert_return (invoke "as-if-then" (i32.const 4) (i32.const 1)))
(assert_return (invoke "as-if-else" (i32.const 0) (i32.const 0)))
(assert_return (invoke "as-if-else" (i32.const 3) (i32.const 0)))
(assert_return (invoke "as-if-else" (i32.const 0) (i32.const 1)))
(assert_return (invoke "as-if-else" (i32.const 3) (i32.const 1)))
(assert_return (invoke "as-select-first" (i32.const 0)) (i32.const 3))
(assert_return (invoke "as-select-first" (i32.const 1)) (i32.const 3))
(assert_return (invoke "as-select-second" (i32.const 0)) (i32.const 3))
(assert_return (invoke "as-select-second" (i32.const 1)) (i32.const 3))
(assert_return (invoke "as-select-cond") (i32.const 3))
(assert_return (invoke "as-call-first") (i32.const 12))
(assert_return (invoke "as-call-mid") (i32.const 13))
(assert_return (invoke "as-call-last") (i32.const 14))
(assert_return (invoke "as-call_indirect-func") (i32.const 4))
(assert_return (invoke "as-call_indirect-first") (i32.const 4))
(assert_return (invoke "as-call_indirect-mid") (i32.const 4))
(assert_return (invoke "as-call_indirect-last") (i32.const 4))
(assert_return (invoke "as-local.set-value" (i32.const 0)) (i32.const -1))
(assert_return (invoke "as-local.set-value" (i32.const 1)) (i32.const 17))
(assert_return (invoke "as-local.tee-value" (i32.const 0)) (i32.const -1))
(assert_return (invoke "as-local.tee-value" (i32.const 1)) (i32.const 1))
(assert_return (invoke "as-global.set-value" (i32.const 0)) (i32.const -1))
(assert_return (invoke "as-global.set-value" (i32.const 1)) (i32.const 1))
(assert_return (invoke "as-load-address") (i32.const 1))
(assert_return (invoke "as-loadN-address") (i32.const 30))
(assert_return (invoke "as-store-address") (i32.const 30))
(assert_return (invoke "as-store-value") (i32.const 31))
(assert_return (invoke "as-storeN-address") (i32.const 32))
(assert_return (invoke "as-storeN-value") (i32.const 33))
(assert_return (invoke "as-unary-operand") (f64.const 1))
(assert_return (invoke "as-binary-left") (i32.const 1))
(assert_return (invoke "as-binary-right") (i32.const 1))
(assert_return (invoke "as-test-operand") (i32.const 0))
(assert_return (invoke "as-compare-left") (i32.const 1))
(assert_return (invoke "as-compare-right") (i32.const 1))
(assert_return (invoke "as-memory.grow-size") (i32.const 1))
(assert_return (invoke "nested-block-value" (i32.const 0)) (i32.const 21))
(assert_return (invoke "nested-block-value" (i32.const 1)) (i32.const 9))
(assert_return (invoke "nested-br-value" (i32.const 0)) (i32.const 5))
(assert_return (invoke "nested-br-value" (i32.const 1)) (i32.const 9))
(assert_return (invoke "nested-br_if-value" (i32.const 0)) (i32.const 5))
(assert_return (invoke "nested-br_if-value" (i32.const 1)) (i32.const 9))
(assert_return (invoke "nested-br_if-value-cond" (i32.const 0)) (i32.const 5))
(assert_return (invoke "nested-br_if-value-cond" (i32.const 1)) (i32.const 9))
(assert_return (invoke "nested-br_table-value" (i32.const 0)) (i32.const 5))
(assert_return (invoke "nested-br_table-value" (i32.const 1)) (i32.const 9))
(assert_return
  (invoke "nested-br_table-value-index" (i32.const 0))
  (i32.const 5)
)
(assert_return
  (invoke "nested-br_table-value-index" (i32.const 1))
  (i32.const 9)
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0 (type 0) (block (i32.const 0) (br_if 0) (i32.ctz)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0 (type 0) (block (i32.const 0) (br_if 0) (i64.ctz)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0 (type 0) (block (i32.const 0) (br_if 0) (f32.neg)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0 (type 0) (block (i32.const 0) (br_if 0) (f64.neg)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0 (type 0) (block (i32.const 1) (br_if 0) (i32.ctz)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0 (type 0) (block (i64.const 1) (br_if 0) (i64.ctz)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0 (type 0) (block (f32.const 1) (br_if 0) (f32.neg)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0 (type 0) (block (i64.const 1) (br_if 0) (f64.neg)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0
      (type 0)
      (block (result i32) (i32.const 0) (br_if 0) (i32.const 1))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0
      (type 0)
      (block (result i32) (i32.const 1) (br_if 0) (i32.const 1))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0 (type 0) (block (i32.const 0) (i32.const 0) (br_if 0)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0 (type 0) (block (i32.const 0) (i32.const 1) (br_if 0)))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0
      (type 0)
      (block (result i32) (nop) (i32.const 0) (br_if 0) (i32.const 1))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0
      (type 0)
      (block (result i32) (nop) (i32.const 1) (br_if 0) (i32.const 1))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0
      (type 0)
      (block
        (result i32)
        (i64.const 1)
        (i32.const 0)
        (br_if 0)
        (drop)
        (i32.const 1)
      )
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0
      (type 0)
      (block
        (result i32)
        (i64.const 1)
        (i32.const 0)
        (br_if 0)
        (drop)
        (i32.const 1)
      )
    )
  )
  "type mismatch"
)
(assert_invalid
  (module (type $0 (func)) (func $0 (type 0) (block (br_if 0))))
  "type mismatch"
)
(assert_invalid
  (module (type $0 (func)) (func $0 (type 0) (block (nop) (br_if 0))))
  "type mismatch"
)
(assert_invalid
  (module (type $0 (func)) (func $0 (type 0) (block (i64.const 0) (br_if 0))))
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0
      (type 0)
      (block (result i32) (i32.const 0) (nop) (br_if 0) (i32.const 1))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0
      (type 0)
      (block (result i32) (i32.const 0) (block (i32.const 1) (br_if 1)))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func (result i32)))
    (func $0
      (type 0)
      (block (result i32) (i32.const 0) (i64.const 0) (br_if 0) (i32.const 1))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0
      (type 0)
      (block
        (i32.const 0)
        (i32.const 0)
        (if (result i32) (then (br_if 0)) (else))
      )
      (i32.eqz)
      (drop)
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0
      (type 0)
      (block
        (i32.const 0)
        (i32.const 0)
        (if (result i32) (then (i32.const 1) (br_if 0)) (else))
      )
      (i32.eqz)
      (drop)
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0 (type 0) (block (result i32) (br_if 0) (return)) (i32.eqz) (drop))
  )
  "type mismatch"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0
      (type 0)
      (block (result i32) (i32.const 1) (br_if 0) (return))
      (i32.eqz)
      (drop)
    )
  )
  "type mismatch"
)
(assert_invalid
  (module (type $0 (func)) (func $0 (type 0) (i32.const 1) (br_if 1)))
  "unknown label"
)
(assert_invalid
  (module
    (type $0 (func))
    (func $0 (type 0) (block (block (i32.const 1) (br_if 5))))
  )
  "unknown label"
)
(assert_invalid
  (module (type $0 (func)) (func $0 (type 0) (i32.const 1) (br_if 268_435_457)))
  "unknown label"
)
