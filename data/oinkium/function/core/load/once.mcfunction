#> oinkium:core/load/once
#
# 初回ロード処理
#
# @within function oinkium:core/load/_

# 汎用スコア
    scoreboard objectives add Oinkium.Constant dummy
    scoreboard objectives add Oinkium.Global dummy
    scoreboard objectives add Oinkium.Temporary dummy

# 定数設定
    function oinkium:core/load/declare_constant

# Prefix
    data modify storage oinkium:global Prefix.Error set value "§r§c[Oinkium] ERROR>>§r "

# エンティティストレージ用初期化処理
    execute unless data storage oinkium:entity_storage _ run function oinkium:entity_storage/init

# ROM用初期化処理
    execute unless data storage oinkium:rom _ run function oinkium:rom/init

# ビルトインレジストリ登録
    function oinkium:core/registries/built_in

# ロード済みフラグ
    #data modify storage oinkium:core IsFirstLoaded set value true