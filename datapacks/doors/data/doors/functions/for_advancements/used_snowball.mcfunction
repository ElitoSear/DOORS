effect give @s minecraft:speed 7 2 true
execute at @s run playsound custom:item.vitamins master @s
kill @e[type=snowball]
scoreboard players reset @s vitamins