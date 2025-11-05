#> private_storage:sys/provide/shift/list
#
# シフト要素取得 (List)
#

$data modify storage private_storage:sys shift.first set from storage private_storage:sys shift_list[$(shift)]
$data modify storage private_storage:sys shift.end set from storage private_storage:sys shift_list[-$(shift)]
