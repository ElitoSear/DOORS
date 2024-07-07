
scoreboard players reset @s screechtime
execute at @s align y run summon item_display ^ ^1.75 ^1 {Tags:["crucifix"],item:{id:"minecraft:torch",Count:1b,tag:{CustomModelData:2}}}
advancement grant @s only doors:achievements/achievement25
execute as @e[tag=screech,limit=1,sort=nearest] at @s run function doors:crucifix/raycast_down
scoreboard players add @e[tag=screech,limit=1,sort=nearest] crucifixed 1
clear @s string{CustomModelData:94}