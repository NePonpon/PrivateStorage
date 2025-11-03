#> test_private_storage:sys/gc
#
# ただしくGCが実行できている
#
function private_storage:sys/hard_reset

## 準備
summon marker ~ ~ ~ {Tags:["PrivateStorageTest","0"]}
execute as @e[tag=0,distance=..0.01] run function private_storage:please
summon marker ~ ~ ~ {Tags:["PrivateStorageTest","1"]}
execute as @e[tag=1,distance=..0.01] run function private_storage:please
summon marker ~ ~ ~ {Tags:["PrivateStorageTest","2"]}
execute as @e[tag=2,distance=..0.01] run function private_storage:please
summon marker ~ ~ ~ {Tags:["PrivateStorageTest","3"]}
execute as @e[tag=3,distance=..0.01] run function private_storage:please
summon marker ~ ~ ~ {Tags:["PrivateStorageTest","4"]}
execute as @e[tag=4,distance=..0.01] run function private_storage:please

## 正解を設定
# 1,3を削除
# GCされた3番を新規獲得する
data modify storage private_storage:test gc.answer set value [0,2,3,4]

## 実行
kill @e[tag=1,distance=..0.01]
kill @e[tag=3,distance=..0.01]
summon marker ~ ~ ~ {Tags:["PrivateStorageTest","5"]}
execute as @e[tag=5,distance=..0.01] run function private_storage:please
data modify storage private_storage:test gc.result set value []
data modify storage private_storage:test gc.result append from storage private_storage:sys provided_id_table[].id

## 結果確認
execute store success storage private_storage:test success byte 1 run data modify storage private_storage:test gc.result set from storage private_storage:test gc.answer

execute if data storage private_storage:test {success:false} run tellraw @a [{"text":"","color":"white"},"[gc] OK"]
execute if data storage private_storage:test {success: true} run tellraw @a [{"text":"","color":"red"},"[gc] NG"]

## 後片付け
kill @e[tag=PrivateStorageTest,distance=..0.01]
