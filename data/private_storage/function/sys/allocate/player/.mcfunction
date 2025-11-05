#> private_storage:sys/allocate/player/
#
# 割り当て済みのタグとIdとownerを付与
#

# 割り当て済みタグ
attribute @s minecraft:movement_speed modifier add private_storage:provided 0 add_value

# 割り当てIdタグ 割り当てownerタグ
data remove storage private_storage:macro allocate_player
execute store result storage private_storage:macro allocate_player.id int 1 run scoreboard players get @s PrivateStorageId
data modify storage private_storage:macro allocate_player.id set string storage private_storage:macro allocate_player.id
function private_storage:sys/allocate/player/add with storage private_storage:macro allocate_player
