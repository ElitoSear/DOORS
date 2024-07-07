#0
execute if entity @s[scores={generating=6}] at @s align xyz positioned ^-7 ^-3 ^-1 run place template minecraft:straight14 ~ ~ ~ counterclockwise_90
execute if entity @s[scores={generating=5}] at @s align xyz positioned ^-7 ^-3 ^-24 run forceload add ~ ~ ~30 ~24
execute if entity @s[tag=seekcrescendo1,scores={generating=12}] at @s align xyz positioned ^-7 ^-3 ^-24 as @e[type=marker,tag=seekeyemarker,dz=30,dy=16,dx=24,limit=4,sort=random] run function doors:summonseekeye
execute if entity @s[tag=seekcrescendo2,scores={generating=12}] at @s align xyz positioned ^-7 ^-3 ^-24 as @e[type=marker,tag=seekeyemarker,dz=30,dy=16,dx=24,limit=8,sort=random] run function doors:summonseekeye
execute if entity @s[tag=seekcrescendo3,scores={generating=12}] at @s align xyz positioned ^-7 ^-3 ^-24 as @e[type=marker,tag=seekeyemarker,dz=30,dy=16,dx=24,limit=16,sort=random] run function doors:summonseekeye
execute if entity @s[tag=destroy] at @s align xyz positioned ^-7 ^-3 ^-24 run kill @e[dx=30,dy=16,dz=24,tag=!door]