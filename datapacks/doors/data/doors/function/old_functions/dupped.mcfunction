execute at @s unless block ^ ^-1 ^ air run fill ^-1 ^-2 ^ ^2 ^2 ^ air replace #all_signs

execute if score @s dupedoornumber matches -3..-1 run data merge entity @s {text:'[{"text":"00"},{"score":{"name":"@s","objective":"dupedoornumber"}}]'}
execute if score @s dupedoornumber matches 0..9 run data merge entity @s {text:'[{"text":"00"},{"score":{"name":"@s","objective":"dupedoornumber"}}]'}
execute if score @s dupedoornumber matches 10..99 run data merge entity @s {text:'[{"text":"0"},{"score":{"name":"@s","objective":"dupedoornumber"}}]'}
execute if score @s dupedoornumber matches 100 run data merge entity @s {text:'[{"text":""},{"score":{"name":"@s","objective":"dupedoornumber"}}]'}

scoreboard players add @s[scores={dupedoorpick=1..10}] dupedoorpick 1

execute at @s if entity @a[distance=..20] unless entity @s[scores={dupedoorpick=1..}] run scoreboard players add @s dupedoorpick 1
execute at @s unless entity @a[distance=..20] run scoreboard players add @s dupedooroperation 1
scoreboard players set @s[scores={dupedooroperation=7..}] dupedooroperation 1

execute as @e[scores={dupedoorpick=2}] at @s run scoreboard players operation @s dupedoornumber = @a[distance=..20,limit=1,sort=nearest] playercurrentdoor
execute as @e[scores={dupedoorpick=3}] at @s if score @s dupedooroperation matches 1 run scoreboard players add @s dupedoornumber 1
execute as @e[scores={dupedoorpick=3}] at @s if score @s dupedooroperation matches 2 run scoreboard players add @s dupedoornumber 2
execute as @e[scores={dupedoorpick=3}] at @s if score @s dupedooroperation matches 3 run scoreboard players add @s dupedoornumber 3
execute as @e[scores={dupedoorpick=3}] at @s if score @s dupedooroperation matches 4 run scoreboard players remove @s dupedoornumber 1
execute as @e[scores={dupedoorpick=3}] at @s if score @s dupedooroperation matches 5 run scoreboard players remove @s dupedoornumber 2
execute as @e[scores={dupedoorpick=3}] at @s if score @s dupedooroperation matches 6 run scoreboard players remove @s dupedoornumber 3
execute as @e[scores={dupedoorpick=3}] at @s align xyz positioned ^ ^-2 ^-1 run execute as @e[tag=dupe,sort=nearest,limit=1] at @s rotated as @e[tag=dupped,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ ~
execute as @e[scores={dupedoorpick=3}] at @s align xyz positioned ^ ^-2 ^-1 run execute as @e[tag=dupe,sort=nearest,limit=1] at @s run data merge entity @s {transformation:{translation:[0f,0.5f,-0.4f]},view_range:0}
execute as @e[scores={dupedoorpick=3}] at @s align xyz positioned ^ ^-2 ^-1 run execute as @e[tag=dupe,sort=nearest,limit=1] at @s run data merge entity @s {transformation:{scale:[0f,0f,0f]},view_range:0}

execute at @s align xyz positioned ^ ^-2 ^-1 unless entity @e[tag=automaticdoor,distance=..1] run summon interaction ~0.5 ~ ~0.5 {Tags:["automaticdoor"],width:1.1f,height:2f}
execute at @s align xyz positioned ^ ^-2 ^-1 unless entity @e[tag=dupe,distance=..1] run summon item_display ~0.5 ~ ~0.5 {Tags:["dupe"],CustomName:'{"text":"Dupe","bold":true}',item:{id:"minecraft:string",Count:1b,tag:{CustomModelData:34}}}
