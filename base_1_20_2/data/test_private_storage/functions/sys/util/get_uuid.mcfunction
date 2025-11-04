#> test_private_storage:sys/util/get_uuid
#
# ただしいUUIDを取得できる
#
function private_storage:sys/hard_reset

## 準備
summon marker ~ ~ ~ {UUID:[I;-1363310412,1521043919,-2019799012,1651337332],Tags:["PrivateStorageTest"]}

## 正解を設定
data modify storage private_storage:test get_uuid.answer set value "aebd88b4-5aa9-49cf-879c-501c626d6874"

## 実行
execute as @e[tag=PrivateStorageTest,distance=..0.01] run function private_storage:sys/util/get_uuid/
data modify storage private_storage:test get_uuid.result set from storage private_storage:sys util.uuid

## 結果確認
execute store success storage private_storage:test success byte 1 run data modify storage private_storage:test get_uuid.result set from storage private_storage:test get_uuid.answer

execute if data storage private_storage:test {success:false} run tellraw @a [{"text":"","color":"white"},"[get_uuid] OK"]
execute if data storage private_storage:test {success: true} run tellraw @a [{"text":"","color":"red"},"[get_uuid] NG"]

## 後片付け
kill "aebd88b4-5aa9-49cf-879c-501c626d6874"
