#> oinkium:asset_manager/common/context/id/stash
#
# IDをStashする
#
# @within function oinkium:**

# 新しい空間を追加
    data modify storage oinkium:asset/context IDStashStack append value {}

# IDをスタッシュ
    data modify storage oinkium:asset/context IDStashStack[-1].Value set from storage oinkium:asset/context ID

# IDを掃除
    data remove storage oinkium:asset/context ID