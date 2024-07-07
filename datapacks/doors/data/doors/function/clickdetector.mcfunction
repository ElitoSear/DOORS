execute on target run tag @s add clickedright
execute on attacker run tag @s add clickedleft
execute if entity @s[nbt={interaction:{}}] run data remove entity @s interaction
execute if entity @s[nbt={attack:{}}] run data remove entity @s attack