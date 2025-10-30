#> private_storage:sys/gc/loop
#
# GC実行チェック
#

data modify storage private_storage:macro access.owner set from storage private_storage:sys gc.gc_target[-1].owner
execute store success storage private_storage:sys flag byte 1 run function private_storage:sys/gc/check_exist with storage private_storage:macro access

execute if data storage private_storage:sys {flag:true} run function private_storage:sys/gc/escape/ with storage private_storage:macro access
execute if data storage private_storage:sys {flag:false} run function private_storage:sys/gc/delete/ with storage private_storage:macro access

data remove storage private_storage:sys gc.gc_target[-1]
execute if data storage private_storage:sys gc.gc_target[0] run function private_storage:sys/gc/loop
