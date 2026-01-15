#> oinkium:entity_storage/gc/_
#
# GC
#
# @within function oinkium:core/tick/interval/1m

#> Private
# @private
#declare score_holder $OinkiumEntityStorageCount

# 要素が入ってたらGC処理
    execute store result score $OinkiumEntityStorageCount Oinkium.EntityStorage run data get storage oinkium:entity_storage ID
    execute if score $OinkiumEntityStorageCount Oinkium.EntityStorage matches 2.. run function oinkium:entity_storage/gc/_mini