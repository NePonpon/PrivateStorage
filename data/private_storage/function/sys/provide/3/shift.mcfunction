#> private_storage:sys/provide/3/shift
#
# シフト実行
#

$data modify storage private_storage: _[-8][-8] append from storage private_storage:sys shift_list[$(shift)][]
