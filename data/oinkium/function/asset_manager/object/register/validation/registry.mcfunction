#> oinkium:asset_manager/object/register/validation/registry
#
# 渡された引数レジストリデータの形式が正しいかどうか確かめる
#
# @within function oinkium:asset_manager/object/register/foreach

# 初期値は True
    data modify storage oinkium:asset/object RegistryArgsValidationPassed set value true

# Validation
    # ID
        execute unless data storage oinkium:asset/object TargetRegistry.ID run tellraw @a[tag=Oinkium.IsAdmin] [{storage:"oinkium:global",nbt:"Prefix.Error"},{text:"引数が不足しています ID"}]
        execute unless data storage oinkium:asset/object TargetRegistry.ID run data modify storage oinkium:asset/object RegistryArgsValidationPassed set value false