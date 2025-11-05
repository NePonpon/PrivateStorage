#> private_storage:sys/provide/macro
#
# マクロでシフト
#

$execute store result storage private_storage:sys provide.target byte 16 run data get storage private_storage:sys provide_id $(scale)
function private_storage:sys/provide/get_octal
data modify storage private_storage:macro provide.shift set from storage private_storage:sys provide.target

$execute unless data storage private_storage: _$(path)[0] run data modify storage private_storage: _$(path) set from storage private_storage:sys initial$(initial_path)

$function private_storage:sys/provide/shift/$(shift) with storage private_storage:macro provide
$data modify storage private_storage: _$(path) append from storage private_storage:sys shift[]
