execute if entity @s[scores={resetrun=9}] run function doors:reset_run/tick9
execute if entity @s[scores={resetrun=10}] run function doors:reset_run/tick10
execute if entity @s[scores={resetrun=11}] run function doors:reset_run/tick11

scoreboard players add @s[scores={resetrun=1..}] resetrun 1
scoreboard players reset @s[scores={resetrun=13..}] resetrun