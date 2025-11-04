#> private_storage:sys/allocate/player/rename/get_id
#
# idが書かれたattribute_modifierを探索し、
# idを取得
#

execute store success storage private_storage:sys flag byte 1 run data modify storage private_storage:sys provide.rename_player.check_id set string storage private_storage:sys provide.rename_player.modifier_ids[-1] 0 18
# 文字列切り取りの成功失敗にかかわらず、Idと思われる部分を取得する
data modify storage private_storage:macro allocate_player.id set string storage private_storage:sys provide.rename_player.modifier_ids[-1] 19

data remove storage private_storage:sys provide.rename_player.modifier_ids[-1]
execute if data storage private_storage:sys {flag:0b} if data storage private_storage:sys provide.rename_player.modifier_ids[0] run return run function private_storage:sys/allocate/player/rename/get_id

# Id取得成功
# これ以上先のmodifier_idは確認しない
execute if data storage private_storage:sys provide.rename_player{check_id:"private_storage_id"} run return 0

execute if data storage private_storage:sys provide.rename_player.modifier_ids[0] run function private_storage:sys/allocate/player/rename/get_id
