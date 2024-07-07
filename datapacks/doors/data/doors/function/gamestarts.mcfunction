execute if entity @e[scores={elevatorcountdown=140}] run scoreboard players add @s reception 1
execute if entity @s[scores={reception=2}] run function doors:game_start/tick_2
execute if entity @s[scores={reception=3}] positioned 39.99 63.0 6.5 run tag @e[tag=automaticdoor,limit=1,sort=nearest] add closed
execute if entity @s[scores={reception=110}] run execute as @a at @s run playsound custom:music.elevator_jam voice @s
execute if entity @s[scores={reception=702}] run execute as @e[tag=elevatordoor] at @s run setblock ~ ~-2 ~ redstone_torch
execute if entity @s[scores={reception=702}] run execute as @a at @s run playsound custom:misc.the_hotel master @s
execute if entity @s[scores={reception=702}] run title @a actionbar {"translate":"text.doors.the_hotel","underlined":true,"color":"#EDE7E2"}

scoreboard players add @s[scores={reception=1..710}] reception 1

execute if predicate doors:game_started run function doors:roomgeneration