#> oinkium:shift_data
#
# データシフト
#
# @within function oinkium:entity_storage/please

# 最後に要求されたIDを記録
    scoreboard players operation $OinkiumEntityStorageLastID Oinkium.EntityStorage = @s Oinkium.EntityStorageID

# リセット
    data remove storage oinkium:entity_storage _[-4][-4][-4][-4][-4][-4][-4][6]
    data remove storage oinkium:entity_storage _[-4][-4][-4][-4][-4][-4][-4][5]
    data remove storage oinkium:entity_storage _[-4][-4][-4][-4][-4][-4][-4][4]
    data remove storage oinkium:entity_storage _[-4][-4][-4][-4][-4][-4][6]
    data remove storage oinkium:entity_storage _[-4][-4][-4][-4][-4][-4][5]
    data remove storage oinkium:entity_storage _[-4][-4][-4][-4][-4][-4][4]
    data remove storage oinkium:entity_storage _[-4][-4][-4][-4][-4][6]
    data remove storage oinkium:entity_storage _[-4][-4][-4][-4][-4][5]
    data remove storage oinkium:entity_storage _[-4][-4][-4][-4][-4][4]
    data remove storage oinkium:entity_storage _[-4][-4][-4][-4][6]
    data remove storage oinkium:entity_storage _[-4][-4][-4][-4][5]
    data remove storage oinkium:entity_storage _[-4][-4][-4][-4][4]
    data remove storage oinkium:entity_storage _[-4][-4][-4][6]
    data remove storage oinkium:entity_storage _[-4][-4][-4][5]
    data remove storage oinkium:entity_storage _[-4][-4][-4][4]
    data remove storage oinkium:entity_storage _[-4][-4][6]
    data remove storage oinkium:entity_storage _[-4][-4][5]
    data remove storage oinkium:entity_storage _[-4][-4][4]
    data remove storage oinkium:entity_storage _[-4][6]
    data remove storage oinkium:entity_storage _[-4][5]
    data remove storage oinkium:entity_storage _[-4][4]
    data remove storage oinkium:entity_storage _[6]
    data remove storage oinkium:entity_storage _[5]
    data remove storage oinkium:entity_storage _[4]

# 計算用にコピー
    scoreboard players operation $ Oinkium.EntityStorageID = @s Oinkium.EntityStorageID
    scoreboard players operation $ Oinkium.EntityStorageID *= $65536 Oinkium.Constant

# シフト1
    execute if score $ Oinkium.EntityStorageID matches 1073741824.. run data modify storage oinkium:entity_storage _ append value []
    execute if score $ Oinkium.EntityStorageID matches ..-1073741825 run data modify storage oinkium:entity_storage _ append from storage oinkium:global TwoEmptyLists[]
    execute if score $ Oinkium.EntityStorageID matches -1073741824..-1 run data modify storage oinkium:entity_storage _ append from storage oinkium:global ThreeEmptyLists[]
    
# チェック2 + シフト2
    execute unless data storage oinkium:entity_storage _[-4][0] run data modify storage oinkium:entity_storage _[-4] set from storage oinkium:entity_storage Initial[0]
    scoreboard players operation $ Oinkium.EntityStorageID *= $4 Oinkium.Constant
    execute if score $ Oinkium.EntityStorageID matches 1073741824.. run data modify storage oinkium:entity_storage _[-4] append value []
    execute if score $ Oinkium.EntityStorageID matches ..-1073741825 run data modify storage oinkium:entity_storage _[-4] append from storage oinkium:global TwoEmptyLists[]
    execute if score $ Oinkium.EntityStorageID matches -1073741824..-1 run data modify storage oinkium:entity_storage _[-4] append from storage oinkium:global ThreeEmptyLists[]

# チェック3 + シフト3
    execute unless data storage oinkium:entity_storage _[-4][-4][0] run data modify storage oinkium:entity_storage _[-4][-4] set from storage oinkium:entity_storage Initial[0][0]
    scoreboard players operation $ Oinkium.EntityStorageID *= $4 Oinkium.Constant
    execute if score $ Oinkium.EntityStorageID matches 1073741824.. run data modify storage oinkium:entity_storage _[-4][-4] append value []
    execute if score $ Oinkium.EntityStorageID matches ..-1073741825 run data modify storage oinkium:entity_storage _[-4][-4] append from storage oinkium:global TwoEmptyLists[]
    execute if score $ Oinkium.EntityStorageID matches -1073741824..-1 run data modify storage oinkium:entity_storage _[-4][-4] append from storage oinkium:global ThreeEmptyLists[]

