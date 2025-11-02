#> private_storage:sys/util/get_uuid/
#
# エンティティのuuidを取得
# エンティティはUUID[I;]から16進文字列へ変換する
# プレイヤーはplayer_headからプレイヤー名を取得する
#

execute if entity @s[type=!minecraft:player] run function private_storage:sys/util/get_uuid/entity/
execute if entity @s[type=minecraft:player] run function private_storage:sys/util/get_uuid/player
