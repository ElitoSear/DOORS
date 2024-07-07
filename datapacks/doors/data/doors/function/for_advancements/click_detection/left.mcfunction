execute as @e[tag=figurewardrobe,limit=1,sort=nearest] at @s unless score @s clickleft matches 1.. run function doors:for_advancements/click_detection/failed
execute as @e[tag=figurewardrobe,limit=1,sort=nearest] at @s if score @s clickleft matches 1.. run function doors:for_advancements/click_detection/succeess
