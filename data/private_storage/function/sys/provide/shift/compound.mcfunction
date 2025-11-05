#> private_storage:sys/provide/shift/compound
#
# シフト要素取得 (Compound)
#

$data modify storage private_storage:sys shift.first set from storage private_storage:sys shift_compound[$(shift)]
$data modify storage private_storage:sys shift.end set from storage private_storage:sys shift_compound[-$(shift)]
