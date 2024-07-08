execute unless entity @e[scores={ambush=1..152}] if entity @e[tag=ambush,distance=..18] run scoreboard players add @s ambushnear 1
execute if entity @e[tag=ambush,distance=18..20] run scoreboard players reset @s ambushnear
execute if entity @e[tag=ambush,distance=18..20] run stopsound @s * doors:entity.ambush.near
execute if entity @s[scores={ambushnear=1}] run playsound doors:entity.ambush.near master @s ~ ~ ~ 0.5
execute if entity @s[scores={ambushnear=156..}] run scoreboard players reset @s ambushnear

scoreboard players add @s ambushfar 1
execute if entity @s[scores={ambushfar=1}] run playsound doors:entity.ambush.far master @s ~ ~ ~ 0.5
execute if entity @s[scores={ambushfar=176..}] run scoreboard players reset @s ambushfar