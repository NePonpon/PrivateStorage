#> private_storage:sys/allocate/get_collected_id
#
# GC済みIdから割り当て
#

execute store result score @s PrivateStorageId run data modify storage private_storage:sys provided_id_table[-1].id set from storage private_storage:sys collected_id[-1]
data remove storage private_storage:sys collected_id[-1]
