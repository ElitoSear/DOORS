execute unless score @s knobs matches 1000.. run tellraw @s {"translate":  "text.doors.not_enough_knobs","color": "red"}

execute if entity @a[scores={muerte=0},distance=..1,limit=1,sort=nearest,tag=atlibrary] run tellraw @s {"translate":  "text.doors.cannot_revive","color": "red"}
execute if entity @a[scores={muerte=0},distance=..1,limit=1,sort=nearest,tag=atseek] run tellraw @s {"translate":  "text.doors.cannot_revive","color": "red"}
execute if entity @a[scores={muerte=0},distance=..1,limit=1,sort=nearest,tag=athalt] run tellraw @s {"translate":  "text.doors.cannot_revive","color": "red"}

execute if score player_count playercount matches 1 run tellraw @s {"translate":  "text.doors.cannot_revive_multiplayer","color": "red"}

execute if score player_count playercount matches 2.. if score @s guiding_light matches 1.. run tellraw @s {"translate":  "text.doors.cannot_revive","color": "red"}
execute if score @s max_door_reached matches 90.. run tellraw @s {"translate":  "text.doors.cannot_revive","color": "red"}
execute if score player_count playercount matches 2.. if score @s muerte matches 0 run tellraw @s {"translate":  "text.doors.cannot_revive_alive","color": "red"}

execute if score player_count playercount matches 2.. if score @s muerte matches 1.. if score @s knobs matches 1000.. unless score @s guiding_light_message matches 1.. unless score @s max_door_reached matches 90.. unless entity @a[scores={muerte=0},distance=..1,limit=1,sort=nearest,tag=atlibrary] unless entity @a[scores={muerte=0},distance=..1,limit=1,sort=nearest,tag=atseek] unless entity @a[scores={muerte=0},distance=..1,limit=1,sort=nearest,tag=athalt] unless entity @a[scores={muerte=0},distance=..1,limit=1,sort=nearest,tag=atrooms] run function doors:revive/branch
scoreboard players reset @s revive