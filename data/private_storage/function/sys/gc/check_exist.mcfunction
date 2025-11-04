#> private_storage:sys/gc/check_exist
#
# GC対象の所有者の生存確認
#

$return run scoreboard players get $(owner) PrivateStorageId
