#> private_storage:sys/init
#
# スコアボード、ストレージ初期化
#

## storage
# メインストレージ
data merge storage private_storage: {_:[]}

# システムストレージ
data merge storage private_storage:sys {\
  provided_id_table:[],\
  collected_id:[0],\
  initial:[[[[[[\
    {},{},{},{},{},{},{},{}\
    ],[],[],[],[],[],[],[]\
    ],[],[],[],[],[],[],[]\
    ],[],[],[],[],[],[],[]\
    ],[],[],[],[],[],[],[]\
    ],[],[],[],[],[],[],[]\
  ],\
  shift_list:[\
    [],\
    [[]],\
    [[],[]],\
    [[],[],[]],\
    [[],[],[],[]],\
    [[],[],[],[],[]],\
    [[],[],[],[],[],[]],\
    [[],[],[],[],[],[],[]],\
  ],\
  shift_compound:[\
    [],\
    [{}],\
    [{},{}],\
    [{},{},{}],\
    [{},{},{},{}],\
    [{},{},{},{},{}],\
    [{},{},{},{},{},{}],\
    [{},{},{},{},{},{},{}],\
  ],\
  util:{\
    uuid_convert:{\
      uuid_char_table:["0","1","2","3","4","5","6","7","8","9","a","b","c","d","e","f"]\
    }\
  }\
}

## scoreboard
# GC、生存チェック
scoreboard objectives add PrivateStorageId dummy {"text":"PrivateStorage提供Id"}

# 計算用
scoreboard objectives add PrivateStorageCalc dummy {"text":"PrivateStorage計算用"}

## 初期値
scoreboard players add $GC_Count PrivateStorageCalc 0
scoreboard players add $NextId PrivateStorageCalc 0
