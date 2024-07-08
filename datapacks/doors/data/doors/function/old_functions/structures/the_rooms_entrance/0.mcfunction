
#0
execute if entity @s[scores={generating=6}] at @s align xyz positioned ^-7 ^-3 ^-1 run place template minecraft:60 ~ ~ ~ counterclockwise_90
execute if entity @s[scores={generating=5}] at @s align xyz positioned ^-7 ^-3 ^-18 run forceload add ~ ~ ~35 ~18
execute if entity @s[tag=destroy] at @s align xyz positioned ^-7 ^-3 ^-18 run kill @e[dx=35,dy=8,dz=18,tag=!door]