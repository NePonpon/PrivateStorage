#> private_storage:sys/provide/2/
#
# シフト2回目
#

execute store result storage private_storage:sys provide.target int 1 run data get storage private_storage:sys provide_id 65536
function private_storage:sys/provide/get_octal
data modify storage private_storage:macro provide.shift set from storage private_storage:sys provide.target

execute unless data storage private_storage: _[-8][0] run data modify storage private_storage: _[-8] set from storage private_storage:sys initial[0]

data remove storage private_storage: _[-8][14]
data remove storage private_storage: _[-8][13]
data remove storage private_storage: _[-8][12]
data remove storage private_storage: _[-8][11]
data remove storage private_storage: _[-8][10]
data remove storage private_storage: _[-8][9]
data remove storage private_storage: _[-8][8]

function private_storage:sys/provide/2/shift with storage private_storage:macro provide

function private_storage:sys/provide/3/
