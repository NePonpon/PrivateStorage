#> private_storage:sys/util/get_uuid/entity/get_char/
#
# 16進数の前半と後半で実行マクロを変更する
#

data modify storage private_storage:macro uuid_convert.shift set string storage private_storage:macro uuid_convert.shift

execute if predicate private_storage:util/get_uuid/first run function private_storage:sys/util/get_uuid/entity/get_char/first_half with storage private_storage:macro uuid_convert
execute if predicate private_storage:util/get_uuid/second run function private_storage:sys/util/get_uuid/entity/get_char/second_half with storage private_storage:macro uuid_convert

execute if data storage private_storage:sys {flag:0b} run data modify storage private_storage:sys util.uuid_convert.uuid_strings append from storage private_storage:sys util.uuid_convert.uuid_char.first
execute if data storage private_storage:sys {flag:1b} run data modify storage private_storage:sys util.uuid_convert.uuid_strings append from storage private_storage:sys util.uuid_convert.uuid_char.end
