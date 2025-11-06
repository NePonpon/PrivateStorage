#> private_storage:sys/provide/shift/reset/5
#
# シフト状態をリセット
#

data remove storage private_storage: _[-8][-8][-8][-8][-1]
execute if data storage private_storage: _[-8][-8][-8][-8][8] run function private_storage:sys/provide/shift/reset/5
