#> oinkium:entity_storage/allocate_id
#
# エンティティストレージ管理用IDを新規に割り当てる
#
# @within function oinkium:entity_storage/please

#> Private
# @private
#declare score_holder $OinkiumEntityStorageHeadID
#declare score_holder $OinkiumEntityStorageFootID
#declare score_holder $OinkiumEntityStorageBeAllocatedID

# Mini GC
    function oinkium:entity_storage/gc/_mini

# ID[0] と ID[-1] の中間値を割り当て
    # ID[]のHeadとFoot取得
        execute store result score $OinkiumEntityStorageHeadID Oinkium.EntityStorage run data get storage oinkium:entity_storage ID[0]
        execute store result score $OinkiumEntityStorageFootID Oinkium.EntityStorage run data get storage oinkium:entity_storage ID[-1]
    # ラップアラウンド対策
        execute if score $OinkiumEntityStorageFootID Oinkium.EntityStorage matches 0 run scoreboard players set $OinkiumEntityStorageFootID Oinkium.EntityStorage 65536
    # 割り当てるID計算
        scoreboard players operation $OinkiumEntityStorageBeAllocatedID Oinkium.EntityStorage += $OinkiumEntityStorageHeadID Oinkium.EntityStorage
        scoreboard players operation $OinkiumEntityStorageBeAllocatedID Oinkium.EntityStorage += $OinkiumEntityStorageFootID Oinkium.EntityStorage
        scoreboard players operation $OinkiumEntityStorageBeAllocatedID Oinkium.EntityStorage /= $2 Oinkium.Constant
    # 割り当て
        scoreboard players operation @s Oinkium.EntityStorageID = $OinkiumEntityStorageBeAllocatedID Oinkium.EntityStorage

# IDリストに追加
    data modify storage oinkium:entity_storage ID append value -1
    execute store result storage oinkium:entity_storage ID[-1] int 1 run scoreboard players get $OinkiumEntityStorageBeAllocatedID Oinkium.EntityStorage