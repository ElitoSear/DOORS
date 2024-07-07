execute at @e[tag=door,tag=infirmary] run tp @s ^ ^-2 ^-5.51 facing ^ ^-2 ^-7
tag @s remove atrooms
tag @s remove roomsleader
tag @s remove lastroomsplayer
scoreboard players reset @s atrooms
scoreboard players reset @s roomsambience
stopsound @a * custom:music.the_rooms
execute at @s run playsound custom:misc.rooms_door master @s