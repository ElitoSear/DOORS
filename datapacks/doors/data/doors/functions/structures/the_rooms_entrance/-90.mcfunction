#-90
execute if entity @s[scores={generating=6}] at @s align xyz positioned ^-7 ^-3 ^-1 run place template minecraft:60 ~ ~ ~ 180
execute if entity @s[scores={generating=5}] at @s align xyz positioned ^27 ^-3 ^-18 run forceload add ~ ~ ~18 ~35
execute if entity @s[tag=destroy] at @s align xyz positioned ^27 ^-3 ^-18 run kill @e[dx=18,dy=8,dz=35,tag=!door]