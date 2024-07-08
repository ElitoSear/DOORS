execute if entity @e[tag=a120,distance=..16] run scoreboard players add @s a120near 1
execute if entity @e[tag=a120,distance=16..17] run scoreboard players reset @s a120near
execute if entity @e[tag=a120,distance=16..17] run stopsound @s * doors:entity.a120.near
execute if score @s a120near matches 1 unless entity @e[tag=a120,scores={stop=1..}] run playsound doors:entity.a120.near master @s ~ ~ ~
execute if score @s a120near matches 200.. run scoreboard players reset @s a120near

scoreboard players add @s a120far 1
execute if score @s a120far matches 1 unless entity @e[tag=a120,scores={stop=1..}] run playsound doors:entity.a120.far master @s ~ ~ ~
execute if score @s a120far matches 1400.. run scoreboard players reset @s a120far