#> private_storage:sys/util/get_uuid/entity/concat/
#
# UUID文字列を結合する
#

# Listの後ろから文字列に並んでいく
data modify storage private_storage:macro uuid_concat.left set from storage private_storage:sys util.uuid_convert.uuid_strings[-1]
data modify storage private_storage:macro uuid_concat.right set from storage private_storage:sys util.uuid_convert.uuid_strings[-2]
data remove storage private_storage:sys util.uuid_convert.uuid_strings[-1]
function private_storage:sys/util/get_uuid/entity/concat/macro with storage private_storage:macro uuid_concat

execute if data storage private_storage:sys util.uuid_convert.uuid_strings[1] run function private_storage:sys/util/get_uuid/entity/concat/
