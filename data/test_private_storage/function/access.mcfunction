#> test_private_storage:
#
# 他エンティティのストレージにアクセスできる
#
function private_storage:sys/hard_reset

## 準備
summon marker ~ ~ ~ {Tags:["PrivateStorageTest"]}
execute as @e[tag=PrivateStorageTest,distance=..0.01] run function private_storage:please
data modify storage private_storage: _[-8][-8][-8][-8][-8][-8].private_storage_test_access set value 1
function private_storage:please
data remove storage private_storage:test access

## 正解を設定
data modify storage private_storage:test access.answer set value 1

## 実行
scoreboard players operation _ PrivateStorageId = @e[tag=PrivateStorageTest,distance=..0.01] PrivateStorageId
function private_storage:access
data modify storage private_storage:test access.result set from storage private_storage: _[-8][-8][-8][-8][-8][-8].private_storage_test_access

## 結果確認
execute store success storage private_storage:test success byte 1 run data modify storage private_storage:test access.answer set from storage private_storage:test access.result

execute if data storage private_storage:test {success:false} run tellraw @a [{"text":"","color":"white"},"[access] OK"]
execute if data storage private_storage:test {success: true} run tellraw @a [{"text":"","color":"red"},"[access] NG"]

## 後片付け
kill @e[tag=PrivateStorageTest,distance=..0.01]
