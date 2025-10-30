#> private_storage:sys/gc/
#
# Garbage Collection
#

scoreboard players add $GC_Count PrivateStorageCalc 1

execute store result storage private_storage:macro gc_get_target.gc_count int 1 run scoreboard players get $GC_Count PrivateStorageCalc
data modify storage private_storage:sys gc.gc_target set value []
function private_storage:sys/gc/get_target with storage private_storage:macro gc_get_target

execute if data storage private_storage:sys gc.gc_target[0] run function private_storage:sys/gc/loop
