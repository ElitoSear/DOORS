execute on target if entity @s[scores={kickedout=1..}] run title @s actionbar {"translate":"text.doors.something_is_stopping_you_from_hidding"}
execute on target if entity @s[scores={kickedout=1..}] run playsound doors:misc.click master @s
execute at @s on target if entity @s[scores={kickedout=1..}] run execute as @e[tag=hidinginteraction,sort=nearest,limit=1] run data remove entity @s interaction