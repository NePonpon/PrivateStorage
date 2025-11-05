#> private_storage:sys/util/get_uuid/entity/get_char/
#
# 16進数の前半と後半で実行マクロを変更する
#

execute store result score _ PrivateStorageCalc run data get storage private_storage:macro uuid_convert.shift
data modify storage private_storage:macro uuid_convert.shift set string storage private_storage:macro uuid_convert.shift

execute if score _ PrivateStorageCalc matches 0..7 run function private_storage:sys/util/get_uuid/entity/get_char/first_half with storage private_storage:macro uuid_convert
execute if score _ PrivateStorageCalc matches 8..15 run function private_storage:sys/util/get_uuid/entity/get_char/second_half with storage private_storage:macro uuid_convert

execute if data storage private_storage:sys {flag:0b} run data modify storage private_storage:sys util.uuid_convert.uuid_strings append from storage private_storage:sys util.uuid_convert.uuid_char.first
execute if data storage private_storage:sys {flag:1b} run data modify storage private_storage:sys util.uuid_convert.uuid_strings append from storage private_storage:sys util.uuid_convert.uuid_char.end
