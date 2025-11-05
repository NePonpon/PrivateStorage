#> private_storage:sys/util/get_uuid/entity/get_char/second_half
# 後半の文字を取得
$data modify storage private_storage:sys util.uuid_convert.uuid_char.first set from storage private_storage:sys util.uuid_convert.uuid_char_table[$(shift)]
$data modify storage private_storage:sys util.uuid_convert.uuid_char.end set from storage private_storage:sys util.uuid_convert.uuid_char_table[-$(shift)]
