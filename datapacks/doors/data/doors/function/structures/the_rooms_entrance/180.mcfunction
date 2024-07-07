#180
execute if entity @s[scores={generating=6}] at @s align xyz positioned ^-7 ^-3 ^-1 run place template minecraft:60 ~ ~ ~ clockwise_90
execute if entity @s[scores={generating=5}] at @s align xyz positioned ^27 ^-3 ^-1 run forceload add ~ ~ ~35 ~18
execute if entity @s[tag=destroy] at @s align xyz positioned ^27 ^-3 ^-1 run kill @e[dx=35,dy=8,dz=18,tag=!door]