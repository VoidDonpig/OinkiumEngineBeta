#> oinkium:asset/object/registries
#
# レジストリ登録処理
#
# @within function oinkium:core/registries/register.m

# ID & エイリアス登録
    data modify storage oinkium:asset/object ObjectRegistries set value []
    data modify storage oinkium:asset/object ObjectRegistries append value {ID:0}
    data modify storage oinkium:asset/object ObjectRegistries append value {ID:1}
    data modify storage oinkium:asset/object ObjectRegistries append value {ID:2}

# 再帰的にレジストリ登録
    execute if data storage oinkium:asset/object ObjectRegistries[0] run function oinkium:asset_manager/object/register/foreach

# リセット
    data remove storage oinkium:asset/object ObjectRegistries