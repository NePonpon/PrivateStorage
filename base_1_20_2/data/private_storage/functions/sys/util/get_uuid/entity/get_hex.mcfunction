#> private_storage:sys/util/get_uuid/entity/get_hex
#
# 下位bit消し飛ばし済みのconvertから
# 上位bitを消し飛ばして、0..15の値に丸める
#

execute store result score _ PrivateStorageCalc run data get storage private_storage:sys util.uuid_convert.convert

# 最上位bitの削除  負数ならflagを立てておく
data modify storage private_storage:sys flag set value 0b
execute if score _ PrivateStorageCalc matches -127..-1 store success storage private_storage:sys flag byte 1 store result storage private_storage:sys util.uuid_convert.convert int 1 run data get storage private_storage:sys util.uuid_convert.convert -1
execute if score _ PrivateStorageCalc matches -128 run data modify storage private_storage:sys util.uuid_convert.convert set value 0
# 1/ 2^4
execute store result storage private_storage:sys util.uuid_convert.convert int 1 run data get storage private_storage:sys util.uuid_convert.convert 0.125
