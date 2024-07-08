#straight1 - size 15,8,13
#90
execute if entity @s[y_rotation=90] run function doors:structures/straight/1/90
#180
execute if entity @s[y_rotation=180] run function doors:structures/straight/1/180
#-90
execute if entity @s[y_rotation=-90] run function doors:structures/straight/1/-90
#0
execute if entity @s[y_rotation=0] run function doors:structures/straight/1/0
#Not rotated variable needed
execute at @s align xyz positioned ^ ^-2 ^-15 if score @s doornumber = max_score playercurrentdoor run tag @e[tag=rushorambush,dx=1.0,dz=1.0] add stop
execute if entity @s[tag=flickon] at @s align xyz positioned ^-6 ^-3 ^-1 run fill ^ ^ ^ ^13 ^8 ^-15 light[level=0] replace minecraft:lantern[hanging=true]
execute if entity @s[tag=flickoff] at @s align xyz positioned ^-6 ^-3 ^-1 run fill ^ ^ ^ ^13 ^8 ^-15 minecraft:lantern[hanging=true] replace light[level=0]
execute if entity @s[tag=destroy] at @s align xyz positioned ^-6 ^-3 ^-1 run fill ^ ^ ^ ^13 ^8 ^-15 air
execute if entity @s[tag=destroy] run kill @s