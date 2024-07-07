#greenhouseright
#90
execute if entity @s[y_rotation=90] if entity @s[scores={generating=6}] at @s align xyz positioned ^-9 ^-3 ^-1 run place template minecraft:greenhouseright
execute if entity @s[y_rotation=90] if entity @s[scores={generating=5}] at @s align xyz positioned ^-9 ^-3 ^-1 run forceload add ~ ~ ~26 ~25
execute if entity @s[y_rotation=90] if entity @s[tag=destroy] at @s align xyz positioned ^-9 ^-3 ^-1 run kill @e[dx=26,dy=14,dz=25,tag=!door]
#180
execute if entity @s[y_rotation=180] if entity @s[scores={generating=6}] at @s align xyz positioned ^-9 ^-3 ^-1 run place template minecraft:greenhouseright ~ ~ ~ clockwise_90
execute if entity @s[y_rotation=180] if entity @s[scores={generating=5}] at @s align xyz positioned ^15 ^-3 ^-1 run forceload add ~ ~ ~25 ~26
execute if entity @s[y_rotation=180] if entity @s[tag=destroy] at @s align xyz positioned ^15 ^-3 ^-1 run kill @e[dx=25,dy=14,dz=26,tag=!door]
#-90
execute if entity @s[y_rotation=-90] if entity @s[scores={generating=6}] at @s align xyz positioned ^-9 ^-3 ^-1 run place template minecraft:greenhouseright ~ ~ ~ 180
execute if entity @s[y_rotation=-90] if entity @s[scores={generating=5}] at @s align xyz positioned ^15 ^-3 ^-26 run forceload add ~ ~ ~26 ~25
execute if entity @s[y_rotation=-90] if entity @s[tag=destroy] at @s align xyz positioned ^15 ^-3 ^-26 run kill @e[dx=26,dy=14,dz=25,tag=!door]
#0
execute if entity @s[y_rotation=0] if entity @s[scores={generating=6}] at @s align xyz positioned ^-9 ^-3 ^-1 run place template minecraft:greenhouseright ~ ~ ~ counterclockwise_90
execute if entity @s[y_rotation=0] if entity @s[scores={generating=5}] at @s align xyz positioned ^-9 ^-3 ^-26 run forceload add ~ ~ ~25 ~26
execute if entity @s[y_rotation=0] if entity @s[tag=destroy] at @s align xyz positioned ^-9 ^-3 ^-26 run kill @e[dx=25,dy=14,dz=26,tag=!door]
#Not rotated variable needed
execute at @s align xyz positioned ^15 ^-2 ^-17 if score @s doornumber = max_score playercurrentdoor run tag @e[tag=rushorambush,dx=1.0,dz=1.0] add stop
execute if entity @s[tag=destroy] at @s align xyz positioned ^-9 ^-3 ^-1 run fill ^ ^ ^ ^25 ^14 ^-26 air
execute if entity @s[tag=destroy] run kill @s
#Rain
execute if entity @s[scores={generating=10}] at @s align xyz positioned ^-9 ^-3 ^-1 run fillbiome ^ ^ ^ ^25 ^14 ^-26 doors:greenhouse