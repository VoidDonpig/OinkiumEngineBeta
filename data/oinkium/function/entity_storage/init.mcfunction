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

# シフト用データ
    data modify storage oinkium:entity_storage TwoEmptyLists set value [[],[]]
    data modify storage oinkium:entity_storage ThreeEmptyLists set value [[],[],[]]
    data modify storage oinkium:entity_storage TwoEmptyMaps set value [{},{}]
    data modify storage oinkium:entity_storage ThreeEmptyMaps set value [{},{},{}]

# 初期化
    data modify storage oinkium:entity_storage _ set from storage oinkium:entity_storage Initial
