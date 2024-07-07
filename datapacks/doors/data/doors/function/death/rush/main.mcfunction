tag @s add killed_by_rush
scoreboard players set @s guiding_light_message 1
damage @s 20 mob_attack by @e[tag=rushdamagesource,limit=1]
stopsound @s * custom:misc.static
scoreboard players add @s timeskilledbyrush 1
tag @s remove killedbyothermeans