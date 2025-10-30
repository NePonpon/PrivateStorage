#> private_storage:sys/provide/1/shift
#
# シフト実行
#

$data modify storage private_storage: _ append from storage private_storage:sys shift_list[$(shift)][]
