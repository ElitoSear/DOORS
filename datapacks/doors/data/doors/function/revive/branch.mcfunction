scoreboard players set @s muerte 0
gamemode adventure @s
effect give @s saturation infinite 0 true
scoreboard players remove @s knobs 1000
execute at @s run playsound doors:misc.knobs_decrease master @s
execute at @s run playsound doors:misc.revive_decrease master @s
tag @s remove spectates