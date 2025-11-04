#> private_storage:sys/util/get_uuid/entity/loop
#
# int値をUUIDの各文字へ変換する
#

data modify storage private_storage:sys util.uuid_convert.target set from storage private_storage:sys util.uuid_convert.entity[-1]

# 最下位桁から変換
## 最下位桁のみそのまま8倍するとint_maxに丸められる可能性があるので byte変換してから8倍する
execute store result storage private_storage:sys util.uuid_convert.convert byte 1 run data get storage private_storage:sys util.uuid_convert.target
execute store result storage private_storage:sys util.uuid_convert.convert byte 8 run data get storage private_storage:sys util.uuid_convert.convert
function private_storage:sys/util/get_uuid/entity/get_hex
data modify storage private_storage:macro uuid_convert.shift set from storage private_storage:sys util.uuid_convert.convert
function private_storage:sys/util/get_uuid/entity/get_char/

execute store result storage private_storage:sys util.uuid_convert.convert byte 8 run data get storage private_storage:sys util.uuid_convert.target 0.0625
function private_storage:sys/util/get_uuid/entity/get_hex
data modify storage private_storage:macro uuid_convert.shift set from storage private_storage:sys util.uuid_convert.convert
function private_storage:sys/util/get_uuid/entity/get_char/

execute store result storage private_storage:sys util.uuid_convert.convert byte 8 run data get storage private_storage:sys util.uuid_convert.target 0.00390625
function private_storage:sys/util/get_uuid/entity/get_hex
data modify storage private_storage:macro uuid_convert.shift set from storage private_storage:sys util.uuid_convert.convert
function private_storage:sys/util/get_uuid/entity/get_char/

execute store result storage private_storage:sys util.uuid_convert.convert byte 8 run data get storage private_storage:sys util.uuid_convert.target 0.000244140625
function private_storage:sys/util/get_uuid/entity/get_hex
data modify storage private_storage:macro uuid_convert.shift set from storage private_storage:sys util.uuid_convert.convert
function private_storage:sys/util/get_uuid/entity/get_char/

execute store result storage private_storage:sys util.uuid_convert.convert byte 8 run data get storage private_storage:sys util.uuid_convert.target 0.0000152587890625
function private_storage:sys/util/get_uuid/entity/get_hex
data modify storage private_storage:macro uuid_convert.shift set from storage private_storage:sys util.uuid_convert.convert
function private_storage:sys/util/get_uuid/entity/get_char/

execute store result storage private_storage:sys util.uuid_convert.convert byte 8 run data get storage private_storage:sys util.uuid_convert.target 0.00000095367431640625
function private_storage:sys/util/get_uuid/entity/get_hex
data modify storage private_storage:macro uuid_convert.shift set from storage private_storage:sys util.uuid_convert.convert
function private_storage:sys/util/get_uuid/entity/get_char/

execute store result storage private_storage:sys util.uuid_convert.convert byte 8 run data get storage private_storage:sys util.uuid_convert.target 0.000000059604644775390625
function private_storage:sys/util/get_uuid/entity/get_hex
data modify storage private_storage:macro uuid_convert.shift set from storage private_storage:sys util.uuid_convert.convert
function private_storage:sys/util/get_uuid/entity/get_char/

execute store result storage private_storage:sys util.uuid_convert.convert byte 8 run data get storage private_storage:sys util.uuid_convert.target 0.0000000037252902984619140625
function private_storage:sys/util/get_uuid/entity/get_hex
data modify storage private_storage:macro uuid_convert.shift set from storage private_storage:sys util.uuid_convert.convert
function private_storage:sys/util/get_uuid/entity/get_char/

data remove storage private_storage:sys util.uuid_convert.entity[-1]
execute if data storage private_storage:sys util.uuid_convert.entity[0] run function private_storage:sys/util/get_uuid/entity/loop
