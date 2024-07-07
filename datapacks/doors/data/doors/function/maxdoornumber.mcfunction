execute run scoreboard players operation max_door doornumber > @s doornumber
execute if score @s doornumber = max_door doornumber run tag @s add latestdoor
execute unless score @s doornumber = max_door doornumber run tag @s remove latestdoor