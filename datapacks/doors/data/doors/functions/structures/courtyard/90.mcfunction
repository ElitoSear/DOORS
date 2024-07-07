#90
execute if entity @s[scores={generating=6}] at @s align xyz positioned ^-30 ^-4 ^-1 run place template minecraft:courtyard
execute if entity @s[scores={generating=5}] at @s align xyz positioned ^-30 ^-4 ^-1 run forceload add ~ ~ ~64 ~61
execute if entity @s[tag=destroy] at @s align xyz positioned ^-30 ^-4 ^-1 run kill @e[dx=64,dy=15,dz=61,tag=!door]