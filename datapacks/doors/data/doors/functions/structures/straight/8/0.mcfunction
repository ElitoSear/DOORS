#0
execute if entity @s[scores={generating=6}] at @s align xyz positioned ^-7 ^-3 ^-1 run place template minecraft:straight8 ~ ~ ~ counterclockwise_90
execute if entity @s[scores={generating=5}] at @s align xyz positioned ^-7 ^-3 ^-15 run forceload add ~ ~ ~21 ~15
execute if entity @s[tag=seekcrescendo1,scores={generating=12}] at @s align xyz positioned ^-7 ^-3 ^-15 as @e[type=marker,tag=seekeyemarker,dz=21,dy=8,dx=15,limit=4,sort=random] run function doors:summonseekeye
execute if entity @s[tag=seekcrescendo2,scores={generating=12}] at @s align xyz positioned ^-7 ^-3 ^-15 as @e[type=marker,tag=seekeyemarker,dz=21,dy=8,dx=15,limit=8,sort=random] run function doors:summonseekeye
execute if entity @s[tag=seekcrescendo3,scores={generating=12}] at @s align xyz positioned ^-7 ^-3 ^-15 as @e[type=marker,tag=seekeyemarker,dz=21,dy=8,dx=15,limit=16,sort=random] run function doors:summonseekeye
execute if entity @s[tag=destroy] at @s align xyz positioned ^-7 ^-3 ^-15 run kill @e[dx=21,dy=8,dz=15,tag=!door]