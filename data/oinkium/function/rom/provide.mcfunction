#> oinkium:rom/provide
#
# ROMへのアクセス処理
#
# @within function oinkium:rom/please

# インクリメンタル更新チェック
    scoreboard players operation $OinkiumRomDelta Oinkium.Rom = $OinkiumRomAddress Oinkium.Rom
    scoreboard players operation $OinkiumRomDelta Oinkium.Rom -= $OinkiumRomLastAddress Oinkium.Rom

    execute if score $OinkiumRomDelta Oinkium.Rom matches -10..10 run return run function oinkium:rom/incremental/

# ストレージシフト
    function oinkium:rom/shift_data