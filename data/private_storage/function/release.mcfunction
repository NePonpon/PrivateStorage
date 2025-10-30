#> private_storage:release
#
# エンティティの個別ストレージを解放する
#

execute unless score @s PrivateStorageId matches -2147483648.. run return fail

function private_storage:sys/release/
