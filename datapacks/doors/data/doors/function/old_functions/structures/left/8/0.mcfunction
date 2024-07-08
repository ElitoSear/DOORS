#0
execute if entity @s[scores={generating=6}] at @s align xyz positioned ^-7 ^-4 ^-1 run place template minecraft:left8 ~ ~ ~ counterclockwise_90
execute if entity @s[scores={generating=5}] at @s align xyz positioned ^-7 ^-4 ^-23 run forceload add ~ ~ ~21 ~23
execute if entity @s[tag=seekcrescendo1,scores={generating=12}] at @s align xyz positioned ^-7 ^-4 ^-23 as @e[type=marker,tag=seekeyemarker,dz=21,dy=9,dx=23,limit=4,sort=random] run function doors:summonseekeye
execute if entity @s[tag=seekcrescendo2,scores={generating=12}] at @s align xyz positioned ^-7 ^-4 ^-23 as @e[type=marker,tag=seekeyemarker,dz=21,dy=9,dx=23,limit=8,sort=random] run function doors:summonseekeye
execute if entity @s[tag=seekcrescendo3,scores={generating=12}] at @s align xyz positioned ^-7 ^-4 ^-23 as @e[type=marker,tag=seekeyemarker,dz=21,dy=9,dx=23,limit=16,sort=random] run function doors:summonseekeye
execute if entity @s[tag=destroy] at @s align xyz positioned ^-7 ^-4 ^-23 run kill @e[dx=21,dy=9,dz=23,tag=!door]