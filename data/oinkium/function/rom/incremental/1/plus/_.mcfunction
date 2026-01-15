#> oinkium:rom/incremental/1/plus/_
#
# アドレス+1された時の処理
#
# @within function oinkium:rom/incremental/_

# 最下位桁が3なら繰り上がり
    execute if score $OinkiumRomPathIndex_15 Oinkium.Rom matches 3 run return run function oinkium:rom/incremental/1/plus/carry

# 繰り上がり無しの時
# 最下位層のみ更新

# 最下位層をリセット
    data remove storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][6]
    data remove storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][5]
    data remove storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][4]

# Index更新
    scoreboard players add $OinkiumRomPathIndex_15 Oinkium.Rom 1

# 新規Indexに応じて追加 (0->1 1->2 2->3)
    execute unless data storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][0] run data modify storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4] set from storage oinkium:rom Initial[0][0][0][0][0][0][0][0][0][0][0][0][0][0][0]
    execute if score $OinkiumRomPathIndex_15 Oinkium.Rom matches 1 run data modify storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4] append value {}
    execute if score $OinkiumRomPathIndex_15 Oinkium.Rom matches 2 run data modify storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4] append from storage oinkium:global TwoEmptyMaps[]
    execute if score $OinkiumRomPathIndex_15 Oinkium.Rom matches 3 run data modify storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4] append from storage oinkium:global ThreeEmptyMaps[]

# アドレス更新
    scoreboard players operation $OinkiumRomLastAddress Oinkium.Rom = $OinkiumRomAddress Oinkium.Rom