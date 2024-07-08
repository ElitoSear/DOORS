#49door
#90
execute if entity @s[y_rotation=90] run function doors:structures/library/90
#180
execute if entity @s[y_rotation=180] run function doors:structures/library/180
#-90
execute if entity @s[y_rotation=-90] run function doors:structures/library/-90
#0
execute if entity @s[y_rotation=0] run function doors:structures/library/0

#Not rotated variable needed
execute at @s align xyz positioned ^ ^-2 ^1 if score @s doornumber = max_score playercurrentdoor run tag @e[tag=rushorambush,dx=1.0,dz=1.0] add stop
execute if entity @s[tag=destroy] at @s align xyz positioned ^-4 ^-4 ^8 run fill ^ ^ ^ ^110 ^13 ^-47 air
execute if entity @s[tag=destroy] run kill @s