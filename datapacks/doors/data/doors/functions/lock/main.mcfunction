execute if entity @s[tag=locked] run function doors:lock/locked
execute unless entity @s[tag=locked] run function doors:lock/unlocked

execute if entity @s[nbt={interaction:{}}] run data remove entity @s interaction