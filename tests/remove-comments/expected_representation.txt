
(module
  (func (;0;) (param $year i32) (result i32)
    local.get $year
    i32.const 4
    i32.rem_s
    i32.eqz
    local.get $year
    i32.const 100
    i32.rem_s
    i32.const 0
    i32.ne
    local.get $year
    i32.const 400
    i32.rem_s
    i32.eqz
    i32.or
    i32.and)
  (export "isLeap" (func 0))
  (type (;0;) (func (param i32) (result i32))))
