
execute at @s at @e[tag=wardrobe,sort=nearest,limit=1] if entity @a[distance=..0.65] on target run function doors:hidinginthere
execute at @s at @e[tag=wardrobe,sort=nearest,limit=1] if entity @a[distance=..0.65] run data remove entity @s interaction

execute on target store result score @s drawerrandomizer run random value 1..200
execute at @s on target if entity @s[scores={drawerrandomizer=10}] run scoreboard players add @e[tag=wardrobe,limit=1,sort=nearest] jack 1

execute at @s rotated as @e[tag=wardrobe,sort=nearest,limit=1] on target unless entity @e[tag=wardrobe,limit=1,sort=nearest,scores={jack=1..}] run execute positioned as @s unless entity @s[scores={kickedout=1..}] run tp @s ~ ~ ~ ~ ~22.5
execute at @s on target unless entity @s[scores={kickedout=1..}] unless entity @e[tag=wardrobe,limit=1,sort=nearest,scores={jack=1..}] run ride @s mount @e[tag=wardrobe,limit=1,sort=nearest]

data remove entity @s interaction