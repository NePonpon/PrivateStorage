#> private_storage:sys/util/get_uuid/
#
# エンティティのuuidを取得
# selectorテキストコンポーネントを解決すると、
# insertionにエンティティのUUIDかプレイヤー名が入る
#

tag @s add PrivateStorageGetUUID
execute at @s run summon text_display ~ ~ ~ {text_opacity:0,background:0}
execute at @s run data modify entity @n[type=text_display,distance=..0.001] text set value {selector:"@n[distance=..0.01,tag=PrivateStorageGetUUID]"}
execute at @s run data modify storage private_storage:sys util.uuid set from entity @n[type=text_display,distance=..0.001] text.insertion
execute at @s run kill @n[type=text_display,distance=..0.001]
tag @s remove PrivateStorageGetUUID
