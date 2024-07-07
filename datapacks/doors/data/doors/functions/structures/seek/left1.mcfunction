#seekleft1
#90
execute if entity @s[y_rotation=90] if entity @s[scores={generating=6}] at @s align xyz positioned ^-10 ^-3 ^-1 run place template minecraft:seekleft1
execute if entity @s[y_rotation=90] if entity @s[scores={generating=5}] at @s align xyz positioned ^-10 ^-3 ^-1 run forceload add ~ ~ ~24 ~23
execute if entity @s[y_rotation=90] if entity @s[tag=destroy] at @s align xyz positioned ^-10 ^-3 ^-1 run kill @e[dx=24,dy=11,dz=23,tag=!door]
#180
execute if entity @s[y_rotation=180] if entity @s[scores={generating=6}] at @s align xyz positioned ^-10 ^-3 ^-1 run place template minecraft:seekleft1 ~ ~ ~ clockwise_90
execute if entity @s[y_rotation=180] if entity @s[scores={generating=5}] at @s align xyz positioned ^12 ^-3 ^-1 run forceload add ~ ~ ~23 ~24
execute if entity @s[y_rotation=180] if entity @s[tag=destroy] at @s align xyz positioned ^12 ^-3 ^-1 run kill @e[dx=23,dy=11,dz=24,tag=!door]
#-90
execute if entity @s[y_rotation=-90] if entity @s[scores={generating=6}] at @s align xyz positioned ^-10 ^-3 ^-1 run place template minecraft:seekleft1 ~ ~ ~ 180
execute if entity @s[y_rotation=-90] if entity @s[scores={generating=5}] at @s align xyz positioned ^12 ^-3 ^-24 run forceload add ~ ~ ~24 ~23
execute if entity @s[y_rotation=-90] if entity @s[tag=destroy] at @s align xyz positioned ^12 ^-3 ^-24 run kill @e[dx=24,dy=11,dz=23,tag=!door]
#0
execute if entity @s[y_rotation=0] if entity @s[scores={generating=6}] at @s align xyz positioned ^-10 ^-3 ^-1 run place template minecraft:seekleft1 ~ ~ ~ counterclockwise_90
execute if entity @s[y_rotation=0] if entity @s[scores={generating=5}] at @s align xyz positioned ^-10 ^-3 ^-24 run forceload add ~ ~ ~23 ~24
execute if entity @s[y_rotation=0] if entity @s[tag=destroy] at @s align xyz positioned ^-10 ^-3 ^-24 run kill @e[dx=23,dy=11,dz=24,tag=!door]
#Not rotated variable needed
execute if entity @s[tag=flickon] at @s align xyz positioned ^-10 ^-3 ^-1 run fill ^ ^ ^ ^23 ^11 ^-24 light[level=0] replace minecraft:wall_torch[facing=north]
execute if entity @s[tag=flickon] at @s align xyz positioned ^-10 ^-3 ^-1 run fill ^ ^ ^ ^23 ^11 ^-24 light[level=1] replace minecraft:wall_torch[facing=east]
execute if entity @s[tag=flickon] at @s align xyz positioned ^-10 ^-3 ^-1 run fill ^ ^ ^ ^23 ^11 ^-24 light[level=2] replace minecraft:wall_torch[facing=south]
execute if entity @s[tag=flickon] at @s align xyz positioned ^-10 ^-3 ^-1 run fill ^ ^ ^ ^23 ^11 ^-24 light[level=3] replace minecraft:wall_torch[facing=west]
execute if entity @s[tag=flickoff] at @s align xyz positioned ^-10 ^-3 ^-1 run fill ^ ^ ^ ^23 ^11 ^-24 minecraft:wall_torch[facing=north] replace light[level=0]
execute if entity @s[tag=flickoff] at @s align xyz positioned ^-10 ^-3 ^-1 run fill ^ ^ ^ ^23 ^11 ^-24 minecraft:wall_torch[facing=east] replace light[level=1]
execute if entity @s[tag=flickoff] at @s align xyz positioned ^-10 ^-3 ^-1 run fill ^ ^ ^ ^23 ^11 ^-24 minecraft:wall_torch[facing=south] replace light[level=2]
execute if entity @s[tag=flickoff] at @s align xyz positioned ^-10 ^-3 ^-1 run fill ^ ^ ^ ^23 ^11 ^-24 minecraft:wall_torch[facing=west] replace light[level=3]
execute if entity @s[tag=destroy] at @s align xyz positioned ^-10 ^-3 ^-1 run fill ^ ^ ^ ^23 ^11 ^-24 air
execute if entity @s[tag=destroy] run kill @s