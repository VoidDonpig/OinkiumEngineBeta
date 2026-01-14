#> oinkium:rom/incremental/_
#
# インクリメンタル処理
#
# @within function oinkium:rom/provide

# ±1の特殊処理
    execute if score $OinkiumRomDelta Oinkium.Rom matches 1 run return run function oinkium:rom/incremental/1/plus/_
    execute if score $OinkiumRomDelta Oinkium.Rom matches -1 run return run function oinkium:rom/incremental/1/minus/_

# ±2～63の処理
    execute if score $OinkiumRomDelta Oinkium.Rom matches 2..63 run return run function oinkium:rom/incremental/2-63/plus/_
    execute if score $OinkiumRomDelta Oinkium.Rom matches -63..-2 run return run function oinkium:rom/incremental/2-63/minus/_

# 大きいID変動ならば素直にとってくる
    function oinkium:rom/shift_data