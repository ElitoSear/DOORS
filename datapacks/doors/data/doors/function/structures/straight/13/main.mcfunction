#straight13
#90
execute if entity @s[y_rotation=90] run function doors:structures/straight/13/90
#180
execute if entity @s[y_rotation=180] run function doors:structures/straight/13/180
#-90
execute if entity @s[y_rotation=-90] run function doors:structures/straight/13/-90
#0
execute if entity @s[y_rotation=0] run function doors:structures/straight/13/0
#Not rotated variable needed
execute if entity @s[scores={generating=8}] at @s if score boolean keyishidden matches 1 positioned ^0.3 ^-1 ^-22.01 run summon item_display ~ ~ ~ {Tags:["lockdisplay"],item:{id:"minecraft:string",Count:1,tag:{CustomModelData:14}}}
execute if entity @s[scores={generating=8}] at @s if score boolean keyishidden matches 1 positioned ^ ^-1 ^-22 run execute rotated as @e[tag=door,limit=1,sort=nearest] run execute as @e[tag=lockdisplay,limit=1,sort=nearest] positioned as @s run tp @s ~ ~ ~ ~ ~
execute if entity @s[scores={generating=8}] at @s if score boolean keyishidden matches 1 positioned ^ ^-1 ^-22 at @e[tag=lockdisplay,limit=1,sort=nearest] run summon interaction ^-0.03 ^-0.5 ^-0.04 {Tags:["lock","locked"],width:0.32f,height:0.55f,response:1}

execute at @s align xyz positioned ^ ^-2 ^-22 if score @s doornumber = max_score playercurrentdoor run tag @e[tag=rushorambush,dx=1.0,dz=1.0] add stop
execute if entity @s[tag=flickon] at @s align xyz positioned ^-7 ^-5 ^-1 run fill ^ ^ ^ ^26 ^13 ^-22 light[level=0] replace minecraft:wall_torch[facing=north]
execute if entity @s[tag=flickon] at @s align xyz positioned ^-7 ^-5 ^-1 run fill ^ ^ ^ ^26 ^13 ^-22 light[level=1] replace minecraft:wall_torch[facing=east]
execute if entity @s[tag=flickon] at @s align xyz positioned ^-7 ^-5 ^-1 run fill ^ ^ ^ ^26 ^13 ^-22 light[level=2] replace minecraft:wall_torch[facing=south]
execute if entity @s[tag=flickon] at @s align xyz positioned ^-7 ^-5 ^-1 run fill ^ ^ ^ ^26 ^13 ^-22 light[level=3] replace minecraft:wall_torch[facing=west]
execute if entity @s[tag=flickoff] at @s align xyz positioned ^-7 ^-5 ^-1 run fill ^ ^ ^ ^26 ^13 ^-22 minecraft:wall_torch[facing=north] replace light[level=0]
execute if entity @s[tag=flickoff] at @s align xyz positioned ^-7 ^-5 ^-1 run fill ^ ^ ^ ^26 ^13 ^-22 minecraft:wall_torch[facing=east] replace light[level=1]
execute if entity @s[tag=flickoff] at @s align xyz positioned ^-7 ^-5 ^-1 run fill ^ ^ ^ ^26 ^13 ^-22 minecraft:wall_torch[facing=south] replace light[level=2]
execute if entity @s[tag=flickoff] at @s align xyz positioned ^-7 ^-5 ^-1 run fill ^ ^ ^ ^26 ^13 ^-22 minecraft:wall_torch[facing=west] replace light[level=3]
execute if entity @s[tag=destroy] at @s align xyz positioned ^-7 ^-5 ^-1 run fill ^ ^ ^ ^26 ^13 ^-22 air
execute if entity @s[tag=destroy] run kill @s
#Rain
execute if entity @s[scores={generating=10}] at @s align xyz positioned ^-7 ^-5 ^-1 run fillbiome ^ ^ ^ ^26 ^13 ^-22 plains