#> oinkium:rom/incremental
#
# インクリメンタル処理
#
# @within function oinkium:rom/provide

# ±1の特殊処理
    execute if score $OinkiumRomDelta Oinkium.Rom matches 1 run return run function oinkium:rom/incremental_plus_one
    execute if score $OinkiumRomDelta Oinkium.Rom matches -1 run return run function oinkium:rom/incremental_minus_one

# TODO: ±2～10の処理を書く
# 現在は一旦フル計算させる
    function oinkium:rom/shift_data