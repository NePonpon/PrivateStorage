#> private_storage:sys/util/init
#
# Util用初期化処理
#

# util ストレージ

data modify storage private_storage:sys util merge value {\
  uuid_convert:{\
    uuid_char_table:["0","1","2","3","4","5","6","7","8","9","a","b","c","d","e","f"]\
  }\
}
