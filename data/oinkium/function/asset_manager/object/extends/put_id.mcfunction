#> oinkium:asset_manager/object/extends/put_id
#
# IDを継承情報に保存する
#
# @within function oinkium:asset_manager/object/extends/_

# IDをPop
    function oinkium:asset_manager/common/id/pop

# アドレス設定
    execute store result score $OinkiumRomAddress Oinkium.Rom run data get storage oinkium:context ID

# ROM呼び出し
    function oinkium:rom/please

# 継承元IDを突っ込む
    execute unless data storage oinkium:asset/object IsFirstExtendCheckDone[-1]._{_:true} run data remove storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4].Object.Extends
    data modify storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4].Object.Extends append from storage oinkium:asset/object ID

# IDをStash
    function oinkium:asset_manager/common/id/stash