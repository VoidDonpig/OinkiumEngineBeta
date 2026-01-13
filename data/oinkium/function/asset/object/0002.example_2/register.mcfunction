#> oinkium:asset/object/0002.example_2/register
#
# レジストリ登録
#
# @within function oinkium:asset/object/_alias/2/register

# ID (int)
    data modify storage oinkium:asset/object ID set value 2

# IsFinal? (boolean)
    data modify storage oinkium:asset/object IsFinal set value false

# IsAbstract? (boolean)
    data modify storage oinkium:asset/object IsAbstract set value false

# Extends? (Int Array)
    data modify storage oinkium:asset/object Extends append value 1