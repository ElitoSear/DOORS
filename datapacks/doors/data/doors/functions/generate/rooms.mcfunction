scoreboard players operation @s roomsdoornumber = max_door roomsdoornumber
scoreboard players add @s roomsdoornumber 1
execute if score @s roomsdoornumber matches 1..999 store result score @s structurepick run random value 90..105
execute if score @s roomsdoornumber matches 1000 run scoreboard players set @s structurepick 106
scoreboard players add @s generating 1