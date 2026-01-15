#> oinkium:entity_storage/init
#
# エンティティストレージ用初期化処理
#
# @within function oinkium:core/load/once

# 専用スコアボード
    scoreboard objectives add Oinkium.EntityStorage dummy
    scoreboard objectives add Oinkium.EntityStorageID dummy

# 初期データ
    data modify storage oinkium:entity_storage Initial set value [[[[[[[[{},{},{},{}],[],[],[]],[],[],[]],[],[],[]],[],[],[]],[],[],[]],[],[],[]],[],[],[]]

# 初期化
    data modify storage oinkium:entity_storage _ set from storage oinkium:entity_storage Initial

# IDリスト初期化
    data modify storage oinkium:entity_storage ID set value [0]
