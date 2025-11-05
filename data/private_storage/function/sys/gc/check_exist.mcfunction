#> private_storage:sys/gc/check_exist
#
# GC対象の所有者の生存確認
#

$return run execute if score $(owner) PrivateStorageId matches 0..
