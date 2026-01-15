#> oinkium:entity_storage/gc/_mini
#
# Mini GC
#
# @within function
#   oinkium:entity_storage/allocate_id
#   oinkium:entity_storage/gc/_
#   oinkium:entity_storage/gc/_mini

#> Max
# @private
#declare score_holder $OinkiumEntityStorageMax

#> Private
# @private
#declare score_holder $OinkiumEntityStorageBase
#declare score_holder $OinkiumEntityStorageTarget

# ID配列を1つ巡回
    data modify storage oinkium:entity_storage ID append from storage oinkium:entity_storage ID[0]
    data remove storage oinkium:entity_storage ID[0]

# ID[0]以下の最大値IDを取得
    execute store result score $OinkiumEntityStorageBase Oinkium.EntityStorage run data get storage oinkium:entity_storage ID[0]
    scoreboard players remove $OinkiumEntityStorageBase Oinkium.EntityStorage 2147483647
    scoreboard players set $OinkiumEntityStorageMax Oinkium.EntityStorage 0
    scoreboard players operation * Oinkium.EntityStorageID -= $OinkiumEntityStorageBase Oinkium.EntityStorage
    scoreboard players operation $OinkiumEntityStorageMax Oinkium.EntityStorage > * Oinkium.EntityStorageID
    scoreboard players operation * Oinkium.EntityStorageID += $OinkiumEntityStorageBase Oinkium.EntityStorage

# ID[0] > Max の場合範囲外の為削除
    execute store result score $OinkiumEntityStorageTarget Oinkium.EntityStorage run data get storage oinkium:entity_storage ID[0]
    execute if score $OinkiumEntityStorageTarget Oinkium.EntityStorage > $OinkiumEntityStorageMax Oinkium.EntityStorage run function oinkium:entity_storage/gc/free

# 3x - 2prev - next + 1 >= 0 なら更に最適化
# 中央値式も試したけど結局これが一番でした
# 赤石愛氏に軽い恐怖を感じている https://github.com/Ai-Akaishi/OhMyDat/blob/master/data/oh_my_dat/function/sys/gc.mcfunction#L25
    execute store result score $OinkiumEntityStoragePrevious Oinkium.EntityStorage run data get storage oinkium:entity_storage ID[-1]
    execute if score $OinkiumEntityStoragePrevious Oinkium.EntityStorage matches 0 run scoreboard players add $OinkiumEntityStoragePrevious Oinkium.EntityStorage 65536
    execute store result score $OinkiumEntityStorageX Oinkium.EntityStorage run data get storage oinkium:entity_storage ID[0]
    execute if score $OinkiumEntityStorageX Oinkium.EntityStorage matches 0 run scoreboard players add $OinkiumEntityStorageX Oinkium.EntityStorage 65536
    scoreboard players operation $OinkiumEntityStoragePrevious Oinkium.EntityStorage += $OinkiumEntityStoragePrevious Oinkium.EntityStorage
    scoreboard players operation $OinkiumEntityStoragePrevious Oinkium.EntityStorage -= $OinkiumEntityStorageX Oinkium.EntityStorage
    scoreboard players operation $OinkiumEntityStoragePrevious Oinkium.EntityStorage -= $OinkiumEntityStorageX Oinkium.EntityStorage
    scoreboard players operation $OinkiumEntityStorageX Oinkium.EntityStorage -= $OinkiumEntityStoragePrevious Oinkium.EntityStorage
    execute store result score $OinkiumEntityStorageNext Oinkium.EntityStorage run data get storage oinkium:entity_storage ID[1]
    scoreboard players operation $OinkiumEntityStorageX Oinkium.EntityStorage -= $OinkiumEntityStorageNext Oinkium.EntityStorage
    execute if score $OinkiumEntityStorageX Oinkium.EntityStorage matches -1.. run function oinkium:entity_storage/gc/_mini

###############################################################################
# MIT License

# Copyright (c) 2020 AiAkaishi

# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:

# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.

# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.
###############################################################################