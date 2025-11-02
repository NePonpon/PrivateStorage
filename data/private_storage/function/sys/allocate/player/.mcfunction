#> private_storage:sys/allocate/player/
#
# 割り当て済みのタグとIdとownerを付与
#

# 割り当て済みタグ
attribute @s minecraft:movement_speed modifier add private_storage:provided 0 add_value

# 割り当てIdタグ 割り当てownerタグ
execute store result storage private_storage:macro allocate_player.id int 1 run scoreboard players get @s PrivateStorageId
function private_storage:sys/allocate/player/add with storage private_storage:macro allocate_player
