#> oinkium:asset_manager/common/id/pop
#
# IDをPopする
#
# @within function oinkium:**

# 予めあるIDを削除
    data remove storage oinkium:context ID

# IDを戻す
    data modify storage oinkium:context ID set from storage oinkium:context IDStashStack[-1].Value

# スタックされているIDを消す
    data remove storage oinkium:context IDStashStack[-1]
