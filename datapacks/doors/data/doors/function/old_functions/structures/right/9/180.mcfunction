#180
execute if entity @s[scores={generating=6}] at @s align xyz positioned ^-7 ^-6 ^-1 run place template minecraft:right9 ~ ~ ~ clockwise_90
execute if entity @s[scores={generating=5}] at @s align xyz positioned ^8 ^-6 ^-1 run forceload add ~ ~ ~15 ~14
execute if entity @s[tag=seekcrescendo1,scores={generating=12}] at @s align xyz positioned ^8 ^-6 ^-1 as @e[type=marker,tag=seekeyemarker,dz=15,dy=11,dx=14,limit=4,sort=random] run function doors:summonseekeye
execute if entity @s[tag=seekcrescendo2,scores={generating=12}] at @s align xyz positioned ^8 ^-6 ^-1 as @e[type=marker,tag=seekeyemarker,dz=15,dy=11,dx=14,limit=8,sort=random] run function doors:summonseekeye
execute if entity @s[tag=seekcrescendo3,scores={generating=12}] at @s align xyz positioned ^8 ^-6 ^-1 as @e[type=marker,tag=seekeyemarker,dz=15,dy=11,dx=14,limit=16,sort=random] run function doors:summonseekeye
execute if entity @s[tag=destroy] at @s align xyz positioned ^8 ^-6 ^-1 run kill @e[dx=15,dy=11,dz=14,tag=!door]