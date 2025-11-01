#> private_storage:access
#
# _ PrivateStorageId
# 指定したストレージへアクセスする
#

# 有効値チェック 0 ～ 8^6 - 1
execute unless score _ PrivateStorageId matches 0..262143 run return 0

execute store result storage private_storage:sys provide_id int 1 run scoreboard players get _ PrivateStorageId
execute store success storage private_storage:sys flag byte 1 run data modify storage private_storage:sys previous_id set from storage private_storage:sys provide_id

execute if data storage private_storage:sys {flag:true} run function private_storage:sys/provide/
