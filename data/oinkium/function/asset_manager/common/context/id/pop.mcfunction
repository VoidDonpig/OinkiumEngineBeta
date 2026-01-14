#> oinkium:asset_manager/common/context/id/pop
#
# IDをPopする
#
# @within function oinkium:**

# 予めあるIDを削除
    data remove storage oinkium:asset/context ID

# IDを戻す
    data modify storage oinkium:asset/context ID set from storage oinkium:asset/context IDStashStack[-1].Value

# スタックされているIDを消す
    data remove storage oinkium:asset/context IDStashStack[-1]
