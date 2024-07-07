#180
execute if entity @s[scores={generating=6}] at @s align xyz positioned ^-16 ^-3 ^-1 run place template minecraft:straight12 ~ ~ ~ clockwise_90
execute if entity @s[scores={generating=5}] at @s align xyz positioned ^7 ^-3 ^-1 run forceload add ~ ~ ~24 ~18
execute if entity @s[tag=seekcrescendo1,scores={generating=12}] at @s align xyz positioned ^7 ^-3 ^-1 as @e[type=marker,tag=seekeyemarker,dz=24,dy=8,dx=18,limit=4,sort=random] run function doors:summonseekeye
execute if entity @s[tag=seekcrescendo2,scores={generating=12}] at @s align xyz positioned ^7 ^-3 ^-1 as @e[type=marker,tag=seekeyemarker,dz=24,dy=8,dx=18,limit=8,sort=random] run function doors:summonseekeye
execute if entity @s[tag=seekcrescendo3,scores={generating=12}] at @s align xyz positioned ^7 ^-3 ^-1 as @e[type=marker,tag=seekeyemarker,dz=24,dy=8,dx=18,limit=16,sort=random] run function doors:summonseekeye
execute if entity @s[tag=destroy] at @s align xyz positioned ^7 ^-3 ^-1 run kill @e[dx=24,dy=8,dz=18,tag=!door]