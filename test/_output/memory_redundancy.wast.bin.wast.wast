(module
  (type $0 (func))
  (type $1 (func (result i32)))
  (type $2 (func (result f32)))
  (type $3 (func (param i32) (result i32)))
  (memory $0 1 1)
  (func $0
    (type 0)
    (i32.const 0)
    (i32.const 0)
    (i32.store)
    (i32.const 4)
    (i32.const 0)
    (i32.store)
    (i32.const 8)
    (i32.const 0)
    (i32.store)
    (i32.const 12)
    (i32.const 0)
    (i32.store)
  )
  (func $1
    (type 1)
    (i32.const 8)
    (i32.const 0)
    (i32.store)
    (i32.const 5)
    (f32.const -0)
    (f32.store)
    (i32.const 8)
    (i32.load)
  )
  (func $2
    (type 1)
    (local i32 i32)
    (i32.const 8)
    (i32.load)
    (local.set 0)
    (i32.const 5)
    (i32.const -2_147_483_648)
    (i32.store)
    (i32.const 8)
    (i32.load)
    (local.set 1)
    (local.get 0)
    (local.get 1)
    (i32.add)
  )
  (func $3
    (type 2)
    (local f32)
    (i32.const 8)
    (i32.const 589_505_315)
    (i32.store)
    (i32.const 11)
    (f32.load)
    (local.set 0)
    (i32.const 8)
    (i32.const 0)
    (i32.store)
    (local.get 0)
  )
  (func $4 (type 3) (i32.const 16))
  (func $5
    (type 1)
    (local i32 i32)
    (i32.const 4)
    (call 4)
    (local.set 0)
    (i32.const 4)
    (call 4)
    (local.set 1)
    (local.get 0)
    (i32.const 42)
    (i32.store)
    (local.get 1)
    (i32.const 43)
    (i32.store)
    (local.get 0)
    (i32.load)
  )
  (export "zero_everything" (func 0))
  (export "test_store_to_load" (func 1))
  (export "test_redundant_load" (func 2))
  (export "test_dead_store" (func 3))
  (export "malloc" (func 4))
  (export "malloc_aliasing" (func 5))
)
(assert_return (invoke "test_store_to_load") (i32.const 128))
(invoke "zero_everything")
(assert_return (invoke "test_redundant_load") (i32.const 128))
(invoke "zero_everything")
(assert_return
  (invoke "test_dead_store")
  (f32.const 4.904_544_625_136_859_7e-44)
)
(invoke "zero_everything")
(assert_return (invoke "malloc_aliasing") (i32.const 43))
