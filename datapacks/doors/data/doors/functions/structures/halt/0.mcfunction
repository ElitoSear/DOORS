#0
execute if entity @s[scores={generating=6}] at @s align xyz positioned ^-6 ^-3 ^-1 run place template minecraft:halt ~ ~ ~ counterclockwise_90
execute if entity @s[scores={generating=5}] at @s align xyz positioned ^-6 ^-3 ^-90 run forceload add ~ ~ ~13 ~90
execute if entity @s[tag=destroy] at @s align xyz positioned ^-6 ^-3 ^-90 run kill @e[dx=13,dy=8,dz=90,tag=!door]