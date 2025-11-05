#> private_storage:sys/provide/shift/reset
#
# シフト状態をリセット
#

$data remove storage private_storage: _$(remove_path)[-1]
$execute if data storage private_storage: _$(remove_path)[8] run function private_storage:sys/provide/shift/reset {remove_path:"$(remove_path)"}
