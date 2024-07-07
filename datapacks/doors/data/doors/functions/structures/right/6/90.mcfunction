#90
execute if entity @s[scores={generating=6}] at @s align xyz positioned ^-6 ^-3 ^-1 run place template minecraft:right6
execute if entity @s[scores={generating=5}] at @s align xyz positioned ^-6 ^-3 ^-1 run forceload add ~ ~ ~29 ~13
execute if entity @s[tag=seekcrescendo1,scores={generating=12}] at @s align xyz positioned ^-6 ^-3 ^-1 as @e[type=marker,tag=seekeyemarker,dx=29,dy=8,dz=13,limit=4,sort=random] run function doors:summonseekeye
execute if entity @s[tag=seekcrescendo2,scores={generating=12}] at @s align xyz positioned ^-6 ^-3 ^-1 as @e[type=marker,tag=seekeyemarker,dx=29,dy=8,dz=13,limit=8,sort=random] run function doors:summonseekeye
execute if entity @s[tag=seekcrescendo3,scores={generating=12}] at @s align xyz positioned ^-6 ^-3 ^-1 as @e[type=marker,tag=seekeyemarker,dx=29,dy=8,dz=13,limit=16,sort=random] run function doors:summonseekeye
execute if entity @s[tag=destroy] at @s align xyz positioned ^-6 ^-3 ^-1 run kill @e[dx=29,dy=8,dz=13,tag=!door]