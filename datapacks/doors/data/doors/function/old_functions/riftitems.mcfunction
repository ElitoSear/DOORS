execute as @e[tag=rift] at @s on target run function doors:rift/on_target

execute as @e[type=interaction,tag=riftlobby] at @s run particle minecraft:nautilus ~ ~1.5 ~ 0 0 0 2.5 25 normal @a[tag=rifted]

execute as @e[type=interaction,tag=riftlobby] on target run function doors:riftlobby

execute as @e[tag=riftlobby,nbt={interaction:{}}] run data remove entity @s interaction
execute as @e[tag=rift,nbt={interaction:{}}] run data remove entity @s interaction