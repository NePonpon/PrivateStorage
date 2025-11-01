#> private_storage:sys/provide/get_octal
#
# 下位bit消し飛ばし済みのtargetから
# 上位bitを消し飛ばして、0..7の値に丸める
#

# 最上位bitの削除  負数ならflagを立てておく
data modify storage private_storage:sys flag set value 0b
execute if predicate private_storage:negative store success storage private_storage:sys flag byte 1 store result storage private_storage:sys provide.target int 1 run data get storage private_storage:sys provide.target -1
execute if predicate private_storage:byte_min run data modify storage private_storage:sys provide.target set value 0
# 1/ 2^4
execute store result storage private_storage:sys provide.target int 1 run data get storage private_storage:sys provide.target 0.0625
