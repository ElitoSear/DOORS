execute at @s align xyz positioned ~0.5 ~ ~0.5 if entity @e[type=zombified_piglin,tag=figure,distance=..4] if entity @e[type=player,distance=..1] unless score @s heartminigame matches 1.. run scoreboard players add @s heartminigame 1
execute if entity @s[scores={heartminigame=2}] at @s run function doors:figure_wardrobe/heartminigame/tick_2
execute if entity @s[scores={heartminigame=22}] at @s run data merge entity @e[tag=heartminigame,sort=nearest,limit=1] {transformation:{translation:[0f,0f,0f]},start_interpolation:0,interpolation_duration:3,item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:52}}}
execute if entity @s[scores={heartminigame=76}] at @s run kill @e[tag=heartminigametutorial]
execute if entity @s[scores={heartminigame=66}] run scoreboard players add @s clickleft 1
execute if entity @s[scores={heartminigame=76}] run scoreboard players add @s clickright 1
execute if entity @s[scores={heartminigame=96}] run scoreboard players add @s clickleft 1
execute if entity @s[scores={heartminigame=106}] run scoreboard players add @s clickright 1
execute if entity @s[scores={heartminigame=126}] run scoreboard players add @s clickleft 1
execute if entity @s[scores={heartminigame=136}] run scoreboard players add @s clickright 1
execute if entity @s[scores={heartminigame=156}] run scoreboard players add @s clickleft 1
execute if entity @s[scores={heartminigame=166}] run scoreboard players add @s clickright 1
execute if entity @s[scores={heartminigame=186}] run scoreboard players add @s clickleft 1
execute if entity @s[scores={heartminigame=196}] run scoreboard players add @s clickright 1
execute if entity @s[scores={heartminigame=216}] run scoreboard players add @s clickleft 1
execute if entity @s[scores={heartminigame=226}] run scoreboard players add @s clickright 1
execute if entity @s[scores={heartminigame=246}] run scoreboard players add @s clickleft 1
execute if entity @s[scores={heartminigame=256}] run scoreboard players add @s clickright 1
execute if entity @s[scores={heartminigame=276}] run scoreboard players add @s clickleft 1
execute if entity @s[scores={heartminigame=286}] run scoreboard players add @s clickright 1
execute if entity @s[scores={heartminigame=306}] run scoreboard players add @s clickleft 1
execute if entity @s[scores={heartminigame=341}] at @s run tp @e[tag=figure] ~ ~-16 ~
execute if entity @s[scores={heartminigame=341}] as @e[tag=figure] run kill @s
execute if entity @s[scores={heartminigame=342}] at @s align y run summon minecraft:zombified_piglin ^ ^ ^2 {Invulnerable: 1b, Tags: ["figure"], OnGround: 1b, NoAI: 0b,  CustomName: '{"bold":true,"color":"#CC6465","text":"Figure"}',CustomNameVisible:0b,PersistenceRequired:1b}
execute if entity @s[scores={heartminigame=342}] at @s align y run tp @e[tag=figure] ^ ^ ^2 facing entity @a[tag=atfigure,limit=1,sort=nearest]
execute if entity @s[scores={heartminigame=440}] at @s run data merge entity @e[tag=heartminigame,sort=nearest,limit=1] {transformation:{translation:[0f,-1f,0f]},start_interpolation:0,interpolation_duration:6}
execute if entity @s[scores={heartminigame=446}] at @s run function doors:figure_wardrobe/heartminigame/tick_446
execute if entity @s[scores={heartminigame=340..}] at @s align y unless entity @e[tag=figure,distance=..6] run scoreboard players reset @a[distance=..1] walk
execute if entity @s[scores={heartminigame=340..}] at @s align y unless entity @e[tag=figure,distance=..6] run scoreboard players reset @a[distance=..1] running
execute if entity @s[scores={heartminigame=447..}] at @s align y unless entity @e[tag=figure,distance=..6] run scoreboard players reset @s heartminigame
execute if entity @s[scores={heartminigame=1..}] at @s align y if entity @e[tag=figure,distance=..8] on passengers unless entity @s[tag=atfigure] run scoreboard players set @s wardrobewarning 2

execute if entity @s[scores={clickright=2}] at @s run function doors:figure_wardrobe/clickright/tick_2
execute if entity @s[scores={clickright=20}] at @s run function doors:figure_wardrobe/clickright/tick_20

execute if entity @s[scores={clickleft=2}] at @s run function doors:figure_wardrobe/clickleft/tick_2
execute if entity @s[scores={clickleft=20}] at @s run function doors:figure_wardrobe/clickleft/tick_20

execute if entity @s[scores={failedtoclick=2}] at @s run data merge entity @e[tag=heartminigame,limit=1,sort=nearest] {item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:53}}}
execute if entity @s[scores={failedtoclick=4}] at @s run data merge entity @e[tag=heartminigame,limit=1,sort=nearest] {item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:52}}}