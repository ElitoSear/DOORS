#seekstraight1
#90
execute if entity @s[y_rotation=90] if entity @s[scores={generating=6}] at @s align xyz positioned ^-7 ^-3 ^-1 run place template minecraft:seekstraight1
execute if entity @s[y_rotation=90] if entity @s[scores={generating=5}] at @s align xyz positioned ^-7 ^-3 ^-1 run forceload add ~ ~ ~42 ~15
execute if entity @s[y_rotation=90] if entity @s[tag=destroy] at @s align xyz positioned ^-7 ^-3 ^-1 run kill @e[dx=42,dy=10,dz=15,tag=!door]
#180
execute if entity @s[y_rotation=180] if entity @s[scores={generating=6}] at @s align xyz positioned ^-7 ^-3 ^-1 run place template minecraft:seekstraight1 ~ ~ ~ clockwise_90
execute if entity @s[y_rotation=180] if entity @s[scores={generating=5}] at @s align xyz positioned ^7 ^-3 ^-1 run forceload add ~ ~ ~15 ~42
execute if entity @s[y_rotation=180] if entity @s[tag=destroy] at @s align xyz positioned ^7 ^-3 ^-1 run kill @e[dx=15,dy=10,dz=42,tag=!door]
#-90
execute if entity @s[y_rotation=-90] if entity @s[scores={generating=6}] at @s align xyz positioned ^-7 ^-3 ^-1 run place template minecraft:seekstraight1 ~ ~ ~ 180
execute if entity @s[y_rotation=-90] if entity @s[scores={generating=5}] at @s align xyz positioned ^7 ^-3 ^-42 run forceload add ~ ~ ~42 ~15
execute if entity @s[y_rotation=-90] if entity @s[tag=destroy] at @s align xyz positioned ^7 ^-3 ^-42 run kill @e[dx=42,dy=10,dz=15,tag=!door]
#0
execute if entity @s[y_rotation=0] if entity @s[scores={generating=6}] at @s align xyz positioned ^-7 ^-3 ^-1 run place template minecraft:seekstraight1 ~ ~ ~ counterclockwise_90
execute if entity @s[y_rotation=0] if entity @s[scores={generating=5}] at @s align xyz positioned ^-7 ^-3 ^-42 run forceload add ~ ~ ~15 ~42
execute if entity @s[y_rotation=0] if entity @s[tag=destroy] at @s align xyz positioned ^-7 ^-3 ^-42 run kill @e[dx=15,dy=10,dz=42,tag=!door]
#Not rotated variable needed
execute if entity @s[tag=flickon] at @s align xyz positioned ^-7 ^-3 ^-1 run fill ^ ^ ^ ^15 ^10 ^-42 light[level=0] replace minecraft:wall_torch[facing=north]
execute if entity @s[tag=flickon] at @s align xyz positioned ^-7 ^-3 ^-1 run fill ^ ^ ^ ^15 ^10 ^-42 light[level=1] replace minecraft:wall_torch[facing=east]
execute if entity @s[tag=flickon] at @s align xyz positioned ^-7 ^-3 ^-1 run fill ^ ^ ^ ^15 ^10 ^-42 light[level=2] replace minecraft:wall_torch[facing=south]
execute if entity @s[tag=flickon] at @s align xyz positioned ^-7 ^-3 ^-1 run fill ^ ^ ^ ^15 ^10 ^-42 light[level=3] replace minecraft:wall_torch[facing=west]
execute if entity @s[tag=flickoff] at @s align xyz positioned ^-7 ^-3 ^-1 run fill ^ ^ ^ ^15 ^10 ^-42 minecraft:wall_torch[facing=north] replace light[level=0]
execute if entity @s[tag=flickoff] at @s align xyz positioned ^-7 ^-3 ^-1 run fill ^ ^ ^ ^15 ^10 ^-42 minecraft:wall_torch[facing=east] replace light[level=1]
execute if entity @s[tag=flickoff] at @s align xyz positioned ^-7 ^-3 ^-1 run fill ^ ^ ^ ^15 ^10 ^-42 minecraft:wall_torch[facing=south] replace light[level=2]
execute if entity @s[tag=flickoff] at @s align xyz positioned ^-7 ^-3 ^-1 run fill ^ ^ ^ ^15 ^10 ^-42 minecraft:wall_torch[facing=west] replace light[level=3]
execute if entity @s[tag=destroy] at @s align xyz positioned ^-7 ^-3 ^-1 run fill ^ ^ ^ ^15 ^10 ^-42 air
execute if entity @s[tag=destroy] run kill @s