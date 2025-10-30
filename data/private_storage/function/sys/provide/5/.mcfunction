#> private_storage:sys/provide/5/
#
# シフト5回目
#

execute store result storage private_storage:sys provide.target int 1 run data get storage private_storage:sys provide_id 33554432
function private_storage:sys/provide/get_octal
data modify storage private_storage:macro provide.shift set from storage private_storage:sys provide.target

execute unless data storage private_storage: _[-8][-8][-8][-8][0] run data modify storage private_storage: _ set from storage private_storage:sys inital[0][0][0][0]

data remove storage private_storage: _[-8][-8][-8][-8][14]
data remove storage private_storage: _[-8][-8][-8][-8][13]
data remove storage private_storage: _[-8][-8][-8][-8][12]
data remove storage private_storage: _[-8][-8][-8][-8][11]
data remove storage private_storage: _[-8][-8][-8][-8][10]
data remove storage private_storage: _[-8][-8][-8][-8][ 9]
data remove storage private_storage: _[-8][-8][-8][-8][ 8]

function private_storage:sys/provide/5/shift with storage private_storage:macro provide

function private_storage:sys/provide/6/
