#0
execute if entity @s[scores={generating=6}] at @s align xyz positioned ^-12 ^-4 ^-1 run place template minecraft:infirmary ~ ~ ~ counterclockwise_90
execute if entity @s[scores={generating=5}] at @s align xyz positioned ^-12 ^-4 ^-31 run forceload add ~ ~ ~20 ~31
execute if entity @s[tag=destroy] at @s align xyz positioned ^-12 ^-4 ^-31 run kill @e[dx=20,dy=11,dz=31,tag=!door]