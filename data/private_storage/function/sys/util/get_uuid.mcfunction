#> private_storage:sys/util/get_uuid
#
# エンティティのuuidを取得
#

# TODO: UUIDの取得
# entity: {selector:"@s"} による解釈後 insertionでUUIDを取得
# player: {selector:"@s"} による解釈後 insertionでプレイヤー名を取得

execute at @s run summon text_display ~ ~ ~ {text_opacity:0,background:0}
execute at @s run data modify entity @n[type=text_display,distance=..0.001] text set value {selector:"@n[distance=0]"}
execute at @s run data modify storage private_storage:sys util.uuid set from entity @n[type=text_display,distance=..0.001] text.insertion
execute at @s run kill @n[type=text_display,distance=..0.001]
