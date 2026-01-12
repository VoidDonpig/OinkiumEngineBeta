#> oinkium:rom/please
#
# 指定されたアドレスのROMを要求する
#
# @input score_holder $OinkiumRomAddress Oinkium.Rom
#
# @api

# 検証
    execute unless score $OinkiumRomAddress Oinkium.Rom matches 0..2147483647 run return run tellraw @a[tag=Oinkium.IsAdmin] [{storage:"oinkium:global",nbt:"Prefix.Error",interpret:true},{text:"ROMアドレスの範囲は 0～2147483647 で指定されている必要があります"}]

# 前回と同じIDのデータでなければ取ってくる
    execute unless score $OinkiumRomAddress Oinkium.Rom = $OinkiumRomLastAddress Oinkium.Rom run function oinkium:rom/provide

# リセット
    scoreboard players reset $OinkiumRomAddress Oinkium.Rom