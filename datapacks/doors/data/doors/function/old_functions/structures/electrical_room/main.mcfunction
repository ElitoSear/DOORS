#99-100
#90
execute if entity @s[y_rotation=90] run function doors:structures/electrical_room/90
#180
execute if entity @s[y_rotation=180] run function doors:structures/electrical_room/180
#-90
execute if entity @s[y_rotation=-90] run function doors:structures/electrical_room/-90
#0
execute if entity @s[y_rotation=0] run function doors:structures/electrical_room/0

#Not rotated variable needed
execute if entity @s[scores={generating=7}] run scoreboard players set @e[tag=electricalroomlight] electricallight 0
execute if entity @s[scores={generating=8}] run function doors:addelectricallightscoreboard
execute at @s align xyz positioned ^ ^-2 ^-22 if score @s doornumber = max_score playercurrentdoor run tag @e[tag=rushorambush,dx=1.0,dz=1.0] add stop
execute if entity @s[tag=destroy] at @s align xyz positioned ^-8 ^-17 ^-1 run fill ^ ^ ^ ^48 ^46 ^-87 air
execute if entity @s[tag=destroy] run kill @s