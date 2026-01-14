#> oinkium:asset/object/0001.example_1/register
#
# レジストリ登録
#
# @within function oinkium:asset/object/_alias/1/register

# Extends? (int array)
    data modify storage oinkium:asset/object Extends append value 0
    function oinkium:asset/object/extends

# ID (int)
    data modify storage oinkium:asset/object ID set value 1

# IsFinal? (boolean)
    data modify storage oinkium:asset/object IsFinal set value false

# IsAbstract? (boolean)
    data modify storage oinkium:asset/object IsAbstract set value false

# Field? (any)
    data modify storage oinkium:asset/object Field.Value.1._ set value true