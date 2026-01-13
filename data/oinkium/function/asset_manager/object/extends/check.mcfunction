#> oinkium:asset_manager/object/extends/check
#
# 継承可能かどうか確かめた後継承情報にID登録
#
# @within function
#   oinkium:asset_manager/object/extends/_
#   oinkium:asset_manager/object/extends/check

# ID取得
    data modify storage oinkium:context ID set from storage oinkium:asset/object CopiedExtends[-1][0]

# マクロを用いてRegister情報取得
    function oinkium:asset_manager/object/register/get_registry_data.m with storage oinkium:context

# 検査
    # 何もなければ自動的に許可
        data modify storage oinkium:asset/object ExtendOk._._ set value true
    # 継承元が存在しなかったらエラー
        execute unless data storage oinkium:asset/object ID run tellraw @a[tag=Oinkium.IsAdmin] [{storage:"oinkium:global",nbt:"Prefix.Error"},{text:"ID: "},{storage:"oinkium:context",nbt:"ID"},{text:" は存在しません"}]
        execute unless data storage oinkium:asset/object ID run data modify storage oinkium:asset/object ExtendOk._._ set value false
    # Finalオブジェクトだったらエラー
        execute if data storage oinkium:asset/object ExtendOk._{_:true} unless data storage oinkium:asset/object {IsFinal:false} run tellraw @a[tag=Oinkium.IsAdmin] [{storage:"oinkium:global",nbt:"Prefix.Error"},{text:"ID: "},{storage:"oinkium:asset/object",nbt:"ID"},{text:" は継承できません"}]
        execute if data storage oinkium:asset/object ExtendOk._{_:true} unless data storage oinkium:asset/object {IsFinal:false} unless data storage oinkium:asset/object ID run data modify storage oinkium:asset/object ExtendOk._._ set value false
    # 2つ目以降の継承はAbstractに限定する
        execute if data storage oinkium:asset/object IsFirstExtendCheckDone[-1]._{_:true} unless data storage oinkium:asset/object {IsAbstract:true} run tellraw @a [{storage:"oinkium:global",nbt:"Prefix.Error"},{"text":"2つ目以降の Extends には抽象 Object のみ指定することができます"}]
        execute if data storage oinkium:asset/object IsFirstExtendCheckDone[-1]._{_:true} unless data storage oinkium:asset/object {IsAbstract:true} run data modify storage oinkium:asset/object ExtendOk._._ set value false

# IDを継承情報に入れる
    execute if data storage oinkium:asset/object ExtendOk._{_:true} run function oinkium:asset_manager/object/extends/put_id

# 最初の継承処理が終わったことを宣言
    data modify storage oinkium:asset/object IsFirstExtendCheckDone[-1]._._ set value true

# リセット
    data remove storage oinkium:asset/object ExtendOk

# 先頭削除
    data remove storage oinkium:asset/object CopiedExtends[-1][0]

# 要素が無くなるまで再帰
    execute if data storage oinkium:asset/object CopiedExtends[-1][0] run function oinkium:asset_manager/object/extends/check
