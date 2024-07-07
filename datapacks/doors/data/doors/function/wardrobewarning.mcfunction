execute run data merge entity @e[tag=figure,limit=1] {NoAI:0b}
execute at @e[tag=figurewardrobe,limit=1,sort=nearest] run kill @e[type=item_display,distance=..3]
execute at @e[tag=figurewardrobe,limit=1,sort=nearest] run kill @e[tag=clickdetector,distance=..3]
execute run ride @s dismount
execute run scoreboard players reset @e[scores={heartminigame=1..},limit=1,sort=nearest] heartminigame
execute run scoreboard players reset @s wardrobewarning
tag @s add killed_by_figure_heart_minigame
tag @s add killed_by_figure_other_means