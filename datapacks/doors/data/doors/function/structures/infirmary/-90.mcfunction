#-90
execute if entity @s[scores={generating=6}] at @s align xyz positioned ^-12 ^-4 ^-1 run place template minecraft:infirmary ~ ~ ~ 180
execute if entity @s[scores={generating=5}] at @s align xyz positioned ^7 ^-4 ^-31 run forceload add ~ ~ ~31 ~20
execute if entity @s[tag=destroy] at @s align xyz positioned ^7 ^-4 ^-31 run kill @e[dx=31,dy=11,dz=20,tag=!door]