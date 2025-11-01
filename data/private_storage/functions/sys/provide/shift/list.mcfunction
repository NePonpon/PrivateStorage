#> private_storage:sys/provide/shift/list
#
# シフト要素取得 (List)
#

$execute if data storage private_storage:sys {flag:0b} run data modify storage private_storage:sys shift set from storage private_storage:sys shift_list[$(shift)]
$execute if data storage private_storage:sys {flag:1b} run data modify storage private_storage:sys shift set from storage private_storage:sys shift_list[-$(shift)]
