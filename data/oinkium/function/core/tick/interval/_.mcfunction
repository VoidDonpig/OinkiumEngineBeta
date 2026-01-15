#> oinkium:core/tick/interval/_
#
# 定期的に実行される処理
#
# @within function oinkium:core/tick/_

# 1 min
    scoreboard players add $OinkiumCoreInterval1min Oinkium.Global 1
    execute if score $OinkiumCoreInterval1min Oinkium.Global matches 1200.. run function oinkium:core/tick/interval/1m