#> private_storage:sys/release/
#
# 個別ストレージを解放し、
# Idテーブルから削除する
#

function private_storage:please
data modify storage private_storage: _[-8][-8][-8][-8][-8][-8] set value {}

data remove storage private_storage:macro access
execute store result storage private_storage:macro access.id int 1 run scoreboard players get @s PrivateStorageId
data modify storage private_storage:sys collected_id append from storage private_storage:macro access.id
data modify storage private_storage:macro access.id set string storage private_storage:macro access.id
function private_storage:sys/release/delete_record with storage private_storage:macro access

# プレイヤーなら割り当て済みタグを削除
execute if entity @s[type=minecraft:player] run function private_storage:sys/release/player

scoreboard players reset @s PrivateStorageId
