#> oinkium:rom/shift_data
#
# フル計算による割り当て処理（4要素×16段）
#
# @input score $OinkiumRomAddress Oinkium.Rom
#
# @within function oinkium:rom/provide

# 提供されたアドレスを保存
    scoreboard players operation $OinkiumRomLastAddress Oinkium.Rom = $OinkiumRomAddress Oinkium.Rom

# パス状態の保存
    # 計算用にコピー
        scoreboard players operation $OinkiumRomCopiedAddress Oinkium.Rom = $OinkiumRomAddress Oinkium.Rom
    # 層16
        scoreboard players operation $OinkiumRomPathIndex_15 Oinkium.Rom = $OinkiumRomCopiedAddress Oinkium.Rom
        scoreboard players operation $OinkiumRomPathIndex_15 Oinkium.Rom %= $4 Oinkium.Constant
        scoreboard players operation $OinkiumRomCopiedAddress Oinkium.Rom /= $4 Oinkium.Constant
    # 層15
        scoreboard players operation $OinkiumRomPathIndex_14 Oinkium.Rom = $OinkiumRomCopiedAddress Oinkium.Rom
        scoreboard players operation $OinkiumRomPathIndex_14 Oinkium.Rom %= $4 Oinkium.Constant
        scoreboard players operation $OinkiumRomCopiedAddress Oinkium.Rom /= $4 Oinkium.Constant
    # 層14
        scoreboard players operation $OinkiumRomPathIndex_13 Oinkium.Rom = $OinkiumRomCopiedAddress Oinkium.Rom
        scoreboard players operation $OinkiumRomPathIndex_13 Oinkium.Rom %= $4 Oinkium.Constant
        scoreboard players operation $OinkiumRomCopiedAddress Oinkium.Rom /= $4 Oinkium.Constant
    # 層13
        scoreboard players operation $OinkiumRomPathIndex_12 Oinkium.Rom = $OinkiumRomCopiedAddress Oinkium.Rom
        scoreboard players operation $OinkiumRomPathIndex_12 Oinkium.Rom %= $4 Oinkium.Constant
        scoreboard players operation $OinkiumRomCopiedAddress Oinkium.Rom /= $4 Oinkium.Constant
    # 層12
        scoreboard players operation $OinkiumRomPathIndex_11 Oinkium.Rom = $OinkiumRomCopiedAddress Oinkium.Rom
        scoreboard players operation $OinkiumRomPathIndex_11 Oinkium.Rom %= $4 Oinkium.Constant
        scoreboard players operation $OinkiumRomCopiedAddress Oinkium.Rom /= $4 Oinkium.Constant
    # 層11
        scoreboard players operation $OinkiumRomPathIndex_10 Oinkium.Rom = $OinkiumRomCopiedAddress Oinkium.Rom
        scoreboard players operation $OinkiumRomPathIndex_10 Oinkium.Rom %= $4 Oinkium.Constant
        scoreboard players operation $OinkiumRomCopiedAddress Oinkium.Rom /= $4 Oinkium.Constant
    # 層10
        scoreboard players operation $OinkiumRomPathIndex_09 Oinkium.Rom = $OinkiumRomCopiedAddress Oinkium.Rom
        scoreboard players operation $OinkiumRomPathIndex_09 Oinkium.Rom %= $4 Oinkium.Constant
        scoreboard players operation $OinkiumRomCopiedAddress Oinkium.Rom /= $4 Oinkium.Constant
    # 層9
        scoreboard players operation $OinkiumRomPathIndex_08 Oinkium.Rom = $OinkiumRomCopiedAddress Oinkium.Rom
        scoreboard players operation $OinkiumRomPathIndex_08 Oinkium.Rom %= $4 Oinkium.Constant
        scoreboard players operation $OinkiumRomCopiedAddress Oinkium.Rom /= $4 Oinkium.Constant
    # 層8
        scoreboard players operation $OinkiumRomPathIndex_07 Oinkium.Rom = $OinkiumRomCopiedAddress Oinkium.Rom
        scoreboard players operation $OinkiumRomPathIndex_07 Oinkium.Rom %= $4 Oinkium.Constant
        scoreboard players operation $OinkiumRomCopiedAddress Oinkium.Rom /= $4 Oinkium.Constant
    # 層7
        scoreboard players operation $OinkiumRomPathIndex_06 Oinkium.Rom = $OinkiumRomCopiedAddress Oinkium.Rom
        scoreboard players operation $OinkiumRomPathIndex_06 Oinkium.Rom %= $4 Oinkium.Constant
        scoreboard players operation $OinkiumRomCopiedAddress Oinkium.Rom /= $4 Oinkium.Constant
    # 層6
        scoreboard players operation $OinkiumRomPathIndex_05 Oinkium.Rom = $OinkiumRomCopiedAddress Oinkium.Rom
        scoreboard players operation $OinkiumRomPathIndex_05 Oinkium.Rom %= $4 Oinkium.Constant
        scoreboard players operation $OinkiumRomCopiedAddress Oinkium.Rom /= $4 Oinkium.Constant
    # 層5
        scoreboard players operation $OinkiumRomPathIndex_04 Oinkium.Rom = $OinkiumRomCopiedAddress Oinkium.Rom
        scoreboard players operation $OinkiumRomPathIndex_04 Oinkium.Rom %= $4 Oinkium.Constant
        scoreboard players operation $OinkiumRomCopiedAddress Oinkium.Rom /= $4 Oinkium.Constant
    # 層4
        scoreboard players operation $OinkiumRomPathIndex_03 Oinkium.Rom = $OinkiumRomCopiedAddress Oinkium.Rom
        scoreboard players operation $OinkiumRomPathIndex_03 Oinkium.Rom %= $4 Oinkium.Constant
        scoreboard players operation $OinkiumRomCopiedAddress Oinkium.Rom /= $4 Oinkium.Constant
    # 層3
        scoreboard players operation $OinkiumRomPathIndex_02 Oinkium.Rom = $OinkiumRomCopiedAddress Oinkium.Rom
        scoreboard players operation $OinkiumRomPathIndex_02 Oinkium.Rom %= $4 Oinkium.Constant
        scoreboard players operation $OinkiumRomCopiedAddress Oinkium.Rom /= $4 Oinkium.Constant
    # 層2
        scoreboard players operation $OinkiumRomPathIndex_01 Oinkium.Rom = $OinkiumRomCopiedAddress Oinkium.Rom
        scoreboard players operation $OinkiumRomPathIndex_01 Oinkium.Rom %= $4 Oinkium.Constant
        scoreboard players operation $OinkiumRomCopiedAddress Oinkium.Rom /= $4 Oinkium.Constant
    # 層1
        scoreboard players operation $OinkiumRomPathIndex_00 Oinkium.Rom = $OinkiumRomCopiedAddress Oinkium.Rom
        scoreboard players operation $OinkiumRomPathIndex_00 Oinkium.Rom %= $4 Oinkium.Constant
        scoreboard players operation $OinkiumRomCopiedAddress Oinkium.Rom /= $4 Oinkium.Constant
    # パス計算済みフラグを立てる
        scoreboard players set $OinkiumRomPathValid Oinkium.Rom 1

