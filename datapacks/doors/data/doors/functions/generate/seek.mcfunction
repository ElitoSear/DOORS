execute if entity @s[tag=seekstart] run scoreboard players set @s structurepick 70
execute if entity @s[tag=seekfinish] run scoreboard players set @s structurepick 71
execute if entity @s[tag=seekroom1] store result score @s structurepick run random value 72..77
execute if entity @s[tag=seekroom2] store result score @s structurepick run random value 78..81
execute if entity @s[tag=seekroom3] store result score @s structurepick run random value 72..77
execute if entity @s[tag=seekroom4] store result score @s return run function doors:generate/seek_turn
execute if entity @s[tag=seekroom4] if score @s return matches 1 store result score @s structurepick run random value 80..81
execute if entity @s[tag=seekroom4] if score @s return matches 2 store result score @s structurepick run random value 78..79