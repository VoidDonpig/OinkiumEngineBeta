#> oinkium:asset_manager/object/extends/foreach
#
# 再帰的に継承元を処理する
#
# @within function oinkium:asset_manager/object/extends/_

# contextにIDを移す
    data modify storage oinkium:asset/context ID set from storage oinkium:asset/object CopiedExtends[-1][0]

# データを取得する
    function oinkium:asset_manager/object/register/get_registry_data.m with storage oinkium:asset/context

# データをチェック
# TODO: チェックに引っかかったら継承させないようにする
    execute unless data storage oinkium:asset/object ID run tellraw @a[tag=Oinkium.IsAdmin] [{storage:"oinkium:global",nbt:"Prefix.Error"},{text:"ID: "},{storage:"oinkium:asset/context",nbt:"ID"},{text:" Objectが見つかりません"}]
    execute if data storage oinkium:asset/object {IsFinal:true} run tellraw @a[tag=Oinkium.IsAdmin] [{storage:"oinkium:global",nbt:"Prefix.Error"},{text:"ID: "},{storage:"oinkium:asset/object",nbt:"ID"},{text:" Objectは継承できません"}]
    execute if data storage oinkium:asset/object FirstExtendCheckDone[-1]._{_:true} unless data storage oinkium:asset/object {IsAbstract:true} run tellraw @a[tag=Oinkium.IsAdmin] [{storage:"oinkium:global",nbt:"Prefix.Error"},{text:"ID: "},{storage:"oinkium:asset/object",nbt:"ID"},{text:" Objectは Abstractではありません"},"\n",{text:"2つ目以降のObjectはAbstractのみ継承できます"}]

# 先頭削除
    data remove storage oinkium:asset/object CopiedExtends[-1][0]

# 1ループ目終了フラグ
    data modify storage oinkium:asset/object FirstExtendCheckDone[-1]._._ set value true

# リセット
    data remove storage oinkium:asset/object IsFinal
    data remove storage oinkium:asset/object IsAbstract

# 要素が無くなるまで再帰
    execute if data storage oinkium:asset/object CopiedExtends[-1][0] run function oinkium:asset_manager/object/extends/foreach