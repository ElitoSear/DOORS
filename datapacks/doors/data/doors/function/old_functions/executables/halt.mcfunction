execute at @s if entity @e[tag=door,sort=nearest,limit=1,scores={halt=71..}] unless entity @s[scores={crucifixed=1..}] run tp @s ^ ^ ^0.2
execute if entity @s[y_rotation=135..-135] at @s unless entity @s[scores={crucifixed=1..}] align xyz positioned ^2 ^ ^-1 run scoreboard players add @a[tag=athalt,dy=5,dx=7,dz=1] damagedbyhalt 1
execute if entity @s[y_rotation=45..134] at @s unless entity @s[scores={crucifixed=1..}] align xyz positioned ^-2 ^ ^-1 run scoreboard players add @a[tag=athalt,dy=5,dx=1,dz=7] damagedbyhalt 1
execute if entity @s[y_rotation=-45..44] at @s unless entity @s[scores={crucifixed=1..}] align xyz positioned ^-2 ^ ^-1 run scoreboard players add @a[tag=athalt,dy=5,dx=7,dz=1] damagedbyhalt 1
execute if entity @s[y_rotation=-134..-46] at @s unless entity @s[scores={crucifixed=1..}] align xyz positioned ^2 ^ ^-1 run scoreboard players add @a[tag=athalt,dy=5,dx=1,dz=7] damagedbyhalt 1

execute if entity @s[y_rotation=135..-135] at @s unless entity @s[scores={crucifixed=1..}] align xyz positioned ^2 ^ ^-4 run scoreboard players add @a[tag=athalt,dy=5,dx=7,dz=1] damagedbyhalt 1
execute if entity @s[y_rotation=45..134] at @s unless entity @s[scores={crucifixed=1..}] align xyz positioned ^-2 ^ ^-4 run scoreboard players add @a[tag=athalt,dy=5,dx=1,dz=7] damagedbyhalt 1
execute if entity @s[y_rotation=-45..44] at @s unless entity @s[scores={crucifixed=1..}] align xyz positioned ^-2 ^ ^-4 run scoreboard players add @a[tag=athalt,dy=5,dx=7,dz=1] damagedbyhalt 1
execute if entity @s[y_rotation=-134..-46] at @s unless entity @s[scores={crucifixed=1..}] align xyz positioned ^2 ^ ^-4 run scoreboard players add @a[tag=athalt,dy=5,dx=1,dz=7] damagedbyhalt 1

execute if entity @s[scores={crucifixed=1..}] at @s run scoreboard players reset @e[tag=door,scores={halt=1..}] halt
execute if entity @s[scores={crucifixed=1..}] at @s run stopsound @a * doors:entity.halt.ambience
execute if entity @s[scores={crucifixed=1..}] at @s run stopsound @a * doors:entity.halt.whisper
execute if entity @s[scores={crucifixed=1..}] at @s run stopsound @a * doors:entity.halt.whistles
execute if entity @s[scores={crucifixed=1..}] at @s run stopsound @a * doors:entity.halt.distorted
execute if entity @s[scores={crucifixed=1..}] at @s run effect clear @a[tag=athalt] blindness
execute if entity @s[scores={crucifixed=1..}] at @s run effect clear @a[tag=athalt] darkness
execute if entity @s[scores={crucifixed=1..}] at @s run tag @a[tag=athalt] remove screechexemption
execute if entity @s[scores={crucifixed=1..}] at @s run tag @a[tag=athalt] remove nooffhandwarning
execute if entity @s[scores={crucifixed=1..}] at @s run tag @a[tag=athalt] remove athalt