#-90
execute if entity @s[scores={generating=6}] at @s align xyz positioned ^-4 ^-3 ^-1 run place template minecraft:49door ~ ~ ~ 180
execute if entity @s[scores={generating=6}] at @s align xyz positioned ^11 ^-4 ^8 run place template minecraft:librarypart1 ~ ~ ~ 180
execute if entity @s[scores={generating=6}] at @s align xyz positioned ^59 ^-4 ^8 run place template minecraft:librarypart2 ~ ~ ~ 180
execute if entity @s[scores={generating=5}] at @s align xyz positioned ^105 ^-4 ^-38 run forceload add ~ ~ ~47 ~110
execute if entity @s[tag=destroy] at @s align xyz positioned ^105 ^-4 ^-38 run kill @e[dx=47,dy=13,dz=110,tag=!door]
execute if entity @s[tag=destroy] at @s align xyz positioned ^105 ^-4 ^-38 run kill @e[dx=47,dy=13,dz=110,tag=door,scores={doornumber=50}]
execute if entity @s[tag=destroy] at @s align xyz positioned ^105 ^-4 ^-38 run kill @e[dx=47,dy=13,dz=110,tag=door,scores={doornumber=51}]
execute if entity @s[tag=destroy] at @s align xyz positioned ^105 ^-4 ^-38 run kill @e[dx=47,dy=13,dz=110,tag=door,scores={doornumber=52}]