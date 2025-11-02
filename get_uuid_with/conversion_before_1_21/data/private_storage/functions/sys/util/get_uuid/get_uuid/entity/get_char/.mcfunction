#> private_storage:sys/util/get_uuid/entity/get_char/
#
# 16進数の前半と後半で実行マクロを変更する
#

execute store result score _ PrivateStorageCalc run data get storage private_storage:macro uuid_convert.shift

execute if score _ PrivateStorageCalc matches 0..7 run function private_storage:sys/util/get_uuid/entity/get_char/first_half with storage private_storage:macro uuid_convert
execute if score _ PrivateStorageCalc matches 8..15 run function private_storage:sys/util/get_uuid/entity/get_char/second_half with storage private_storage:macro uuid_convert
