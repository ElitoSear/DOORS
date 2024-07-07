#roomsexit
execute if entity @s[scores={generating=6}] at @s align xyz positioned ~-21 ~-12 ~-11 run place template minecraft:roomsexit
execute if entity @s[scores={generating=5}] at @s align xyz positioned ~-21 ~-12 ~-11 run forceload add ~ ~ ~21 ~23
execute if entity @s[tag=destroy] at @s align xyz positioned ~-21 ~-12 ~-11 run kill @e[dx=21,dy=22,dz=23,tag=!roomsdoor]
execute at @s align xyz positioned ~-21 ~-2 ~ if score @s roomsdoornumber = max_score playercurrentroomsdoor run tag @e[tag=roomsentity,dx=1.0,dz=1.0] add stop
execute if entity @s[tag=destroy] at @s align xyz positioned ~-21 ~-12 ~-11 run fill ~ ~ ~ ~21 ~22 ~23 air
execute if entity @s[tag=destroy] run kill @s