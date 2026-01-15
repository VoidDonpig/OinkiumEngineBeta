#> oinkium:entity_storage/gc/free
#
# 削除対象のストレージを初期化する
#
# @within function
#   oinkium:entity_storage/gc/_mini
#   oinkium:entity_storage/gc/free

# 呼び出し用にIDコピー
    scoreboard players operation $ Oinkium.EntityStorageID = $OinkiumEntityStorageTarget Oinkium.EntityStorageID

# ストレージ呼び出し
    function oinkium:entity_storage/shift_data

# 初期化
    data modify storage oinkium:entity_storage _[-4][-4][-4][-4][-4][-4][-4][-4] set value {}

# IDリストから削除
    data remove storage oinkium:entity_storage ID[0]

# ID[0] > Max の状態が続く場合引き続き削除処理
    execute store result score $OinkiumEntityStorageTarget Oinkium.EntityStorage run data get storage oinkium:entity_storage ID[0]
    execute if score $OinkiumEntityStorageTarget Oinkium.EntityStorage > $OinkiumEntityStorageMax Oinkium.EntityStorage run function oinkium:entity_storage/gc/free