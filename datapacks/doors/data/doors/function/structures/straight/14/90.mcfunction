#90
execute if entity @s[scores={generating=6}] at @s align xyz positioned ^-7 ^-3 ^-1 run place template minecraft:straight14
execute if entity @s[scores={generating=5}] at @s align xyz positioned ^-7 ^-3 ^-1 run forceload add ~ ~ ~24 ~30
execute if entity @s[tag=seekcrescendo1,scores={generating=12}] at @s align xyz positioned ^-7 ^-3 ^-1 as @e[type=marker,tag=seekeyemarker,dx=24,dy=16,dz=30,limit=4,sort=random] run function doors:summonseekeye
execute if entity @s[tag=seekcrescendo2,scores={generating=12}] at @s align xyz positioned ^-7 ^-3 ^-1 as @e[type=marker,tag=seekeyemarker,dx=24,dy=16,dz=30,limit=8,sort=random] run function doors:summonseekeye
execute if entity @s[tag=seekcrescendo3,scores={generating=12}] at @s align xyz positioned ^-7 ^-3 ^-1 as @e[type=marker,tag=seekeyemarker,dx=24,dy=16,dz=30,limit=16,sort=random] run function doors:summonseekeye
execute if entity @s[tag=destroy] at @s align xyz positioned ^-7 ^-3 ^-1 run kill @e[dx=24,dy=16,dz=30,tag=!door]