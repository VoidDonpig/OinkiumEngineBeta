#> oinkium:asset_manager/object/register/_
#
# オブジェクトのレジストリ登録処理
#
# @within function
#   oinkium:asset/object/registries
#   oinkium:asset_manager/object/register

# IDをコピー
    data modify storage oinkium:context ID set from storage oinkium:asset/object ObjectRegistries[-1].ID

# レジストリデータ取得
    function oinkium:asset_manager/object/register/get_registry_data.m with storage oinkium:context

# Validation
    execute unless data storage oinkium:asset/object ID run tellraw @a[tag=Oinkium.IsAdmin] [{storage:"oinkium:global",nbt:"Prefix.Error"},{text:"ID: "},{storage:"oinkium:asset/object",nbt:"ObjectRegistries[-1].ID"},{text:" は存在しません"}]

# IDを一時保存
    execute if data storage oinkium:asset/object ID run data modify storage oinkium:context OriginID set from storage oinkium:asset/object ID

# 継承情報処理
    execute if data storage oinkium:asset/object ID if data storage oinkium:asset/object Extends[0] run function oinkium:asset_manager/object/extends/_
    execute if data storage oinkium:asset/object ID run data modify storage oinkium:asset/object ID set from storage oinkium:context ID

# ROM呼び出し
    execute if data storage oinkium:asset/object ID store result score $OinkiumRomAddress Oinkium.Rom run data get storage oinkium:asset/object ID
    execute if data storage oinkium:asset/object ID run function oinkium:rom/please

# ROMにデータを入れる
    execute if data storage oinkium:asset/object ID run data modify storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4].Object.ID set from storage oinkium:asset/object ID

# リセット
    data remove storage oinkium:context ID
    data remove storage oinkium:context OriginID
    data remove storage oinkium:asset/object ID
    data remove storage oinkium:asset/object IsFinal
    data remove storage oinkium:asset/object IsAbstract

# 末尾削除
    data remove storage oinkium:asset/object ObjectRegistries[-1]

# 要素が無くなるまで再帰
    execute if data storage oinkium:asset/object ObjectRegistries[0].ID run function oinkium:asset_manager/object/register/_