execute at @s at @e[tag=figurewardrobe,sort=nearest,limit=1] if entity @a[distance=..0.65] on target run function doors:hidinginthere
execute at @s at @e[tag=figurewardrobe,sort=nearest,limit=1] if entity @a[distance=..0.65] run data remove entity @s interaction


execute at @s rotated as @e[tag=figurewardrobe,sort=nearest,limit=1] on target positioned as @s run tp @s ~ ~ ~ ~ ~22.5
execute at @s on target run ride @s mount @e[tag=figurewardrobe,limit=1,sort=nearest]

data remove entity @s interaction