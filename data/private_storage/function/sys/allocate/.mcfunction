#> private_storage:sys/allocate/
#
# エンティティにPrivateStorageを提供する
#

function private_storage:sys/gc/

# プレイヤー名変更時 引継ぎ処理
# 正常に引継ぎできればここで終了
execute if entity @s[type=minecraft:player] if data entity @s attributes[{id:"minecraft:movement_speed"}].modifiers[{id:"private_storage:provided"}] if function private_storage:sys/allocate/player/rename/ run return 0

# 新規Idを割り当て
execute unless data storage private_storage:sys collected_id[0] store result score @s PrivateStorageId run scoreboard players add $NextId PrivateStorageCalc 1
# GC済みIdを割り当て
execute if data storage private_storage:sys collected_id[0] run function private_storage:sys/allocate/get_collected_id

# 新規レコード追加
data modify storage private_storage:sys provided_id_table append value {id:0,owner:"0-0-0-0-0",provide_start:0,gc_step:1.34,gc:0,is_player:false}
execute store result storage private_storage:sys provided_id_table[-1].id int 1 run scoreboard players get @s PrivateStorageId
execute store result storage private_storage:sys provided_id_table[-1].provide_start int 1 run scoreboard players get $GC_Count PrivateStorageCalc
execute store result storage private_storage:sys provided_id_table[-1].gc int 1 run scoreboard players add $GC_Count PrivateStorageCalc 1
execute store success storage private_storage:sys provided_id_table[-1].is_player byte 1 if entity @s[type=minecraft:player]
scoreboard players remove $GC_Count PrivateStorageCalc 1
function private_storage:sys/util/get_uuid/
data modify storage private_storage:sys provided_id_table[-1].owner set from storage private_storage:sys util.uuid

# プレイヤーには割り当て済みのタグを付与する
execute if entity @s[type=minecraft:player] run function private_storage:sys/allocate/player/
