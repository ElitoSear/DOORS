#180
execute if entity @s[scores={generating=6}] at @s align xyz positioned ^-8 ^-17 ^-1 run place template minecraft:99-100 ~ ~ ~ clockwise_90
execute if entity @s[scores={generating=5}] at @s align xyz positioned ^39 ^-17 ^-1 run forceload add ~ ~ ~48 ~87
execute if entity @s[tag=destroy] at @s align xyz positioned ^39 ^-17 ^-1 run kill @e[dx=48,dy=46,dz=87,tag=!door]