execute if entity @s[scores={generating=6}] at @s align xyz positioned ^-5 ^-3 ^-1 run place template minecraft:straight2 ~ ~ ~ clockwise_90
execute if entity @s[scores={generating=5}] at @s align xyz positioned ^5 ^-3 ^-1 run forceload add ~ ~ ~11 ~19
execute if entity @s[tag=seekcrescendo1,scores={generating=12}] at @s align xyz positioned ^5 ^-3 ^-1 as @e[type=marker,tag=seekeyemarker,dz=11,dy=8,dx=19,limit=4,sort=random] run function doors:summonseekeye
execute if entity @s[tag=seekcrescendo2,scores={generating=12}] at @s align xyz positioned ^5 ^-3 ^-1 as @e[type=marker,tag=seekeyemarker,dz=11,dy=8,dx=19,limit=8,sort=random] run function doors:summonseekeye
execute if entity @s[tag=seekcrescendo3,scores={generating=12}] at @s align xyz positioned ^5 ^-3 ^-1 as @e[type=marker,tag=seekeyemarker,dz=11,dy=8,dx=19,limit=16,sort=random] run function doors:summonseekeye
execute if entity @s[tag=destroy] at @s align xyz positioned ^5 ^-3 ^-1 run kill @e[dx=11,dy=8,dz=19,tag=!door]