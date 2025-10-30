#> private_storage:sys/gc/get_target
#
# GC対象Idレコードを取得
#

$data modify storage private_storage:sys gc.gc_target append from storage private_storage:sys provided_id_table[{gc:$(gc_count)}]
