#> oinkium:core/tick/_
#
# Tick処理
#
# @within tag/function minecraft:tick

# 定期的に実行される処理
    function oinkium:core/tick/interval/_

# モブの初期化
    execute as @e[type=#oinkium:mob,tag=Oinkium.MobAlreadyInit] at @s run function oinkium:mob_manager/init/common