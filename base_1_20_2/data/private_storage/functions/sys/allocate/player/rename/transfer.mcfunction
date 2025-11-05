#> private_storage:sys/allocate/player/rename/transfer
# Idで検索して所有者を更新
$execute store success storage private_storage:sys flag byte 1 if data storage private_storage:sys provided_id_table[{id:$(id),is_player:true}] run data modify storage private_storage:sys provided_id_table[{id:$(id)}].owner set from storage private_storage:sys util.uuid
$execute if data storage private_storage:sys {flag:1b} store result score @s PrivateStorageId run data get storage private_storage:sys provided_id_table[{id:$(id)}].id
