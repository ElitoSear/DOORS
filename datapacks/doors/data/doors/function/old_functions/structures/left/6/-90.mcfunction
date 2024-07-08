
#-90
execute if entity @s[scores={generating=6}] at @s align xyz positioned ^-10 ^-3 ^-1 run place template minecraft:left6 ~ ~ ~ 180
execute if entity @s[scores={generating=5}] at @s align xyz positioned ^6 ^-3 ^-16 run forceload add ~ ~ ~16 ~17
execute if entity @s[tag=seekcrescendo1,scores={generating=12}] at @s align xyz positioned ^6 ^-3 ^-16 as @e[type=marker,tag=seekeyemarker,dx=16,dy=8,dz=17,limit=4,sort=random] run function doors:summonseekeye
execute if entity @s[tag=seekcrescendo2,scores={generating=12}] at @s align xyz positioned ^6 ^-3 ^-16 as @e[type=marker,tag=seekeyemarker,dx=16,dy=8,dz=17,limit=8,sort=random] run function doors:summonseekeye
execute if entity @s[tag=seekcrescendo3,scores={generating=12}] at @s align xyz positioned ^6 ^-3 ^-16 as @e[type=marker,tag=seekeyemarker,dx=16,dy=8,dz=17,limit=16,sort=random] run function doors:summonseekeye
execute if entity @s[tag=destroy] at @s align xyz positioned ^6 ^-3 ^-16 run kill @e[dx=16,dy=8,dz=17,tag=!door]