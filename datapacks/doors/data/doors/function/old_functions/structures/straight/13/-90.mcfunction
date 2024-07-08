#-90
execute if entity @s[scores={generating=6}] at @s align xyz positioned ^-7 ^-5 ^-1 run place template minecraft:straight13 ~ ~ ~ 180
execute if entity @s[scores={generating=5}] at @s align xyz positioned ^18 ^-5 ^-22 run forceload add ~ ~ ~22 ~26
execute if entity @s[tag=seekcrescendo1,scores={generating=12}] at @s align xyz positioned ^18 ^-5 ^-22 as @e[type=marker,tag=seekeyemarker,dx=22,dy=13,dz=26,limit=4,sort=random] run function doors:summonseekeye
execute if entity @s[tag=seekcrescendo2,scores={generating=12}] at @s align xyz positioned ^18 ^-5 ^-22 as @e[type=marker,tag=seekeyemarker,dx=22,dy=13,dz=26,limit=8,sort=random] run function doors:summonseekeye
execute if entity @s[tag=seekcrescendo3,scores={generating=12}] at @s align xyz positioned ^18 ^-5 ^-22 as @e[type=marker,tag=seekeyemarker,dx=22,dy=13,dz=26,limit=16,sort=random] run function doors:summonseekeye
execute if entity @s[tag=destroy] at @s align xyz positioned ^18 ^-5 ^-22 run kill @e[dx=22,dy=13,dz=26,tag=!door]
execute if entity @s[scores={generating=8}] at @s if score boolean keyishidden matches 1 align xyz positioned ^18 ^-5 ^-22 run execute as @e[dx=22,dy=13,dz=26,tag=possiblehiddenkey,limit=1,sort=random] run tag @s add ishiddenkey
execute if score @s generating matches 11 if score boolean keyishidden matches 1 at @s align xyz positioned ^18 ^-5 ^-22 as @e[tag=dupedoor,dx=22,dy=13,dz=26] at @s unless block ~ ~-1 ~ spruce_wall_sign positioned ^0.54 ^-1 ^0.03 run function doors:lock/summon/rotation