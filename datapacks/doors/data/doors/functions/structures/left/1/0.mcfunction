#0
execute if entity @s[scores={generating=6}] at @s align xyz positioned ^-6 ^-6 ^-1 run place template minecraft:left1 ~ ~ ~ counterclockwise_90
execute if entity @s[scores={generating=5}] at @s align xyz positioned ^-6 ^-6 ^-14 run forceload add ~ ~ ~14 ~14
execute if entity @s[tag=seekcrescendo1,scores={generating=12}] at @s align xyz positioned ^-6 ^-6 ^-14 as @e[type=marker,tag=seekeyemarker,dz=14,dy=11,dx=14,limit=4,sort=random] run function doors:summonseekeye
execute if entity @s[tag=seekcrescendo2,scores={generating=12}] at @s align xyz positioned ^-6 ^-6 ^-14 as @e[type=marker,tag=seekeyemarker,dz=14,dy=11,dx=14,limit=8,sort=random] run function doors:summonseekeye
execute if entity @s[tag=seekcrescendo3,scores={generating=12}] at @s align xyz positioned ^-6 ^-6 ^-14 as @e[type=marker,tag=seekeyemarker,dz=14,dy=11,dx=14,limit=16,sort=random] run function doors:summonseekeye
execute if entity @s[tag=destroy] at @s align xyz positioned ^-6 ^-6 ^-14 run kill @e[dx=14,dy=11,dz=14,tag=!door]