#> private_storage:sys/util/get_uuid/entity/get_char/second_half
#
# 後半の文字を取得
#

$execute if data storage private_storage:sys {flag:0b} run data modify storage private_storage:sys util.uuid_convert.uuid_strings append from storage private_storage:sys util.uuid_convert.uuid_char_table[$(shift)]
$execute if data storage private_storage:sys {flag:1b} run data modify storage private_storage:sys util.uuid_convert.uuid_strings append from storage private_storage:sys util.uuid_convert.uuid_char_table[-$(shift)]
