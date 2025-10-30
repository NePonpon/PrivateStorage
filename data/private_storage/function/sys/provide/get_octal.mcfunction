#> private_storage:sys/provide/get_octal
#
# 上位bit消し飛ばし済みのtargetから
# 下位bitを消し飛ばして、0..7の値に丸める
#

# 最上位bitの削除
execute if predicate private_storage:negative store result storage private_storage:sys provide.target int 1 run data get storage private_storage:sys provide.target -1
execute if predicate private_storage:int_min run data modify storage private_storage:sys provide.target set value 0
# 1/ 2^28
execute store result storage private_storage:sys provide.target int 1 run data get storage private_storage:sys provide.target 0.0000000037252902984619140625
