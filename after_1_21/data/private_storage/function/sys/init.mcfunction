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
    ]\
}

## scoreboard
# GC、生存チェック
scoreboard objectives add PrivateStorageId dummy {"text":"PrivateStorage提供Id"}

# 計算用
scoreboard objectives add PrivateStorageCalc dummy {"text":"PrivateStorage計算用"}

## 初期値
scoreboard players add $GC_Count PrivateStorageCalc 0
scoreboard players add $NextId PrivateStorageCalc 0
