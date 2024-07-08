#courtyard
execute if entity @s[y_rotation=90] run function doors:structures/courtyard/90
#180
execute if entity @s[y_rotation=180] run function doors:structures/courtyard/180
#-90
execute if entity @s[y_rotation=-90] run function doors:structures/courtyard/-90
#0
execute if entity @s[y_rotation=0] run function doors:structures/courtyard/0

#Not rotated variable needed
execute if entity @s[scores={generating=9}] at @s align xyz positioned ^-30 ^-4 ^-1 run fill ^ ^ ^ ^61 ^15 ^-64 lantern replace redstone_lamp
execute if entity @s[scores={generating=9}] at @s align xyz positioned ^-30 ^-4 ^-1 run fillbiome ^ ^ ^ ^61 ^15 ^-64 plains
execute at @s align xyz positioned ^ ^-2 ^-64 if score @s doornumber = max_score playercurrentdoor run tag @e[tag=rushorambush,dx=1.0,dz=1.0] add stop
execute if entity @s[tag=destroy] at @s align xyz positioned ^-30 ^-4 ^-1 run fill ^ ^ ^ ^61 ^15 ^-64 air
execute if entity @s[tag=destroy] run kill @s