# リセット
    data remove storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][6]
    data remove storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][5]
    data remove storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][4]
    data remove storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][6]
    data remove storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][5]
    data remove storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][4]
    data remove storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][6]
    data remove storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][5]
    data remove storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][4]
    data remove storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][6]
    data remove storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][5]
    data remove storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][4]
    data remove storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][6]
    data remove storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][5]
    data remove storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][4]
    data remove storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][6]
    data remove storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][5]
    data remove storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][4]
    data remove storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][6]
    data remove storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][5]
    data remove storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][4]
    data remove storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][6]
    data remove storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][5]
    data remove storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][4]
    data remove storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][6]
    data remove storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][5]
    data remove storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][4]
    data remove storage oinkium:rom _[-4][-4][-4][-4][-4][-4][6]
    data remove storage oinkium:rom _[-4][-4][-4][-4][-4][-4][5]
    data remove storage oinkium:rom _[-4][-4][-4][-4][-4][-4][4]
    data remove storage oinkium:rom _[-4][-4][-4][-4][-4][6]
    data remove storage oinkium:rom _[-4][-4][-4][-4][-4][5]
    data remove storage oinkium:rom _[-4][-4][-4][-4][-4][4]
    data remove storage oinkium:rom _[-4][-4][-4][-4][6]
    data remove storage oinkium:rom _[-4][-4][-4][-4][5]
    data remove storage oinkium:rom _[-4][-4][-4][-4][4]
    data remove storage oinkium:rom _[-4][-4][-4][6]
    data remove storage oinkium:rom _[-4][-4][-4][5]
    data remove storage oinkium:rom _[-4][-4][-4][4]
    data remove storage oinkium:rom _[-4][-4][6]
    data remove storage oinkium:rom _[-4][-4][5]
    data remove storage oinkium:rom _[-4][-4][4]
    data remove storage oinkium:rom _[-4][6]
    data remove storage oinkium:rom _[-4][5]
    data remove storage oinkium:rom _[-4][4]
    data remove storage oinkium:rom _[6]
    data remove storage oinkium:rom _[5]
    data remove storage oinkium:rom _[4]

