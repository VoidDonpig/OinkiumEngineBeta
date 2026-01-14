#> oinkium:asset_manager/object/extends/put_id
#
# 継承情報を登録する
#
# @within function oinkium:asset_manager/object/extends/_

# ROM呼び出し
    execute store result score $OinkiumRomAddress Oinkium.Rom run data get storage oinkium:asset/context ID
    function oinkium:rom/please

# Extends情報をぶち込む
    data remove storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4].Object.Extends
    data modify storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4].Object.Extends set from storage oinkium:asset/object Extends