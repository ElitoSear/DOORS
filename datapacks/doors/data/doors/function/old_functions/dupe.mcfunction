execute if entity @e[scores={reception=1..}] if entity @e[scores={generating=10}] store result score .dupe duperandomizer run random value 1..3
execute if entity @e[scores={reception=1..}] if entity @e[scores={generating=10}] as @a[gamemode=adventure,tag=leader,limit=1] at @s if score .dupe duperandomizer matches 1 run tag @e[tag=dupedoor,limit=1,sort=nearest] add dupped
# Screamer
execute as @e[tag=dupe] run function doors:dupefunction
execute as @e[tag=dupped] run function doors:dupped
