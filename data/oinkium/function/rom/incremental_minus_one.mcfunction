#> oinkium:rom/incremental_minus_one
#
# アドレス+1された時の処理
#
# @within function oinkium:rom/incremental

# パスが無効ならばフルで計算
    execute unless score $OinkiumRomPathValid Oinkium.Rom matches 1 run return run function oinkium:rom/shift_data

# 最下位桁が3なら繰り下がり
    execute if score $OinkiumRomPathIndex_15 Oinkium.Rom matches 0 run return run function oinkium:rom/incremental_minus_one_borrow

# 繰り上がり無しの時
# 最下位層のみ更新

# 最下位層をリセット
    data remove storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][6]
    data remove storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][5]
    data remove storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][4]
# Index更新
    scoreboard players remove $OinkiumRomPathIndex_15 Oinkium.Rom 1

# 新規Indexに応じて追加 (0->1 1->2 2->3)
    # Index == 0 なら何もしない
    execute if score $OinkiumRomPathIndex_15 Oinkium.Rom matches 1 run data modify storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4] append value {}
    execute if score $OinkiumRomPathIndex_15 Oinkium.Rom matches 2 run data modify storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4] append from storage oinkium:rom TwoEmptyMaps[]

# アドレス更新
    scoreboard players operation $OinkiumRomLastAddress Oinkium.Rom = $OinkiumRomAddress Oinkium.Rom