#> private_storage:sys/provide/1
#
# シフト1回目
#

execute store result storage private_storage:sys provide.target byte 16 run data get storage private_storage:sys provide_id 0.000030517578125
function private_storage:sys/provide/get_octal
data modify storage private_storage:macro provide.shift set from storage private_storage:sys provide.target

execute unless data storage private_storage: _[0] run data modify storage private_storage: _ set from storage private_storage:sys initial

function private_storage:sys/provide/shift/list with storage private_storage:macro provide
data modify storage private_storage: _ append from storage private_storage:sys shift[]

function private_storage:sys/provide/2
