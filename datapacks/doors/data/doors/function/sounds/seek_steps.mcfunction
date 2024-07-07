execute if entity @e[tag=seek,scores={seekrun=1..}] unless entity @s[scores={killedbyseek=1..}] run scoreboard players add @s seekstepsfar 1
execute unless entity @e[tag=seek,scores={seekrun=1..}] run stopsound @s * doors:entity.seek.steps_far
execute unless entity @e[tag=seek,scores={seekrun=1..}] run scoreboard players reset @s seeksteps
execute unless entity @e[tag=seek,scores={seekrun=1..}] run scoreboard players reset @s seekstepsfar
execute if entity @e[tag=seek,scores={seekrun=1..}] unless entity @s[scores={killedbyseek=1..}] if entity @s[scores={seekstepsfar=1}] unless entity @e[tag=seek,scores={stop=1..}] run playsound doors:entity.seek.steps_far master @s
execute if entity @e[tag=seek,scores={seekrun=1..}] unless entity @s[scores={killedbyseek=1..}] if entity @s[scores={seekstepsfar=76..}] run scoreboard players reset @s seekstepsfar