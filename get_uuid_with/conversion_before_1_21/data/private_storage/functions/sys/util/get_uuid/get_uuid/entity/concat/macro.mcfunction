#> private_storage:sys/util/get_uuid/entity/concat/macro
#
# マクロ実行
#

$data modify storage private_storage:sys util.uuid_convert.uuid_strings[-1] set value "$(left)$(right)"
