#> oinkium:asset_manager/object/register/_
#
# Register処理を行う
#
# @within function oinkium:asset_manager/object/register/foreach

# context取得
    data modify storage oinkium:asset/context ID set from storage oinkium:asset/object TargetRegistry.ID

# エイリアスをもとにデータを取ってくる
    function oinkium:asset_manager/object/register/get_registry_data.m with storage oinkium:asset/context

# Validation
# 失敗したならば処理を中止
    data modify storage oinkium:asset/object CopiedID set from storage oinkium:asset/object ID
    execute store success storage oinkium:asset/object IsDifferentID byte 1 run data modify storage oinkium:asset/object CopiedID set from storage oinkium:asset/context ID
    execute unless data storage oinkium:asset/object {IsDifferentID:false} run return run tellraw @a[tag=Oinkium.IsAdmin] [{storage:"oinkium:global",nbt:"Prefix.Error"},{storage:"oinkium:asset/context",nbt:"TargetRegistry.ID"},{text:" は存在しません"}]
# 成功したならばそのまま登録処理開始

# ROMストレージ取得
    execute store result score $OinkiumRomAddress Oinkium.Rom run data get storage oinkium:asset/context ID
    function oinkium:rom/please

# 初期化
    data remove storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4].Object.ID
    data remove storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4].Object.Field

# ROMにデータを突っ込む
    data modify storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4].Object.ID set from storage oinkium:asset/context ID
    data modify storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4].Object.Field set from storage oinkium:asset/object Field