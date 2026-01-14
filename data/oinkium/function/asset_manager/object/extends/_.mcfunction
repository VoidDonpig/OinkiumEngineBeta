#> oinkium:asset_manager/object/extends/_
#
# Extends処理
#
# @within function oinkium:asset/object/extends

# IDをすべて突っ込んでしまう
    function oinkium:asset_manager/object/extends/put_id

# IDをStash
    function oinkium:asset_manager/common/context/id/stash

# Extendsをコピー
    data modify storage oinkium:asset/object CopiedExtends append from storage oinkium:asset/object Extends

# Extendsリセット
    data remove storage oinkium:asset/object Extends

# 再帰判定用データ設定
    data modify storage oinkium:asset/object FirstExtendCheckDone append value {_:{_:false}}

# 再帰的に継承処理
    function oinkium:asset_manager/object/extends/foreach

# リセット
    data remove storage oinkium:asset/object Extends
    data remove storage oinkium:asset/object CopiedExtends[-1]
    data remove storage oinkium:asset/object FirstExtendCheckDone[-1]

# IDをPop
    function oinkium:asset_manager/common/context/id/pop