# シフト1
    execute if score $OinkiumRomAddress Oinkium.Rom matches 1073741824.. run data modify storage oinkium:rom _ append value []
    execute if score $OinkiumRomAddress Oinkium.Rom matches ..-1073741825 run data modify storage oinkium:rom _ append from storage oinkium:rom TwoEmptyLists[]
    execute if score $OinkiumRomAddress Oinkium.Rom matches -1073741824..-1 run data modify storage oinkium:rom _ append from storage oinkium:rom ThreeEmptyLists[]
    
# チェック2 + シフト2
    execute unless data storage oinkium:rom _[-4][0] run data modify storage oinkium:rom _[-4] set from storage oinkium:rom Initial[0]
    scoreboard players operation $OinkiumRomAddress Oinkium.Rom *= $4 Oinkium.Constant
    execute if score $OinkiumRomAddress Oinkium.Rom matches 1073741824.. run data modify storage oinkium:rom _[-4] append value []
    execute if score $OinkiumRomAddress Oinkium.Rom matches ..-1073741825 run data modify storage oinkium:rom _[-4] append from storage oinkium:rom TwoEmptyLists[]
    execute if score $OinkiumRomAddress Oinkium.Rom matches -1073741824..-1 run data modify storage oinkium:rom _[-4] append from storage oinkium:rom ThreeEmptyLists[]

# チェック3 + シフト3
    execute unless data storage oinkium:rom _[-4][-4][0] run data modify storage oinkium:rom _[-4][-4] set from storage oinkium:rom Initial[0][0]
    scoreboard players operation $OinkiumRomAddress Oinkium.Rom *= $4 Oinkium.Constant
    execute if score $OinkiumRomAddress Oinkium.Rom matches 1073741824.. run data modify storage oinkium:rom _[-4][-4] append value []
    execute if score $OinkiumRomAddress Oinkium.Rom matches ..-1073741825 run data modify storage oinkium:rom _[-4][-4] append from storage oinkium:rom TwoEmptyLists[]
    execute if score $OinkiumRomAddress Oinkium.Rom matches -1073741824..-1 run data modify storage oinkium:rom _[-4][-4] append from storage oinkium:rom ThreeEmptyLists[]

# チェック4 + シフト4
    execute unless data storage oinkium:rom _[-4][-4][-4][0] run data modify storage oinkium:rom _[-4][-4][-4] set from storage oinkium:rom Initial[0][0][0]
    scoreboard players operation $OinkiumRomAddress Oinkium.Rom *= $4 Oinkium.Constant
    execute if score $OinkiumRomAddress Oinkium.Rom matches 1073741824.. run data modify storage oinkium:rom _[-4][-4][-4] append value []
    execute if score $OinkiumRomAddress Oinkium.Rom matches ..-1073741825 run data modify storage oinkium:rom _[-4][-4][-4] append from storage oinkium:rom TwoEmptyLists[]
    execute if score $OinkiumRomAddress Oinkium.Rom matches -1073741824..-1 run data modify storage oinkium:rom _[-4][-4][-4] append from storage oinkium:rom ThreeEmptyLists[]

# チェック5 + シフト5
    execute unless data storage oinkium:rom _[-4][-4][-4][-4][0] run data modify storage oinkium:rom _[-4][-4][-4][-4] set from storage oinkium:rom Initial[0][0][0][0]
    scoreboard players operation $OinkiumRomAddress Oinkium.Rom *= $4 Oinkium.Constant
    execute if score $OinkiumRomAddress Oinkium.Rom matches 1073741824.. run data modify storage oinkium:rom _[-4][-4][-4][-4] append value []
    execute if score $OinkiumRomAddress Oinkium.Rom matches ..-1073741825 run data modify storage oinkium:rom _[-4][-4][-4][-4] append from storage oinkium:rom TwoEmptyLists[]
    execute if score $OinkiumRomAddress Oinkium.Rom matches -1073741824..-1 run data modify storage oinkium:rom _[-4][-4][-4][-4] append from storage oinkium:rom ThreeEmptyLists[]

