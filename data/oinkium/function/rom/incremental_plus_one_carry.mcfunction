#> oinkium:rom/incremental_plus_one_carry
#
# 1桁繰り上がった時の処理
#
# @within function oinkium:rom/incremental_plus_one

# 繰り上がりがどこまで伝播するか検出
    execute if score $OinkiumRomPathIndex_14 Oinkium.Rom matches 3 run return run function oinkium:rom/incremental_plus_two_carry

# 1桁繰り上がり

# 下位2層をリセット
    data remove storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][6]
    data remove storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][5]
    data remove storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][4]
    data remove storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][6]
    data remove storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][5]
    data remove storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][4]

# インデックス更新
    scoreboard players set $OinkiumRomPathIndex_15 Oinkium.Rom 0
    scoreboard players add $OinkiumRomPathIndex_14 Oinkium.Rom 1

# 層15を再構築
    execute unless data storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][0] run data modify storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4] set from storage oinkium:rom Initial[0][0][0][0][0][0][0][0][0][0][0][0][0][0]

# 層15に要素追加
    execute if score $OinkiumRomPathIndex_14 Oinkium.Rom matches 1 run data modify storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4] append value []
    execute if score $OinkiumRomPathIndex_14 Oinkium.Rom matches 2 run data modify storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4] append from storage oinkium:rom TwoEmptyLists[]
    execute if score $OinkiumRomPathIndex_14 Oinkium.Rom matches 3 run data modify storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4] append from storage oinkium:rom ThreeEmptyLists[]

# 層16再構築
    execute unless data storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][0] run data modify storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4] set from storage oinkium:rom Initial[0][0][0][0][0][0][0][0][0][0][0][0][0][0][0]

# アドレス更新
    scoreboard players operation $OinkiumRomLastAddress Oinkium.Rom = $OinkiumRomAddress Oinkium.Rom