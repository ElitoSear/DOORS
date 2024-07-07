#90
execute if entity @s[scores={generating=6}] at @s align xyz positioned ^-6 ^-6 ^-1 run place template minecraft:left1
execute if entity @s[scores={generating=5}] at @s align xyz positioned ^-6 ^-6 ^-1 run forceload add ~ ~ ~14 ~14
execute if entity @s[tag=seekcrescendo1,scores={generating=12}] at @s align xyz positioned ^-6 ^-6 ^-1 as @e[type=marker,tag=seekeyemarker,dx=14,dy=11,dz=14,limit=4,sort=random] run function doors:summonseekeye
execute if entity @s[tag=seekcrescendo2,scores={generating=12}] at @s align xyz positioned ^-6 ^-6 ^-1 as @e[type=marker,tag=seekeyemarker,dx=14,dy=11,dz=14,limit=8,sort=random] run function doors:summonseekeye
execute if entity @s[tag=seekcrescendo3,scores={generating=12}] at @s align xyz positioned ^-6 ^-6 ^-1 as @e[type=marker,tag=seekeyemarker,dx=14,dy=11,dz=14,limit=16,sort=random] run function doors:summonseekeye
execute if entity @s[tag=destroy] at @s align xyz positioned ^-6 ^-6 ^-1 run kill @e[dx=14,dy=11,dz=14,tag=!door]