#90
execute if entity @s[scores={generating=6}] at @s align xyz positioned ^-6 ^-3 ^-1 run place template minecraft:halt
execute if entity @s[scores={generating=5}] at @s align xyz positioned ^-6 ^-3 ^-1 run forceload add ~ ~ ~90 ~13
execute if entity @s[tag=destroy] at @s align xyz positioned ^-6 ^-3 ^-1 run kill @e[dx=90,dy=8,dz=13,tag=!door]