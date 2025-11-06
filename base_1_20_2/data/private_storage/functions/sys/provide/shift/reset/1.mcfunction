#> private_storage:sys/provide/shift/reset/1
#
# シフト状態をリセット
#

data remove storage private_storage: _[-1]
execute if data storage private_storage: _[8] run function private_storage:sys/provide/shift/reset/1
