execute unless entity @s[tag=closed] at @s positioned ~ ~0.5 ~ unless block ~ ~-2 ~ minecraft:redstone_torch as @a[distance=..2] store result score @s drawerrandomizer run random value 1..200
execute unless entity @s[tag=closed] at @s positioned ~ ~0.5 ~ unless block ~ ~-2 ~ minecraft:redstone_torch as @a[distance=..2] store result score @s drawerrandomizer run random value 1..200

execute unless entity @s[tag=closed] at @s positioned ~ ~0.5 ~ unless block ~ ~-2 ~ minecraft:redstone_torch if entity @a[distance=..2,gamemode=adventure,scores={drawerrandomizer=10},tag=!atrooms] run scoreboard players add @s jack 1
execute unless entity @s[tag=closed] at @s positioned ~ ~0.5 ~ unless block ~ ~-2 ~ minecraft:redstone_torch if entity @a[distance=..2,gamemode=adventure,scores={drawerrandomizer=20},tag=!atrooms] run scoreboard players add @s shadow 1
execute unless entity @s[tag=closed] at @s positioned ~ ~0.5 ~ if entity @a[distance=..2,gamemode=adventure] run setblock ~ ~-2 ~ minecraft:redstone_torch
execute unless entity @s[tag=closed] at @s positioned ~ ~0.5 ~ if entity @e[distance=..2,tag=rush] run setblock ~ ~-2 ~ minecraft:redstone_torch
execute if entity @s[tag=closed] at @s run setblock ~ ~-2 ~ minecraft:air