#> private_storage:sys/allocate/get_collected_id
#
# GC済みIdを割り当て
#

execute store result score @s PrivateStorageId run data get storage private_storage:sys collected_id[-1]
data remove storage private_storage:sys collected_id[-1]
