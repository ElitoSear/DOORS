#180
execute if entity @s[scores={generating=6}] at @s align xyz positioned ^-4 ^-3 ^-1 run place template minecraft:49door ~ ~ ~ clockwise_90
execute if entity @s[scores={generating=6}] at @s align xyz positioned ^11 ^-4 ^8 run place template minecraft:librarypart1 ~ ~ ~ clockwise_90
execute if entity @s[scores={generating=6}] at @s align xyz positioned ^59 ^-4 ^8 run place template minecraft:librarypart2 ~ ~ ~ clockwise_90
execute if entity @s[scores={generating=5}] at @s align xyz positioned ^105 ^-4 ^8 run forceload add ~ ~ ~110 ~47
execute if entity @s[tag=destroy] at @s align xyz positioned ^105 ^-4 ^8 run kill @e[dx=110,dy=13,dz=47,tag=!door]
execute if entity @s[tag=destroy] at @s align xyz positioned ^105 ^-4 ^8 run kill @e[dx=110,dy=13,dz=47,tag=door,scores={doornumber=50}]
execute if entity @s[tag=destroy] at @s align xyz positioned ^105 ^-4 ^8 run kill @e[dx=110,dy=13,dz=47,tag=door,scores={doornumber=51}]
execute if entity @s[tag=destroy] at @s align xyz positioned ^105 ^-4 ^8 run kill @e[dx=110,dy=13,dz=47,tag=door,scores={doornumber=52}]