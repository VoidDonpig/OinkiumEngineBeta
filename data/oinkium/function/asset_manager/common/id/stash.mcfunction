#> oinkium:asset_manager/common/id/stash
#
# IDをStashする
#
# @within function oinkium:**

# 新しい空間を追加
    data modify storage oinkium:context IDStashStack append value {}

# IDをスタッシュ
    data modify storage oinkium:context IDStashStack[-1].Value set from storage oinkium:context ID

# IDを掃除
    data remove storage oinkium:context ID