# チェック6 + シフト6
    execute unless data storage oinkium:rom _[-4][-4][-4][-4][-4][0] run data modify storage oinkium:rom _[-4][-4][-4][-4][-4] set from storage oinkium:rom Initial[0][0][0][0][0]
    scoreboard players operation $OinkiumRomAddress Oinkium.Rom *= $4 Oinkium.Constant
    execute if score $OinkiumRomAddress Oinkium.Rom matches 1073741824.. run data modify storage oinkium:rom _[-4][-4][-4][-4][-4] append value []
    execute if score $OinkiumRomAddress Oinkium.Rom matches ..-1073741825 run data modify storage oinkium:rom _[-4][-4][-4][-4][-4] append from storage oinkium:rom TwoEmptyLists[]
    execute if score $OinkiumRomAddress Oinkium.Rom matches -1073741824..-1 run data modify storage oinkium:rom _[-4][-4][-4][-4][-4] append from storage oinkium:rom ThreeEmptyLists[]

# チェック7 + シフト7
    execute unless data storage oinkium:rom _[-4][-4][-4][-4][-4][-4][0] run data modify storage oinkium:rom _[-4][-4][-4][-4][-4][-4] set from storage oinkium:rom Initial[0][0][0][0][0][0]
    scoreboard players operation $OinkiumRomAddress Oinkium.Rom *= $4 Oinkium.Constant
    execute if score $OinkiumRomAddress Oinkium.Rom matches 1073741824.. run data modify storage oinkium:rom _[-4][-4][-4][-4][-4][-4] append value []
    execute if score $OinkiumRomAddress Oinkium.Rom matches ..-1073741825 run data modify storage oinkium:rom _[-4][-4][-4][-4][-4][-4] append from storage oinkium:rom TwoEmptyLists[]
    execute if score $OinkiumRomAddress Oinkium.Rom matches -1073741824..-1 run data modify storage oinkium:rom _[-4][-4][-4][-4][-4][-4] append from storage oinkium:rom ThreeEmptyLists[]

# チェック8 + シフト8
    execute unless data storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][0] run data modify storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4] set from storage oinkium:rom Initial[0][0][0][0][0][0][0]
    scoreboard players operation $OinkiumRomAddress Oinkium.Rom *= $4 Oinkium.Constant
    execute if score $OinkiumRomAddress Oinkium.Rom matches 1073741824.. run data modify storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4] append value []
    execute if score $OinkiumRomAddress Oinkium.Rom matches ..-1073741825 run data modify storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4] append from storage oinkium:rom TwoEmptyLists[]
    execute if score $OinkiumRomAddress Oinkium.Rom matches -1073741824..-1 run data modify storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4] append from storage oinkium:rom ThreeEmptyLists[]

# チェック9 + シフト9
    execute unless data storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][0] run data modify storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4] set from storage oinkium:rom Initial[0][0][0][0][0][0][0][0]
    scoreboard players operation $OinkiumRomAddress Oinkium.Rom *= $4 Oinkium.Constant
    execute if score $OinkiumRomAddress Oinkium.Rom matches 1073741824.. run data modify storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4] append value []
    execute if score $OinkiumRomAddress Oinkium.Rom matches ..-1073741825 run data modify storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4] append from storage oinkium:rom TwoEmptyLists[]
    execute if score $OinkiumRomAddress Oinkium.Rom matches -1073741824..-1 run data modify storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4] append from storage oinkium:rom ThreeEmptyLists[]

# チェック10 + シフト10
    execute unless data storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][0] run data modify storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4] set from storage oinkium:rom Initial[0][0][0][0][0][0][0][0][0]
    scoreboard players operation $OinkiumRomAddress Oinkium.Rom *= $4 Oinkium.Constant
    execute if score $OinkiumRomAddress Oinkium.Rom matches 1073741824.. run data modify storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4] append value []
    execute if score $OinkiumRomAddress Oinkium.Rom matches ..-1073741825 run data modify storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4] append from storage oinkium:rom TwoEmptyLists[]
    execute if score $OinkiumRomAddress Oinkium.Rom matches -1073741824..-1 run data modify storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4] append from storage oinkium:rom ThreeEmptyLists[]

