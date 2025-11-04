#> test_private_storage:sys/allocate/rename_player/fail
#
# プレイヤー名変更時の引継ぎ失敗
#
function private_storage:sys/hard_reset

## 準備
function private_storage:please
summon marker ~ ~ ~ {Tags:[PrivateStorageTest]}

## 正解を設定
execute store result storage private_storage:test allocate_rename_player.answer int 1 run scoreboard players get @s PrivateStorageId

## 実行
# hard_reset実行
function private_storage:sys/hard_reset
# プレイヤーに割り当てられていたはずのIdにほかのエンティティが割り当てられる
execute as @e[tag=PrivateStorageTest,distance=..0.01] run function private_storage:please
# プレイヤー引継ぎやってみる
function private_storage:please
execute store result storage private_storage:test allocate_rename_player.result int 1 run scoreboard players get @s PrivateStorageId

## 結果確認
data modify storage private_storage:test success set value 0b
execute store success storage private_storage:test success byte 1 run data modify storage private_storage:test allocate_rename_player.result set from storage private_storage:test allocate_rename_player.answer

execute if data storage private_storage:test {success: true} run tellraw @a [{"text":"","color":"white"},"[allocate/fail] OK"]
execute if data storage private_storage:test {success:false} run tellraw @a [{"text":"","color":"red"},"[allocate/fail] NG"]

## 後片付け
kill @e[tag=PrivateStorageTest,distance=..0.01]
