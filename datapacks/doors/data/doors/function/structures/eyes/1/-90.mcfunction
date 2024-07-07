#-90
execute if entity @s[scores={generating=6}] at @s align xyz positioned ^-7 ^-3 ^-1 run place template minecraft:eyes1 ~ ~ ~ 180
execute if entity @s[scores={generating=5}] at @s align xyz positioned ^7 ^-3 ^-16 run forceload add ~ ~ ~16 ~15
execute if entity @s[tag=seekcrescendo1,scores={generating=12}] at @s align xyz positioned ^7 ^-3 ^-16 as @e[type=marker,tag=seekeyemarker,dx=16,dy=8,dz=15,limit=4,sort=random] run function doors:summonseekeye
execute if entity @s[tag=seekcrescendo2,scores={generating=12}] at @s align xyz positioned ^7 ^-3 ^-16 as @e[type=marker,tag=seekeyemarker,dx=16,dy=8,dz=15,limit=8,sort=random] run function doors:summonseekeye
execute if entity @s[tag=seekcrescendo3,scores={generating=12}] at @s align xyz positioned ^7 ^-3 ^-16 as @e[type=marker,tag=seekeyemarker,dx=16,dy=8,dz=15,limit=16,sort=random] run function doors:summonseekeye
execute if entity @s[tag=destroy] at @s align xyz positioned ^7 ^-3 ^-16 run kill @e[dx=16,dy=8,dz=15,tag=!door]