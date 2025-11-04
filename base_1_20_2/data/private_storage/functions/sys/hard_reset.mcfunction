#> private_storage:sys/hard_reset
#
# PrivateStorage 強制リセット
#

data remove storage private_storage: _

data remove storage private_storage:sys provided_id_table
data remove storage private_storage:sys collected_id
data remove storage private_storage:sys previous_id

scoreboard objectives remove PrivateStorageId
scoreboard objectives remove PrivateStorageCalc

function private_storage:sys/init
