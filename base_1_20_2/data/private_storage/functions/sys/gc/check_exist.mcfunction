#> private_storage:sys/gc/check_exist
# GC対象の所有者の生存確認
$execute store success storage private_storage:sys flag byte 1 run scoreboard players get $(owner) PrivateStorageId
