#> private_storage:sys/load
#
# ワールドロード時処理
#

execute unless data storage private_storage:sys initial run function private_storage:sys/init
execute unless data storage private_storage:sys util.uuid_convert run function private_storage:sys/util/init
