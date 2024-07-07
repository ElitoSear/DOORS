execute at @s unless score @s dupescreamer matches 19.. run scoreboard players add @a[distance=..6] dupegrowl 1
execute at @s run scoreboard players reset @a[distance=6..7] dupegrowl
execute at @s run stopsound @a[distance=6..7] * custom:entity.dupe.growl
execute at @s if score @s dupescreamer matches 19.. run scoreboard players reset @a[distance=..6] dupegrowl

execute at @s if block ~ ~ ~ dark_oak_door[open=true] unless entity @s[scores={dupescreamer=2..}] run scoreboard players add @s dupescreamer 1
execute if entity @s[scores={dupescreamer=6..12}] at @s run tp @a[limit=1,sort=nearest,gamemode=!spectator] ^ ^ ^1 facing entity @s
execute if entity @s[scores={dupescreamer=8}] at @s run data merge entity @s {view_range:1,transformation:{translation:[0f,0.5f,0.4f]},start_interpolation:0,interpolation_duration:4}
execute if entity @s[scores={dupescreamer=8}] at @s run data merge entity @s {view_range:1,transformation:{scale:[1f,1f,1f]},start_interpolation:0,interpolation_duration:4}
execute if entity @s[scores={dupescreamer=12}] at @s run execute as @a[limit=1,sort=nearest,gamemode=!spectator] at @s unless entity @s[predicate=doors:is_holding_crucifix] run function doors:dupe_jumpscare
execute if entity @s[scores={dupescreamer=12}] at @s run tp @a[limit=1,sort=nearest,gamemode=!spectator,predicate=doors:is_holding_crucifix] ^ ^ ^2 facing entity @s
execute if entity @s[scores={dupescreamer=12}] at @s run execute as @a[limit=1,sort=nearest,gamemode=!spectator] at @s if entity @s[predicate=doors:is_holding_crucifix] run scoreboard players add @e[tag=dupe,sort=nearest,limit=1] crucifixed 1
execute if entity @s[scores={dupescreamer=12}] at @s run execute as @a[limit=1,sort=nearest,gamemode=!spectator] at @e[tag=dupe,sort=nearest,limit=1] if entity @s[predicate=doors:is_holding_crucifix] run summon item_display ~ ~1 ~ {Tags:["crucifix"],item:{id:"minecraft:torch",Count:1b,tag:{CustomModelData:2}}}
execute if entity @s[scores={dupescreamer=12}] at @s run execute as @a[limit=1,sort=nearest,gamemode=!spectator] at @s if entity @s[predicate=doors:is_holding_crucifix] run advancement grant @s only doors:achievements/achievement27
execute if entity @s[scores={dupescreamer=12}] at @s run execute as @a[limit=1,sort=nearest,gamemode=!spectator] at @s if entity @s[predicate=doors:is_holding_crucifix] run clear @s string{CustomModelData:94}

execute if entity @s[scores={dupescreamer=18}] at @s run tag @e[tag=automaticdoor,limit=1,sort=nearest] add closed
execute if entity @s[scores={dupescreamer=18}] at @s run data merge entity @e[tag=dupped,limit=1,sort=nearest] {view_range:0}

scoreboard players add @s[scores={dupescreamer=1..19}] dupescreamer 1