#> oinkium:asset_manager/object/register/foreach
#
# オブジェクトのレジストリ登録処理
#
# @within function
#   oinkium:asset/object/registries
#   oinkium:asset_manager/object/register

# 対象の引数を設定
    data modify storage oinkium:asset/object TargetRegistry set from storage oinkium:asset/object ObjectRegistries[-1]

# Validation
    # Args
        function oinkium:asset_manager/object/register/validation/registry

# 引数の処理が通過できるのならRegister処理
    execute if data storage oinkium:asset/object {RegistryArgsValidationPassed:true} run function oinkium:asset_manager/object/register/_

# リセット
    data remove storage oinkium:asset/context ID
    data remove storage oinkium:asset/object TargetRegistry
    data remove storage oinkium:asset/object CopiedID
    data remove storage oinkium:asset/object IsDifferentID
    data remove storage oinkium:asset/object RegistryArgsValidationPassed
    data remove storage oinkium:asset/object ID
    data remove storage oinkium:asset/object IsFinal
    data remove storage oinkium:asset/object IsAbstract
    data remove storage oinkium:asset/object Field

# 末尾削除
    data remove storage oinkium:asset/object ObjectRegistries[-1]

# 要素が無くなるまで再帰
    execute if data storage oinkium:asset/object ObjectRegistries[0] run function oinkium:asset_manager/object/register/foreach