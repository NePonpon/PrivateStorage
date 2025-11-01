#> private_storage:sys/gc/delete/
#
# GC実行
#

# ストレージ解放
execute store result score _ PrivateStorageId run data get storage private_storage:sys gc.gc_target[-1].id
function private_storage:access
data modify storage private_storage: _[-8][-8][-8][-8][-8][-8] set value {}

# レコード削除
function private_storage:sys/gc/delete/record with storage private_storage:macro access

# GC済みIdリストへ登録
data modify storage private_storage:sys collected_id append from storage private_storage:sys gc.gc_target[-1].id
