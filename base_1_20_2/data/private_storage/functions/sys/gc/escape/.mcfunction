#> private_storage:sys/gc/escape/
#
# GC回避
#

# 次に予約する実行されるタイミングは、提供時のタイミング + GCタイミング
# GCタイミングは、1.5倍ずつ増えていく
execute store result score @s PrivateStorageCalc run data get storage private_storage:sys gc.gc_target[-1].gc_step 1.5
execute store result score _ PrivateStorageCalc run data get storage private_storage:sys gc.gc_target[-1].provide_start
scoreboard players operation @s PrivateStorageCalc += _ PrivateStorageCalc

function private_storage:sys/gc/escape/reserve_next with storage private_storage:macro access
