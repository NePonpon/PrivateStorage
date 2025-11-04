#> private_storage:sys/allocate/player/rename/remove_modifier/
#
# 引継ぎができなかったので、割り当て済みタグを削除
#
# 引継ぎができないパターンとは？
#   hard_resetを実行して、引き継ぎたいデータがすでにプレイヤーのではないデータだった場合、
#   他のエンティティのストレージを強奪することになるため、引継ぎをあきらめて新規割り当てをする
#
# ついでに、このfunctionは直接呼び出すことができ、
# プレイヤーについているattribute_modifiersを削除することができる
#

# 割り当て済みタグ
attribute @s minecraft:generic.movement_speed modifier remove 9c69dbc1-f23b-41f5-b041-d77773eb73c3

# movment_speedのmodifierからIdが含まれたmodifier_idを取得
# UUIDで削除できるため、わざわざ取得する必要がない
# data remove storage private_storage:sys provide.rename_player.modifier_ids
# data modify storage private_storage:sys provide.rename_player.modifier_ids append from entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Modifiers[{Amount:0d,Operation:0}]
# function private_storage:sys/allocate/player/rename/remove_modifier/get_id

# 割り当てIdタグ
# function private_storage:sys/allocate/player/rename/remove_modifier/remove with storage private_storage:macro allocate_player
function private_storage:sys/allocate/player/rename/remove_modifier/remove
