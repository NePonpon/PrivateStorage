#> private_storage:sys/allocate/player/
#
# 割り当て済みのタグとIdとownerを付与
#

# 割り当て済みタグ
attribute @s minecraft:movement_speed modifier add private_storage:provided 0 add_value

# 割り当てIdタグ 割り当てownerタグ
data modify storage private_storage:macro allocate_player.id set from storage private_storage:sys provided_id_table[-1].id
function private_storage:sys/allocate/player/add with storage private_storage:macro allocate_player

return 1
