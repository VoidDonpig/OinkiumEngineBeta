#> oinkium:entity_storage/please
#
# エンティティとして実行された時、専用のストレージを割り当てる
#
# @input as entity
#
# @api

# Validation
    execute unless entity @s run return run tellraw @a[tag=Oinkium.IsAdmin] [{storage:"oinkium:global",nbt:"Prefix.Error"},{text:"oinkium:entity_storage/please が非エンティティに対して実行されています"}]

# IDが割り当てされてなければ与える
    execute unless score @s Oinkium.EntityStorageID matches 1.. run function oinkium:entity_storage/allocate_id

# 前回要求されたIDでなければデータシフト
    execute unless score @s Oinkium.EntityStorageID = $OinkiumEntityStorageLastID Oinkium.EntityStorage run function oinkium:entity_storage/shift_data