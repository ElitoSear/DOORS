#straight15
#90
execute if entity @s[y_rotation=90] run function doors:structures/straight/15/90
#180
execute if entity @s[y_rotation=180] run function doors:structures/straight/15/180
#-90
execute if entity @s[y_rotation=-90] run function doors:structures/straight/15/-90
#0
execute if entity @s[y_rotation=0] run function doors:structures/straight/15/0

#Not rotated variable needed
execute at @s align xyz positioned ^13 ^-2 ^-21 if score @s doornumber = max_score playercurrentdoor run tag @e[tag=rushorambush,dx=1.0,dz=1.0] add stop
execute if entity @s[tag=flickon] at @s align xyz positioned ^-6 ^-3 ^-1 run fill ^ ^ ^ ^23 ^8 ^-21 light[level=0] replace minecraft:wall_torch[facing=north]
execute if entity @s[tag=flickon] at @s align xyz positioned ^-6 ^-3 ^-1 run fill ^ ^ ^ ^23 ^8 ^-21 light[level=1] replace minecraft:wall_torch[facing=east]
execute if entity @s[tag=flickon] at @s align xyz positioned ^-6 ^-3 ^-1 run fill ^ ^ ^ ^23 ^8 ^-21 light[level=2] replace minecraft:wall_torch[facing=south]
execute if entity @s[tag=flickon] at @s align xyz positioned ^-6 ^-3 ^-1 run fill ^ ^ ^ ^23 ^8 ^-21 light[level=3] replace minecraft:wall_torch[facing=west]
execute if entity @s[tag=flickoff] at @s align xyz positioned ^-6 ^-3 ^-1 run fill ^ ^ ^ ^23 ^8 ^-21 minecraft:wall_torch[facing=north] replace light[level=0]
execute if entity @s[tag=flickoff] at @s align xyz positioned ^-6 ^-3 ^-1 run fill ^ ^ ^ ^23 ^8 ^-21 minecraft:wall_torch[facing=east] replace light[level=1]
execute if entity @s[tag=flickoff] at @s align xyz positioned ^-6 ^-3 ^-1 run fill ^ ^ ^ ^23 ^8 ^-21 minecraft:wall_torch[facing=south] replace light[level=2]
execute if entity @s[tag=flickoff] at @s align xyz positioned ^-6 ^-3 ^-1 run fill ^ ^ ^ ^23 ^8 ^-21 minecraft:wall_torch[facing=west] replace light[level=3]
execute if entity @s[tag=destroy] at @s align xyz positioned ^-6 ^-3 ^-1 run fill ^ ^ ^ ^23 ^8 ^-21 air
execute if entity @s[tag=destroy] run kill @s
#Rain
execute if entity @s[scores={generating=10}] at @s align xyz positioned ^-6 ^-3 ^-1 run fillbiome ^ ^ ^ ^23 ^8 ^-21 plains
