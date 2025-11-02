#> private_storage:sys/allocate/player/rename/
#
# 提供済みプレイヤーなので取得済みのものを引き継ぎ
#

# movment_speedのmodifierからIdを取得
data remove storage private_storage:sys provide.rename_player
data modify storage private_storage:sys provide.rename_player.modifier_ids append from entity @s attributes[{id:"minecraft:generic.movement_speed"}].modifiers[{amount:0d,operation:"add_value"}].id
function private_storage:sys/allocate/player/rename/get_id

# プレイヤー名 引継ぎ実行
function private_storage:sys/util/get_uuid/
data modify storage private_storage:sys flag set value 0b
function private_storage:sys/allocate/player/rename/transfer with storage private_storage:macro allocate_player

# 引継ぎ成功
execute if data storage private_storage:sys {flag:1b} run return 1
# 引継ぎ失敗
# modifierを削除して新規割り当て
function private_storage:sys/allocate/player/rename/remove_modifier/
return fail
