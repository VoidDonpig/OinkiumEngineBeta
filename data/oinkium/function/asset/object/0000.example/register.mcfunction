#> oinkium:asset/object/0000.example/register
#
# レジストリ登録
#
# @within function oinkium:asset/object/_alias/0/register

# ID (int)
    data modify storage oinkium:asset/object ID set value 0

# IsFinal? (boolean)
    data modify storage oinkium:asset/object IsFinal set value false

# IsAbstract? (boolean)
    data modify storage oinkium:asset/object IsAbstract set value false

# Field? (any)
    data modify storage oinkium:asset/object Field.Value.0._ set value true