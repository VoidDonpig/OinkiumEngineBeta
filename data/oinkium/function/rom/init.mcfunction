#> oinkium:rom/init
#
# ROM用初期化処理
#
# @within function oinkium:core/load/once

# 専用スコアボード
    scoreboard objectives add Oinkium.Rom dummy

# 初期データ
    data modify storage oinkium:rom Initial set value [[[[[[[[[[[[[[[[{},{},{},{}],[],[],[]],[],[],[]],[],[],[]],[],[],[]],[],[],[]],[],[],[]],[],[],[]],[],[],[]],[],[],[]],[],[],[]],[],[],[]],[],[],[]],[],[],[]],[],[],[]],[],[],[]]

# シフト用データ
    data modify storage oinkium:rom TwoEmptyLists set value [[],[]]
    data modify storage oinkium:rom ThreeEmptyLists set value [[],[],[]]
    data modify storage oinkium:rom TwoEmptyMaps set value [{},{}]
    data modify storage oinkium:rom ThreeEmptyMaps set value [{},{},{}]

# メインストレージ
    data modify storage oinkium:rom _ set from storage oinkium:rom Initial

# L1・L2・L3キャッシュ初期化
    scoreboard players set $OinkiumRomL1Cache0 Oinkium.Rom -1
    scoreboard players set $OinkiumRomL1Cache1 Oinkium.Rom -1
    scoreboard players set $OinkiumRomL1Cache2 Oinkium.Rom -1

    data modify storage oinkium:rom L1 set value {"0":{},"1":{},"2":{}}

# インクリメンタル更新用
    scoreboard players set $OinkiumRomLastAddress Oinkium.Rom -1

# パス状態設定
    scoreboard players set $OinkiumRomPathIndex_00 Oinkium.Rom -1
    scoreboard players set $OinkiumRomPathIndex_01 Oinkium.Rom -1
    scoreboard players set $OinkiumRomPathIndex_02 Oinkium.Rom -1
    scoreboard players set $OinkiumRomPathIndex_03 Oinkium.Rom -1
    scoreboard players set $OinkiumRomPathIndex_04 Oinkium.Rom -1
    scoreboard players set $OinkiumRomPathIndex_05 Oinkium.Rom -1
    scoreboard players set $OinkiumRomPathIndex_06 Oinkium.Rom -1
    scoreboard players set $OinkiumRomPathIndex_06 Oinkium.Rom -1
    scoreboard players set $OinkiumRomPathIndex_07 Oinkium.Rom -1
    scoreboard players set $OinkiumRomPathIndex_08 Oinkium.Rom -1
    scoreboard players set $OinkiumRomPathIndex_09 Oinkium.Rom -1
    scoreboard players set $OinkiumRomPathIndex_10 Oinkium.Rom -1
    scoreboard players set $OinkiumRomPathIndex_11 Oinkium.Rom -1
    scoreboard players set $OinkiumRomPathIndex_12 Oinkium.Rom -1
    scoreboard players set $OinkiumRomPathIndex_13 Oinkium.Rom -1
    scoreboard players set $OinkiumRomPathIndex_14 Oinkium.Rom -1
    scoreboard players set $OinkiumRomPathIndex_15 Oinkium.Rom -1

    scoreboard players set $OinkiumRomPathValid Oinkium.Rom 0