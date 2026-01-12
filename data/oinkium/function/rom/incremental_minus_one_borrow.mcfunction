#> oinkium:rom/incremental_minus_one_borrow
#
# 1桁繰り下がった時の処理
#
# @within function oinkium:rom/incremental_minus_one

# 繰り上がりがどこまで伝播するか検出
    execute if score $OinkiumRomPathIndex_14 Oinkium.Rom matches 0 run return run function oinkium:rom/incremental_minus_two_borrow

# 1桁繰り下がり

# 下位2層をリセット
    data remove storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][6]
    data remove storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][5]
    data remove storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][4]
    data remove storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][6]
    data remove storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][5]
    data remove storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][4]

# インデックス更新
    scoreboard players set $OinkiumRomPathIndex_15 Oinkium.Rom 0
    scoreboard players remove $OinkiumRomPathIndex_14 Oinkium.Rom 1

# 層15を再構築
    execute unless data storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][0] run data modify storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4] set from storage oinkium:rom Initial[0][0][0][0][0][0][0][0][0][0][0][0][0][0]
    execute if score $OinkiumRomPathIndex_14 Oinkium.Rom matches 1 run data modify storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4] append value []
    execute if score $OinkiumRomPathIndex_14 Oinkium.Rom matches 2 run data modify storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4] append from storage oinkium:rom TwoEmptyLists[]

# 層16再構築
    execute unless data storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][0] run data modify storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4] set from storage oinkium:rom Initial[0][0][0][0][0][0][0][0][0][0][0][0][0][0][0]
    data modify storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4] append from storage oinkium:rom ThreeEmptyMaps[]
