execute as @e[tag=dupe] run scoreboard players reset @s
execute as @e[tag=dupe] at @s run tag @e[tag=automaticdoor,limit=1,sort=nearest] remove closed
execute as @e[tag=dupped] run scoreboard players reset @s
execute as @e[tag=dupped] run data merge entity @s {view_range:1}
execute as @e[tag=dupe] run data merge entity @s {transformation:{translation:[0f,0.5f,-0.4f]},view_range:0}