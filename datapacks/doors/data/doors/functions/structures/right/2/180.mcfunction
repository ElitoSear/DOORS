#180
execute if entity @s[scores={generating=6}] at @s align xyz positioned ^-7 ^-3 ^-1 run place template minecraft:right2 ~ ~ ~ clockwise_90
execute if entity @s[scores={generating=5}] at @s align xyz positioned ^5 ^-3 ^-1 run forceload add ~ ~ ~13 ~15
execute if entity @s[tag=seekcrescendo1,scores={generating=12}] at @s align xyz positioned ^5 ^-3 ^-1 as @e[type=marker,tag=seekeyemarker,dz=13,dy=9,dx=15,limit=4,sort=random] run function doors:summonseekeye
execute if entity @s[tag=seekcrescendo2,scores={generating=12}] at @s align xyz positioned ^5 ^-3 ^-1 as @e[type=marker,tag=seekeyemarker,dz=13,dy=9,dx=15,limit=8,sort=random] run function doors:summonseekeye
execute if entity @s[tag=seekcrescendo3,scores={generating=12}] at @s align xyz positioned ^5 ^-3 ^-1 as @e[type=marker,tag=seekeyemarker,dz=13,dy=9,dx=15,limit=16,sort=random] run function doors:summonseekeye
execute if entity @s[tag=destroy] at @s align xyz positioned ^5 ^-3 ^-1 run kill @e[dx=13,dy=9,dz=15,tag=!door]