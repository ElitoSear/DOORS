execute if block ~ ~ ~ minecraft:barrel run data remove block ~ ~ ~ LootTableSeed
execute unless block ~ ~ ~ #doors:barrel_search positioned ^ ^ ^0.5 run function doors:ray_cast/loot_table_removal