#> oinkium:rom/init
#
# ROM用初期化処理
#
# @within function oinkium:core/load/once

# 専用スコアボード
    scoreboard objectives add Oinkium.Rom dummy

# 初期データ
    data modify storage oinkium:rom Initial set value [[[[[[[[[[[[[[[[{},{},{},{}],[],[],[]],[],[],[]],[],[],[]],[],[],[]],[],[],[]],[],[],[]],[],[],[]],[],[],[]],[],[],[]],[],[],[]],[],[],[]],[],[],[]],[],[],[]],[],[],[]],[],[],[]]

# メインストレージ
    data modify storage oinkium:rom _ set from storage oinkium:rom Initial

# インクリメンタル更新用
    scoreboard players reset $OinkiumRomLastAddress Oinkium.Rom
    scoreboard players reset $OinkiumRomCheckCarry Oinkium.Rom
    scoreboard players reset $OinkiumRomCheckBorrow Oinkium.Rom

# パス状態設定
    scoreboard players set $OinkiumRomCopiedAddress Oinkium.Rom 0
    scoreboard players set $OinkiumRomPathIndex_00 Oinkium.Rom 0
    scoreboard players set $OinkiumRomPathIndex_01 Oinkium.Rom 0
    scoreboard players set $OinkiumRomPathIndex_02 Oinkium.Rom 0
    scoreboard players set $OinkiumRomPathIndex_03 Oinkium.Rom 0
    scoreboard players set $OinkiumRomPathIndex_04 Oinkium.Rom 0
    scoreboard players set $OinkiumRomPathIndex_05 Oinkium.Rom 0
    scoreboard players set $OinkiumRomPathIndex_06 Oinkium.Rom 0
    scoreboard players set $OinkiumRomPathIndex_06 Oinkium.Rom 0
    scoreboard players set $OinkiumRomPathIndex_07 Oinkium.Rom 0
    scoreboard players set $OinkiumRomPathIndex_08 Oinkium.Rom 0
    scoreboard players set $OinkiumRomPathIndex_09 Oinkium.Rom 0
    scoreboard players set $OinkiumRomPathIndex_10 Oinkium.Rom 0
    scoreboard players set $OinkiumRomPathIndex_11 Oinkium.Rom 0
    scoreboard players set $OinkiumRomPathIndex_12 Oinkium.Rom 0
    scoreboard players set $OinkiumRomPathIndex_13 Oinkium.Rom 0
    scoreboard players set $OinkiumRomPathIndex_14 Oinkium.Rom 0
    scoreboard players set $OinkiumRomPathIndex_15 Oinkium.Rom 0