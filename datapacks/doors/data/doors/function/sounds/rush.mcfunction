execute if entity @e[tag=rush,distance=..30] run scoreboard players add @s rushnear 1
execute if entity @e[tag=rush,distance=30..31] run scoreboard players reset @s rushnear
execute if entity @e[tag=rush,distance=30..31] run stopsound @s * doors:entity.rush.near
execute if entity @s[scores={rushnear=1}] unless entity @e[tag=rush,tag=stop] run playsound doors:entity.rush.near master @s ~ ~ ~ 0.5
execute if entity @s[scores={rushnear=236..}] run scoreboard players reset @s rushnear

execute run scoreboard players add @s rushfar 1
execute if entity @s[scores={rushfar=1}] unless entity @e[tag=rush,tag=stop] run playsound doors:entity.rush.far master @s ~ ~ ~ 0.5
execute if entity @s[scores={rushfar=822..}] run scoreboard players reset @s rushfar