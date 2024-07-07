#greenhousestraight1
#90
execute if entity @s[y_rotation=90] if entity @s[scores={generating=6}] at @s align xyz positioned ^-9 ^-3 ^-1 run place template minecraft:greenhousestraight1
execute if entity @s[y_rotation=90] if entity @s[scores={generating=5}] at @s align xyz positioned ^-9 ^-3 ^-1 run forceload add ~ ~ ~18 ~19
execute if entity @s[y_rotation=90] if entity @s[tag=destroy] at @s align xyz positioned ^-9 ^-3 ^-1 run kill @e[dx=18,dy=14,dz=19,tag=!door]
#180
execute if entity @s[y_rotation=180] if entity @s[scores={generating=6}] at @s align xyz positioned ^-9 ^-3 ^-1 run place template minecraft:greenhousestraight1 ~ ~ ~ clockwise_90
execute if entity @s[y_rotation=180] if entity @s[scores={generating=5}] at @s align xyz positioned ^9 ^-3 ^-1 run forceload add ~ ~ ~19 ~18
execute if entity @s[y_rotation=180] if entity @s[tag=destroy] at @s align xyz positioned ^9 ^-3 ^-1 run kill @e[dx=19,dy=14,dz=18,tag=!door]
#-90
execute if entity @s[y_rotation=-90] if entity @s[scores={generating=6}] at @s align xyz positioned ^-9 ^-3 ^-1 run place template minecraft:greenhousestraight1 ~ ~ ~ 180
execute if entity @s[y_rotation=-90] if entity @s[scores={generating=5}] at @s align xyz positioned ^9 ^-3 ^-18 run forceload add ~ ~ ~18 ~19
execute if entity @s[y_rotation=-90] if entity @s[tag=destroy] at @s align xyz positioned ^9 ^-3 ^-18 run kill @e[dx=18,dy=14,dz=19,tag=!door]
#0
execute if entity @s[y_rotation=0] if entity @s[scores={generating=6}] at @s align xyz positioned ^-9 ^-3 ^-1 run place template minecraft:greenhousestraight1 ~ ~ ~ counterclockwise_90
execute if entity @s[y_rotation=0] if entity @s[scores={generating=5}] at @s align xyz positioned ^-9 ^-3 ^-18 run forceload add ~ ~ ~19 ~18
execute if entity @s[y_rotation=0] if entity @s[tag=destroy] at @s align xyz positioned ^-9 ^-3 ^-18 run kill @e[dx=19,dy=14,dz=18,tag=!door]
#Not rotated variable needed
execute at @s align xyz positioned ^ ^-2 ^-18 if score @s doornumber = max_score playercurrentdoor run tag @e[tag=rushorambush,dx=1.0,dz=1.0] add stop
execute if entity @s[tag=destroy] at @s align xyz positioned ^-9 ^-3 ^-1 run fill ^ ^ ^ ^19 ^14 ^-18 air
execute if entity @s[tag=destroy] run kill @s
#Rain
execute if entity @s[scores={generating=10}] at @s align xyz positioned ^-9 ^-3 ^-1 run fillbiome ^ ^ ^ ^19 ^14 ^-18 doors:greenhouse