# チェック11 + シフト11
    execute unless data storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][0] run data modify storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4] set from storage oinkium:rom Initial[0][0][0][0][0][0][0][0][0][0]
    scoreboard players operation $OinkiumRomAddress Oinkium.Rom *= $4 Oinkium.Constant
    execute if score $OinkiumRomAddress Oinkium.Rom matches 1073741824.. run data modify storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4] append value []
    execute if score $OinkiumRomAddress Oinkium.Rom matches ..-1073741825 run data modify storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4] append from storage oinkium:rom TwoEmptyLists[]
    execute if score $OinkiumRomAddress Oinkium.Rom matches -1073741824..-1 run data modify storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4] append from storage oinkium:rom ThreeEmptyLists[]

# チェック12 + シフト12
    execute unless data storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][0] run data modify storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4] set from storage oinkium:rom Initial[0][0][0][0][0][0][0][0][0][0][0]
    scoreboard players operation $OinkiumRomAddress Oinkium.Rom *= $4 Oinkium.Constant
    execute if score $OinkiumRomAddress Oinkium.Rom matches 1073741824.. run data modify storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4] append value []
    execute if score $OinkiumRomAddress Oinkium.Rom matches ..-1073741825 run data modify storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4] append from storage oinkium:rom TwoEmptyLists[]
    execute if score $OinkiumRomAddress Oinkium.Rom matches -1073741824..-1 run data modify storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4] append from storage oinkium:rom ThreeEmptyLists[]

# チェック13 + シフト13
    execute unless data storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][0] run data modify storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4] set from storage oinkium:rom Initial[0][0][0][0][0][0][0][0][0][0][0][0]
    scoreboard players operation $OinkiumRomAddress Oinkium.Rom *= $4 Oinkium.Constant
    execute if score $OinkiumRomAddress Oinkium.Rom matches 1073741824.. run data modify storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4] append value []
    execute if score $OinkiumRomAddress Oinkium.Rom matches ..-1073741825 run data modify storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4] append from storage oinkium:rom TwoEmptyLists[]
    execute if score $OinkiumRomAddress Oinkium.Rom matches -1073741824..-1 run data modify storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4] append from storage oinkium:rom ThreeEmptyLists[]

# チェック14 + シフト14
    execute unless data storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][0] run data modify storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4] set from storage oinkium:rom Initial[0][0][0][0][0][0][0][0][0][0][0][0][0]
    scoreboard players operation $OinkiumRomAddress Oinkium.Rom *= $4 Oinkium.Constant
    execute if score $OinkiumRomAddress Oinkium.Rom matches 1073741824.. run data modify storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4] append value []
    execute if score $OinkiumRomAddress Oinkium.Rom matches ..-1073741825 run data modify storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4] append from storage oinkium:rom TwoEmptyLists[]
    execute if score $OinkiumRomAddress Oinkium.Rom matches -1073741824..-1 run data modify storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4] append from storage oinkium:rom ThreeEmptyLists[]

# チェック15 + シフト15
    execute unless data storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][0] run data modify storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4] set from storage oinkium:rom Initial[0][0][0][0][0][0][0][0][0][0][0][0][0][0]
    scoreboard players operation $OinkiumRomAddress Oinkium.Rom *= $4 Oinkium.Constant
    execute if score $OinkiumRomAddress Oinkium.Rom matches 1073741824.. run data modify storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4] append value []
    execute if score $OinkiumRomAddress Oinkium.Rom matches ..-1073741825 run data modify storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4] append from storage oinkium:rom TwoEmptyLists[]
    execute if score $OinkiumRomAddress Oinkium.Rom matches -1073741824..-1 run data modify storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4] append from storage oinkium:rom ThreeEmptyLists[]

# チェック16 + シフト16
    execute unless data storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][0] run data modify storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4] set from storage oinkium:rom Initial[0][0][0][0][0][0][0][0][0][0][0][0][0][0][0]
    scoreboard players operation $OinkiumRomAddress Oinkium.Rom *= $4 Oinkium.Constant
    execute if score $OinkiumRomAddress Oinkium.Rom matches 1073741824.. run data modify storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4] append value {}
    execute if score $OinkiumRomAddress Oinkium.Rom matches ..-1073741825 run data modify storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4] append from storage oinkium:rom TwoEmptyMaps[]
    execute if score $OinkiumRomAddress Oinkium.Rom matches -1073741824..-1 run data modify storage oinkium:rom _[-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4][-4] append from storage oinkium:rom ThreeEmptyMaps[]
