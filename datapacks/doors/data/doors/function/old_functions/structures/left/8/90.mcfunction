#90
execute if entity @s[scores={generating=6}] at @s align xyz positioned ^-7 ^-4 ^-1 run place template minecraft:left8
execute if entity @s[scores={generating=5}] at @s align xyz positioned ^-7 ^-4 ^-1 run forceload add ~ ~ ~23 ~21
execute if entity @s[tag=seekcrescendo1,scores={generating=12}] at @s align xyz positioned ^-7 ^-4 ^-1 as @e[type=marker,tag=seekeyemarker,dx=23,dy=9,dz=21,limit=4,sort=random] run function doors:summonseekeye
execute if entity @s[tag=seekcrescendo2,scores={generating=12}] at @s align xyz positioned ^-7 ^-4 ^-1 as @e[type=marker,tag=seekeyemarker,dx=23,dy=9,dz=21,limit=8,sort=random] run function doors:summonseekeye
execute if entity @s[tag=seekcrescendo3,scores={generating=12}] at @s align xyz positioned ^-7 ^-4 ^-1 as @e[type=marker,tag=seekeyemarker,dx=23,dy=9,dz=21,limit=16,sort=random] run function doors:summonseekeye
execute if entity @s[tag=destroy] at @s align xyz positioned ^-7 ^-4 ^-1 run kill @e[dx=23,dy=9,dz=21,tag=!door]