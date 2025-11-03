#> test_private_storage:please
#
# 複数エンティティにストレージを提供した後でも、自分のストレージを呼び出したときに
# 期待した通りにデータを操作できる
#
function private_storage:sys/hard_reset

## 準備
function private_storage:please
data modify storage private_storage: _[-8][-8][-8][-8][-8][-8].private_storage_test_please set value 1
summon marker ~ ~ ~ {Tags:[PrivateStorageTest]}
data remove storage private_storage:test please

## 正解を設定
data modify storage private_storage:test please.answer set value {private_storage_test_please:1}

## 実行
execute as @e[tag=PrivateStorageTest,distance=..0.01] run function private_storage:please
function private_storage:please
data modify storage private_storage:test please.result.private_storage_test_please set from storage private_storage: _[-8][-8][-8][-8][-8][-8].private_storage_test_please

## 結果確認
execute store success storage private_storage:test success byte 1 run data modify storage private_storage:test please.result set from storage private_storage:test please.answer

execute if data storage private_storage:test {success:false} run tellraw @a [{"text":"","color":"white"},"[please] OK"]
execute if data storage private_storage:test {success: true} run tellraw @a [{"text":"","color":"red"},"[please] NG"]

## 後片付け
kill @e[tag=PrivateStorageTest,distance=..0.01]
