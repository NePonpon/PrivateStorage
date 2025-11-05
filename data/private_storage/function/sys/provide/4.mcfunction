#> private_storage:sys/provide/4
#
# シフト4回目
#

execute store result storage private_storage:sys provide.target byte 16 run data get storage private_storage:sys provide_id 0.015625
function private_storage:sys/provide/get_octal
data modify storage private_storage:macro provide.shift set string storage private_storage:sys provide.target

execute unless data storage private_storage: _[-8][-8][-8][0] run data modify storage private_storage: _[-8][-8][-8] set from storage private_storage:sys initial[0][0][0]

function private_storage:sys/provide/shift/list with storage private_storage:macro provide
execute if data storage private_storage:sys {flag:0b} run data modify storage private_storage: _[-8][-8][-8] append from storage private_storage:sys shift.first[]
execute if data storage private_storage:sys {flag:1b} run data modify storage private_storage: _[-8][-8][-8] append from storage private_storage:sys shift.end[]

function private_storage:sys/provide/5