# チェック4 + シフト4
    execute unless data storage oinkium:entity_storage _[-4][-4][-4][0] run data modify storage oinkium:entity_storage _[-4][-4][-4] set from storage oinkium:entity_storage Initial[0][0][0]
    scoreboard players operation $ Oinkium.EntityStorageID *= $4 Oinkium.Constant
    execute if score $ Oinkium.EntityStorageID matches 1073741824.. run data modify storage oinkium:entity_storage _[-4][-4][-4] append value []
    execute if score $ Oinkium.EntityStorageID matches ..-1073741825 run data modify storage oinkium:entity_storage _[-4][-4][-4] append from storage oinkium:global TwoEmptyLists[]
    execute if score $ Oinkium.EntityStorageID matches -1073741824..-1 run data modify storage oinkium:entity_storage _[-4][-4][-4] append from storage oinkium:global ThreeEmptyLists[]

# チェック5 + シフト5
    execute unless data storage oinkium:entity_storage _[-4][-4][-4][-4][0] run data modify storage oinkium:entity_storage _[-4][-4][-4][-4] set from storage oinkium:entity_storage Initial[0][0][0][0]
    scoreboard players operation $ Oinkium.EntityStorageID *= $4 Oinkium.Constant
    execute if score $ Oinkium.EntityStorageID matches 1073741824.. run data modify storage oinkium:entity_storage _[-4][-4][-4][-4] append value []
    execute if score $ Oinkium.EntityStorageID matches ..-1073741825 run data modify storage oinkium:entity_storage _[-4][-4][-4][-4] append from storage oinkium:global TwoEmptyLists[]
    execute if score $ Oinkium.EntityStorageID matches -1073741824..-1 run data modify storage oinkium:entity_storage _[-4][-4][-4][-4] append from storage oinkium:global ThreeEmptyLists[]

# チェック6 + シフト6
    execute unless data storage oinkium:entity_storage _[-4][-4][-4][-4][-4][0] run data modify storage oinkium:entity_storage _[-4][-4][-4][-4][-4] set from storage oinkium:entity_storage Initial[0][0][0][0][0]
    scoreboard players operation $ Oinkium.EntityStorageID *= $4 Oinkium.Constant
    execute if score $ Oinkium.EntityStorageID matches 1073741824.. run data modify storage oinkium:entity_storage _[-4][-4][-4][-4][-4] append value []
    execute if score $ Oinkium.EntityStorageID matches ..-1073741825 run data modify storage oinkium:entity_storage _[-4][-4][-4][-4][-4] append from storage oinkium:global TwoEmptyLists[]
    execute if score $ Oinkium.EntityStorageID matches -1073741824..-1 run data modify storage oinkium:entity_storage _[-4][-4][-4][-4][-4] append from storage oinkium:global ThreeEmptyLists[]

# チェック7 + シフト7
    execute unless data storage oinkium:entity_storage _[-4][-4][-4][-4][-4][-4][0] run data modify storage oinkium:entity_storage _[-4][-4][-4][-4][-4][-4] set from storage oinkium:entity_storage Initial[0][0][0][0][0][0]
    scoreboard players operation $ Oinkium.EntityStorageID *= $4 Oinkium.Constant
    execute if score $ Oinkium.EntityStorageID matches 1073741824.. run data modify storage oinkium:entity_storage _[-4][-4][-4][-4][-4][-4] append value []
    execute if score $ Oinkium.EntityStorageID matches ..-1073741825 run data modify storage oinkium:entity_storage _[-4][-4][-4][-4][-4][-4] append from storage oinkium:global TwoEmptyLists[]
    execute if score $ Oinkium.EntityStorageID matches -1073741824..-1 run data modify storage oinkium:entity_storage _[-4][-4][-4][-4][-4][-4] append from storage oinkium:global ThreeEmptyLists[]

# チェック8 + シフト8
    execute unless data storage oinkium:entity_storage _[-4][-4][-4][-4][-4][-4][-4][0] run data modify storage oinkium:entity_storage _[-4][-4][-4][-4][-4][-4][-4] set from storage oinkium:entity_storage Initial[0][0][0][0][0][0][0]
    scoreboard players operation $ Oinkium.EntityStorageID *= $4 Oinkium.Constant
    execute if score $ Oinkium.EntityStorageID matches 1073741824.. run data modify storage oinkium:entity_storage _[-4][-4][-4][-4][-4][-4][-4] append value {}
    execute if score $ Oinkium.EntityStorageID matches ..-1073741825 run data modify storage oinkium:entity_storage _[-4][-4][-4][-4][-4][-4][-4] append from storage oinkium:global TwoEmptyMaps[]
    execute if score $ Oinkium.EntityStorageID matches -1073741824..-1 run data modify storage oinkium:entity_storage _[-4][-4][-4][-4][-4][-4][-4] append from storage oinkium:global ThreeEmptyMaps[]