#> private_storage:sys/allocate/
#
# エンティティにPrivateStorageを提供する
#

function private_storage:sys/gc/

execute unless data storage private_storage:sys collected_id[0] store result score @s PrivateStorageId run scoreboard players add $NextId PrivateStorageCalc 1
execute if data storage private_storage:sys collected_id[0] run function private_storage:sys/allocate/get_collected_id

data modify storage private_storage:sys provided_id_table append value {id:0,owner:"0-0-0-0-0",provide_start:0,gc_step:1.34,gc:0}
execute store result storage private_storage:sys provided_id_table[-1].id int 1 run scoreboard players get @s PrivateStorageId
execute store result storage private_storage:sys provided_id_table[-1].provide_start int 1 run scoreboard players get $GC_Count PrivateStorageCalc
execute store result storage private_storage:sys provided_id_table[-1].gc int 1 run scoreboard players add $GC_Count PrivateStorageCalc 1
scoreboard players remove $GC_Count PrivateStorageCalc 1
function private_storage:sys/util/get_uuid
data modify storage private_storage:sys provided_id_table[-1].owner set from storage private_storage:sys util.uuid
