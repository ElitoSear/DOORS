execute if entity @s[scores={generating=6}] at @s align xyz positioned ^-5 ^-3 ^-1 run place template minecraft:straight2 ~ ~ ~ 180
execute if entity @s[scores={generating=5}] at @s align xyz positioned ^5 ^-3 ^-19 run forceload add ~ ~ ~19 ~11
execute if entity @s[tag=seekcrescendo1,scores={generating=12}] at @s align xyz positioned ^5 ^-3 ^-19 as @e[type=marker,tag=seekeyemarker,dx=19,dy=8,dz=11,limit=4,sort=random] run function doors:summonseekeye
execute if entity @s[tag=seekcrescendo2,scores={generating=12}] at @s align xyz positioned ^5 ^-3 ^-19 as @e[type=marker,tag=seekeyemarker,dx=19,dy=8,dz=11,limit=8,sort=random] run function doors:summonseekeye
execute if entity @s[tag=seekcrescendo3,scores={generating=12}] at @s align xyz positioned ^5 ^-3 ^-19 as @e[type=marker,tag=seekeyemarker,dx=19,dy=8,dz=11,limit=16,sort=random] run function doors:summonseekeye
execute if entity @s[tag=destroy] at @s align xyz positioned ^5 ^-3 ^-19 run kill @e[dx=19,dy=8,dz=11,tag=!door]