#> test_private_storage:sys/allocate/rename_player/success
#
# プレイヤー名変更時の引継ぎ成功
#
function private_storage:sys/hard_reset

## 準備
function private_storage:please
data modify storage private_storage: _[-8][-8][-8][-8][-8][-8].PrivateStorageTestAllocateRenamePlayer set value 1
# プレイヤー名変更
## スコア情報失効
scoreboard players reset @s PrivateStorageId
## 元の名前が "Ponpon" だったとする
data modify storage private_storage:sys provided_id_table[-1].owner set value "Ponpon"

## 正解を設定
data modify storage private_storage:test allocate_rename_player.answer set value 1

## 実行
function private_storage:please
data modify storage private_storage:test allocate_rename_player.result set from storage private_storage: _[-8][-8][-8][-8][-8][-8].PrivateStorageTestAllocateRenamePlayer

## 結果確認
data modify storage private_storage:test success set value 0b
execute store success storage private_storage:test success byte 1 run data modify storage private_storage:test allocate_rename_player.result set from storage private_storage:test allocate_rename_player.answer

execute if data storage private_storage:test {success:false} run tellraw @a [{"text":"","color":"white"},"[allocate/success] OK"]
execute if data storage private_storage:test {success: true} run tellraw @a [{"text":"","color":"red"},"[allocate/success] NG"]

## 後片付け
