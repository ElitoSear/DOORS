execute as @e[tag=roomsdoor] unless entity @s[scores={roomsdoornumber=1..}] at @s if entity @a[distance=..40,gamemode=adventure] run function doors:generate/rooms

execute as @e[type=text_display,tag=door] unless entity @s[scores={doornumber=1..}] at @s if entity @a[distance=..40] unless entity @e[scores={doornumber=61}] run function doors:generate/hotel
execute as @e[type=text_display,tag=door] unless entity @s[scores={doornumber=1..}] at @s if entity @e[scores={doornumber=61}] unless entity @e[scores={doornumber=65}] run function doors:generate/hotel
execute as @e[type=text_display,tag=door] unless entity @s[scores={doornumber=1..}] at @s if entity @a[distance=..40] if entity @e[scores={doornumber=65}] run function doors:generate/hotel
scoreboard players add @e[scores={generating=1..12}] generating 1

execute as @e[type=text_display,tag=door,scores={generating=3}] run function doors:generate/seek

execute as @e[type=text_display,tag=door] run function doors:executables/room_gen_door
execute if entity @e[scores={structurepick=18},tag=door] run function doors:puzzlefunction
execute if entity @e[scores={structurepick=20},tag=door] run function doors:haltfunction
#The Rooms

execute if entity @a[scores={atrooms=1..}] as @e[type=text_display,tag=roomsdoor] run function doors:executables/room_geen_room_door
