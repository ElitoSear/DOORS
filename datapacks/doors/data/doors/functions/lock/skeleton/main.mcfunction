execute if entity @s[tag=locked] run function doors:lock/skeleton/locked
execute unless entity @s[tag=locked] run function doors:lock/skeleton/unlocked

data remove entity @s interaction