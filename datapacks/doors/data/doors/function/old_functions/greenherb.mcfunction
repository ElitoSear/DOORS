execute on target run effect give @s regeneration infinite 0 true
execute on target run effect give @s speed 1 1 true
execute on target run title @s actionbar {"translate":"text.doors.green_herb"}
execute on target run advancement grant @s only doors:achievements/achievement7
execute on target at @s run playsound doors:misc.click master @s
execute if entity @s[nbt={interaction:{}}] run data remove entity @s interaction