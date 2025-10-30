#> private_storage:sys/gc/escape/reserve_next
#
# 次回タイミングを予約
#

$execute store result storage private_storage:sys provided_id_table[{owner:$(owner)}].gc_step int 1 run data get storage private_storage:sys gc.gc_target[-1].gc_step 1.5
$execute store result storage private_storage:sys provided_id_table[{owner:$(owner)}].gc int 1 run scoreboard players get @s PrivateStorageCalc
