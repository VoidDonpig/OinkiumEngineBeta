#> oinkium:asset_manager/object/extends/_
#
# 継承情報を追加
#
# @within function
#   oinkium:asset_manager/object/register.m

# 条件検査のために継承情報コピー
    data modify storage oinkium:asset/object CopiedExtends append from storage oinkium:asset/object Extends

# 初期化
    data modify storage oinkium:asset/object IsFirstExtendCheckDone append value {_:{_:false}}

# IDをStash
    function oinkium:asset_manager/common/id/stash

# 継承可能かどうか確かめてIDを突っ込む
    function oinkium:asset_manager/object/extends/check

# Extends削除
    data remove storage oinkium:asset/object Extends

# 末尾削除
    data remove storage oinkium:asset/object CopiedExtends[-1]

# リセット
    data remove storage oinkium:asset/object IsFirstExtendCheckDone[-1]
    execute unless data storage oinkium:asset/object CopiedExtends[0] run data remove storage oinkium:asset/object CopiedExtends
    execute unless data storage oinkium:asset/object IsFirstExtendCheckDone[0] run data remove storage oinkium:asset/object IsFirstExtendCheckDone

# IDをPop
    function oinkium:asset_manager/common/id/pop