#> test_private_storage:release
#
# ストレージ解放のテスト
#
function private_storage:sys/hard_reset

## 準備
function private_storage:please

## 正解を設定

## 実行
function private_storage:release

## 結果確認
execute store success storage private_storage:test success byte 1 run scoreboard players get @s PrivateStorageId

execute if data storage private_storage:test {success:false} run tellraw @a [{"text":"","color":"white"},"[release] OK"]
execute if data storage private_storage:test {success: true} run tellraw @a [{"text":"","color":"red"},"[release] NG"]

## 後片付け
