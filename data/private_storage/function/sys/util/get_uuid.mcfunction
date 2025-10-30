#> private_storage:sys/util/get_uuid
#
# エンティティのuuidを取得
#

# TODO: UUIDの取得
# entity: {selector:"@s"} による解釈後 insertionでUUIDを取得
# player: {selector:"@s"} による解釈後 insertionでプレイヤー名を取得

summon text_display ~ ~500 ~ {text:{selector:"@s"}}
execute positioned ~ ~500 ~ run data modify storage private_storage:sys util.uuid set from entity @n[type=text_display,distance=..0.001] text.insertion
execute positioned ~ ~500 ~ run kill @n[type=text_display,distance=..0.001]
