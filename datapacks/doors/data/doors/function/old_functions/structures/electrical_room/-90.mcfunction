#-90
execute if entity @s[scores={generating=6}] at @s align xyz positioned ^-8 ^-17 ^-1 run place template minecraft:99-100 ~ ~ ~ 180
execute if entity @s[scores={generating=5}] at @s align xyz positioned ^39 ^-17 ^-87 run forceload add ~ ~ ~87 ~48
execute if entity @s[tag=destroy] at @s align xyz positioned ^39 ^-17 ^-87 run kill @e[dx=87,dy=46,dz=48,tag=!door]