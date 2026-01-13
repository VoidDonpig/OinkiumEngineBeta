#> oinkium:core/registries/register.m
#
# 再帰的にレジストリ登録処理を呼び出す
#
# @within function
#   oinkium:core/registries/built_in
#   oinkium:core/registries/register.m

# Validation
    $execute store success storage oinkium:core Implement byte 1 run schedule function $(Path) 2147483647t
    $execute unless data storage oinkium:core {Implement:true} run tellraw @a[tag=Oinkium.IsAdmin] [{storage:"oinkium:global",nbt:"Prefix.Error"},{text:"$(Path) が読み込めませんでした"}]
    $schedule clear $(Path)
    data remove storage oinkium:core Implement

# 関数呼び出し
    $function $(Path)

# 末尾削除
    data remove storage oinkium:core BuildInRegistries[-1]

# 要素が無くなるまで再帰
    execute if data storage oinkium:core BuildInRegistries[0].Path run data modify storage oinkium:core TargetBuildInRegistry set from storage oinkium:core BuildInRegistries[-1]
    execute if data storage oinkium:core BuildInRegistries[0].Path run function oinkium:core/registries/register.m with storage oinkium:core TargetBuildInRegistry