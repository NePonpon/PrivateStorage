#> private_storage:sys/provide/
#
# 指定ストレージへシフト
#

execute if data storage private_storage: _[-8][-8][-8][-8][-8][8] run function private_storage:sys/provide/shift/reset/6
execute if data storage private_storage: _[-8][-8][-8][-8][8] run function private_storage:sys/provide/shift/reset/5
execute if data storage private_storage: _[-8][-8][-8][8] run function private_storage:sys/provide/shift/reset/4
execute if data storage private_storage: _[-8][-8][8] run function private_storage:sys/provide/shift/reset/3
execute if data storage private_storage: _[-8][8] run function private_storage:sys/provide/shift/reset/2
execute if data storage private_storage: _[8] run function private_storage:sys/provide/shift/reset/1

function private_storage:sys/provide/1
function private_storage:sys/provide/2
function private_storage:sys/provide/3
function private_storage:sys/provide/4
function private_storage:sys/provide/5
function private_storage:sys/provide/6
