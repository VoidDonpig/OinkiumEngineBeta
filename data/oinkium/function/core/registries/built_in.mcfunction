#> oinkium:core/registries/built_in
#
# ビルトインレジストリ登録を行う
#
# @within function oinkium:core/load/once

# 読み込みパス設定
    data modify storage oinkium:core BuildInRegistries set value []
    #data modify storage oinkium:core BuildInRegistries append value {Path:"oinkium:asset/effect/registries"}
    #data modify storage oinkium:core BuildInRegistries append value {Path:"oinkium:asset/item/registries"}
    #data modify storage oinkium:core BuildInRegistries append value {Path:"oinkium:asset/mob/registries"}
    data modify storage oinkium:core BuildInRegistries append value {Path:"oinkium:asset/object/registries"}

# 再帰的にレジストリ登録
    execute if data storage oinkium:core BuildInRegistries[0].Path run data modify storage oinkium:core TargetBuildInRegistry set from storage oinkium:core BuildInRegistries[-1]
    execute if data storage oinkium:core BuildInRegistries[0].Path run function oinkium:core/registries/register.m with storage oinkium:core TargetBuildInRegistry

# リセット
    data remove storage oinkium:core BuildInRegistries
    data remove storage oinkium:core TargetBuildInRegistry