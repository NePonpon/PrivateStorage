#> private_storage:sys/gc/delete/
#
# テーブルから削除
#

$data remove storage private_storage:sys provided_id_table[{owner:"$(owner)"}]
