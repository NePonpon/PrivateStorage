#> private_storage:sys/provide/
#
# 指定ストレージへシフト
#

execute if data storage private_storage: _[-8][-8][-8][-8][-8][8] run function private_storage:sys/provide/shift/reset {remove_path:"[-8][-8][-8][-8][-8]"}
execute if data storage private_storage: _[-8][-8][-8][-8][8] run function private_storage:sys/provide/shift/reset {remove_path:"[-8][-8][-8][-8]"}
execute if data storage private_storage: _[-8][-8][-8][8] run function private_storage:sys/provide/shift/reset {remove_path:"[-8][-8][-8]"}
execute if data storage private_storage: _[-8][-8][8] run function private_storage:sys/provide/shift/reset {remove_path:"[-8][-8]"}
execute if data storage private_storage: _[-8][8] run function private_storage:sys/provide/shift/reset {remove_path:"[-8]"}
execute if data storage private_storage: _[8] run function private_storage:sys/provide/shift/reset {remove_path:""}

function private_storage:sys/provide/macro {scale:0.000030517578125,path:"",initial_path:"",shift:"list"}
function private_storage:sys/provide/macro {scale:0.000244140625,path:"[-8]",initial_path:"[0]",shift:"list"}
function private_storage:sys/provide/macro {scale:0.001953125,path:"[-8][-8]",initial_path:"[0][0]",shift:"list"}
function private_storage:sys/provide/macro {scale:0.015625,path:"[-8][-8][-8]",initial_path:"[0][0][0]",shift:"list"}
function private_storage:sys/provide/macro {scale:0.125,path:"[-8][-8][-8][-8]",initial_path:"[0][0][0][0]",shift:"list"}
function private_storage:sys/provide/macro {scale:1,path:"[-8][-8][-8][-8][-8]",initial_path:"[0][0][0][0][0]",shift:"compound"}
