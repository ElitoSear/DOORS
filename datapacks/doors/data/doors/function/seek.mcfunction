execute if entity @s[scores={seekrun=1..},y_rotation=135..-135] at @s unless entity @s[scores={stop=1..}] unless entity @s[scores={crucifixfailed=1..}] align xyz positioned ^12 ^ ^-1 run execute as @a[gamemode=adventure,dy=3,dx=25,dz=-2] unless entity @s[scores={killedbyseek=1..}] run scoreboard players add @s killedbyseek 1
execute if entity @s[scores={seekrun=1..},y_rotation=45..134] at @s unless entity @s[scores={stop=1..}] unless entity @s[scores={crucifixfailed=1..}] align xyz positioned ^-12 ^ ^-1 run execute as @a[gamemode=adventure,dy=3,dx=-2,dz=25] unless entity @s[scores={killedbyseek=1..}] run scoreboard players add @s killedbyseek 1
execute if entity @s[scores={seekrun=1..},y_rotation=-45..44] at @s unless entity @s[scores={stop=1..}] unless entity @s[scores={crucifixfailed=1..}] align xyz positioned ^-12 ^ ^-1 run execute as @a[gamemode=adventure,dy=3,dx=25,dz=2] unless entity @s[scores={killedbyseek=1..}] run scoreboard players add @s killedbyseek 1
execute if entity @s[scores={seekrun=1..},y_rotation=-134..-46] at @s unless entity @s[scores={stop=1..}] unless entity @s[scores={crucifixfailed=1..}] align xyz positioned ^12 ^ ^-1 run execute as @a[gamemode=adventure,dy=3,dx=2,dz=25] unless entity @s[scores={killedbyseek=1..}] run scoreboard players add @s killedbyseek 1

execute if entity @s[scores={seekrunning=2}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:31}}]}
execute if entity @s[scores={seekrunning=6}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:32}}]}
execute if entity @s[scores={seekrunning=10}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:33}}]}
execute if entity @s[scores={seekrunning=14}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:34}}]}
execute if entity @s[scores={seekrunning=17..}] run scoreboard players set @s seekrunning 1
execute if entity @s[scores={seekrun=1..}] run scoreboard players add @s seekrunning 1

execute at @s run tag @e[tag=seekpath,distance=..1] add seekchecked
execute if entity @s[scores={seekrun=1..}] unless entity @s[scores={crucifixfailed=1..}] unless entity @s[scores={stop=1..}] at @s run tp @s ^ ^ ^0.3 facing entity @e[tag=seekpath,sort=nearest,limit=1,tag=!seekchecked]
execute if entity @s[scores={stop=2}] at @s run playsound custom:entity.seek.knocks master @a
execute if entity @s[scores={stop=2}] at @s run stopsound @a * custom:entity.seek.steps_close
execute if entity @s[scores={stop=2}] at @s run stopsound @a * custom:entity.seek.steps_far
execute if entity @s[scores={stop=2}] at @e[tag=automaticdoorseek,tag=seekend,sort=nearest,limit=1] run kill @e[tag=automaticdoor,limit=1,sort=nearest]
execute if entity @s[scores={stop=2}] at @s run tag @e[tag=automaticdoorseek,sort=nearest,limit=1] add closed
execute if entity @s[scores={stop=3}] at @s run kill @s

scoreboard players add @s[scores={seekrun=1..}] seekrun 1