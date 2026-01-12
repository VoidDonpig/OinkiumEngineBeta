#> oinkium:core/load/_
#
# ロード時処理
#
# @within tag/function minecraft:load

# 初回ロード処理
    execute unless data storage oinkium:core {IsFirstLoaded:true} run function oinkium:core/load/once