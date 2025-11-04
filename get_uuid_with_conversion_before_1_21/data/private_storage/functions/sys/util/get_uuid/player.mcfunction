#> private_storage:sys/util/get_uuid/player
#
# エンティティのuuidを取得
# player_headからプレイヤー名を取得する
#

summon minecraft:item_display ~ ~ ~ {Tags:[GetUUID],item:{id:"player_head",count:1},transformation:{left_rotation:[0f,0f,0f,0f],right_rotation:[0f,0f,0f,0f],translation:[0f,0f,0f],scale:[0f,0f,0f]}}
item modify entity @e[tag=GetUUID,distance=..0.01,limit=1] container.0 private_storage:player_head
data modify storage private_storage:sys util.uuid set from entity @e[tag=GetUUID,distance=..0.01,limit=1] item.components."minecraft:profile".name
kill @e[tag=GetUUID,distance=..0.01,limit=1]
