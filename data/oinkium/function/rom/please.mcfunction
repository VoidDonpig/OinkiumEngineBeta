#> oinkium:rom/please
#
# 指定されたアドレスのROMを要求する
#
# @input score $OinkiumRomAddress Oinkium.Rom
#
# @output storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4]
#
# @api

# Validation
    execute unless score $OinkiumRomAddress Oinkium.Rom matches 0..2147483647 run return run tellraw @a[tag=Oinkium.IsAdmin] [{storage:"oinkium:global",nbt:"Prefix.Error"},{text:"ROMアドレスの範囲は 0～2147483647 で指定されている必要があります"}]

# データを取ってくる
    function oinkium:rom/provide

# リセット
    scoreboard players reset $OinkiumRomAddress Oinkium.Rom