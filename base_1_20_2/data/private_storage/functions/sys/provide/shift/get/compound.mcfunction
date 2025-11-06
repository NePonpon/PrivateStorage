#> private_storage:sys/provide/shift/get/compound
#
# シフト要素取得 (Compound)
#

$execute if data storage private_storage:sys {flag:0b} run data modify storage private_storage:sys shift set from storage private_storage:sys shift_compound[$(shift)]
$execute if data storage private_storage:sys {flag:1b} run data modify storage private_storage:sys shift set from storage private_storage:sys shift_compound[-$(shift)]
