#> oinkium:rom/incremental/2-10/minus/_
#
# +2～10の時の処理
#
# @within function oinkium:rom/incremental/_

#> Private
# @private
#declare score_holder $OinkiumRomNewLow
#declare score_holder $OinkiumRomOldLow

# 前回アドレスの下位2桁取得
    scoreboard players operation $OinkiumRomOldLow Oinkium.Rom = $OinkiumRomLastAddress Oinkium.Rom
    scoreboard players operation $OinkiumRomOldLow Oinkium.Rom %= $16 Oinkium.Constant

# 繰り上がりチェック
    scoreboard players operation $OinkiumRomCheckBorrow Oinkium.Rom = $OinkiumRomOldLow Oinkium.Rom
    scoreboard players operation $OinkiumRomCheckBorrow Oinkium.Rom += $OinkiumRomDelta Oinkium.Rom

# 繰り上がり
    execute if score $OinkiumRomCheckBorrow Oinkium.Rom matches ..-1 run return run function oinkium:rom/incremental/2-10/minus/borrow

# 繰り上がり無の場合
# 下位2桁のみ更新

# 下位2層をリセット
    data remove storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][6]
    data remove storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][5]
    data remove storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][4]
    data remove storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][6]
    data remove storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][5]
    data remove storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][4]

# インデックス更新
    scoreboard players operation $OinkiumRomPathIndex_14 Oinkium.Rom = $OinkiumRomAddress Oinkium.Rom
    scoreboard players operation $OinkiumRomPathIndex_14 Oinkium.Rom /= $4 Oinkium.Constant
    scoreboard players operation $OinkiumRomPathIndex_14 Oinkium.Rom %= $4 Oinkium.Constant

    scoreboard players operation $OinkiumRomPathIndex_15 Oinkium.Rom = $OinkiumRomAddress Oinkium.Rom
    scoreboard players operation $OinkiumRomPathIndex_15 Oinkium.Rom %= $4 Oinkium.Constant

# 14層目再構築
    execute unless data storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][0] run data modify storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4] set from storage oinkium:rom Initial[0][0][0][0][0][0][0][0][0][0][0][0][0][0]
    execute if score $OinkiumRomPathIndex_14 Oinkium.Rom matches 1 run data modify storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4] append value []
    execute if score $OinkiumRomPathIndex_14 Oinkium.Rom matches 2 run data modify storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4] append from storage oinkium:rom TwoEmptyLists[]
    execute if score $OinkiumRomPathIndex_14 Oinkium.Rom matches 3 run data modify storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4] append from storage oinkium:rom ThreeEmptyLists[]

# 15層目を再構築
    execute unless data storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][0] run data modify storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4] set from storage oinkium:rom Initial[0][0][0][0][0][0][0][0][0][0][0][0][0][0][0]
    execute if score $OinkiumRomPathIndex_15 Oinkium.Rom matches 1 run data modify storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4] append value {}
    execute if score $OinkiumRomPathIndex_15 Oinkium.Rom matches 2 run data modify storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4] append from storage oinkium:rom TwoEmptyMaps[]
    execute if score $OinkiumRomPathIndex_15 Oinkium.Rom matches 3 run data modify storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4] append from storage oinkium:rom ThreeEmptyMaps[]

# アドレス保存
    scoreboard players operation $OinkiumRomLastAddress Oinkium.Rom = $OinkiumRomAddress Oinkium.Rom