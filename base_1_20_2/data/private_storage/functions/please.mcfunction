#> private_storage:please
#
# エンティティの個別ストレージを提供する
#

execute unless score @s PrivateStorageId matches -2147483648.. run function private_storage:sys/allocate/

scoreboard players operation _ PrivateStorageId = @s PrivateStorageId
function private_storage:access
