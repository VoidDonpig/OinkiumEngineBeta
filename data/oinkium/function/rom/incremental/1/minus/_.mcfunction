#> oinkium:rom/incremental/1/minus/_
#
# アドレス-1された時の処理
#
# @within function oinkium:rom/incremental/_

# 最下位桁が3なら繰り下がり
    execute if score $OinkiumRomPathIndex_15 Oinkium.Rom matches 0 run return run function oinkium:rom/incremental/1/minus/borrow

# 繰り下がり無しの時
# 最下位層のみ更新

# 最下位層をリセット
    data remove storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][6]
    data remove storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][5]
    data remove storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][4]
# Index更新
    scoreboard players remove $OinkiumRomPathIndex_15 Oinkium.Rom 1

# 新規Indexに応じて追加 (1->0 2->1 3->2)
    # Index == 0 なら何もしない
    execute if score $OinkiumRomPathIndex_15 Oinkium.Rom matches 1 run data modify storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4] append value {}
    execute if score $OinkiumRomPathIndex_15 Oinkium.Rom matches 2 run data modify storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4] append from storage oinkium:rom TwoEmptyMaps[]

# アドレス更新
    scoreboard players operation $OinkiumRomLastAddress Oinkium.Rom = $OinkiumRomAddress Oinkium.Rom