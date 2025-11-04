#> private_storage:sys/util/get_uuid/entity/
#
# エンティティのuuidを取得
# UUID[I;]から16進文字列へ変換する
#



data modify storage private_storage:sys util.uuid_convert.entity set from entity @s UUID

# UUIDを分解して文字に変換する
data modify storage private_storage:sys util.uuid_convert.uuid_strings set value []
function private_storage:sys/util/get_uuid/entity/loop

# UUIDのハイフン挿入
data modify storage private_storage:sys util.uuid_convert.uuid_strings insert 24 value "-"
data modify storage private_storage:sys util.uuid_convert.uuid_strings insert 20 value "-"
data modify storage private_storage:sys util.uuid_convert.uuid_strings insert 16 value "-"
data modify storage private_storage:sys util.uuid_convert.uuid_strings insert 12 value "-"

# UUID文字列を作成
function private_storage:sys/util/get_uuid/entity/concat/

data modify storage private_storage:sys util.uuid set from storage private_storage:sys util.uuid_convert.uuid_strings[0]
