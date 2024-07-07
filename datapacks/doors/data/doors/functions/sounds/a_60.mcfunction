execute if entity @e[tag=a60,distance=..16] run scoreboard players add @s a60near 1
execute if entity @e[tag=a60,distance=16..17] run scoreboard players reset @s a60near
execute if entity @e[tag=a60,distance=16..17] run stopsound @s * custom:entity.a60.near
execute if score @s a60near matches 1 unless entity @e[tag=a60,scores={stop=1..}] run playsound custom:entity.a60.near master @s ~ ~ ~
execute if score @s a60near matches 166.. run scoreboard players reset @s a60near

scoreboard players add @s a60far 1
execute if score @s a60far matches 1 unless entity @e[tag=a60,scores={stop=1..}] run playsound custom:entity.a60.far master @s ~ ~ ~
execute if score @s a60far matches 1358.. run scoreboard players reset @s a60far