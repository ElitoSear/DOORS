#-90
execute if entity @s[scores={generating=6}] at @s align xyz positioned ^-9 ^-3 ^-1 run place template minecraft:left4 ~ ~ ~ 180
execute if entity @s[scores={generating=5}] at @s align xyz positioned ^6 ^-3 ^-13 run forceload add ~ ~ ~13 ~16
execute if entity @s[tag=seekcrescendo1,scores={generating=12}] at @s align xyz positioned ^6 ^-3 ^-13 as @e[type=marker,tag=seekeyemarker,dx=13,dy=8,dz=16,limit=4,sort=random] run function doors:summonseekeye
execute if entity @s[tag=seekcrescendo2,scores={generating=12}] at @s align xyz positioned ^6 ^-3 ^-13 as @e[type=marker,tag=seekeyemarker,dx=13,dy=8,dz=16,limit=8,sort=random] run function doors:summonseekeye
execute if entity @s[tag=seekcrescendo3,scores={generating=12}] at @s align xyz positioned ^6 ^-3 ^-13 as @e[type=marker,tag=seekeyemarker,dx=13,dy=8,dz=16,limit=16,sort=random] run function doors:summonseekeye
execute if entity @s[tag=destroy] at @s align xyz positioned ^6 ^-3 ^-13 run kill @e[dx=13,dy=8,dz=16,tag=!door]