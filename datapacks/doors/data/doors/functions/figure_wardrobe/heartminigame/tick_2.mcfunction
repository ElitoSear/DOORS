data merge entity @e[tag=figure,limit=1] {NoAI:1b}
execute align y run tp @e[tag=figure] ^ ^ ^2 facing entity @a[tag=atfigure,limit=1,sort=nearest]
execute on passengers at @s run playsound custom:misc.heart_minigame master @s
execute align y run summon interaction ^ ^1 ^ {Tags:["clickdetector"],response:1b}
execute align y run summon item_display ^ ^1.25 ^0.5 {Tags:["heartminigameleft"],item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:55}}}
execute align y run summon item_display ^ ^1.25 ^0.5 {Tags:["heartminigameright"],item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:54}}}
execute align y run summon item_display ^ ^1.25 ^0.5 {Tags:["heartminigame"]}
execute align y run summon item_display ^ ^1.65 ^0.5 {Tags:["heartminigametutorial"],item:{id:"minecraft:stick",Count:1,tag:{CustomModelData:51}}}
execute run data merge entity @e[tag=heartminigame,limit=1] {transformation:{translation:[0f,-1f,0f]}}
execute run data merge entity @e[tag=heartminigametutorial,limit=1] {transformation:{scale:[0.3f,0.3f,0.3f]}}
execute run data merge entity @e[tag=heartminigameleft,limit=1] {transformation:{translation:[-0.5f,0f,0f]},view_range:0f}
execute run data merge entity @e[tag=heartminigameright,limit=1] {transformation:{translation:[0.5f,0f,0f]},view_range:0f}
execute as @e[type=item_display,distance=..3,tag=!wardrobedisplay] positioned as @s rotated as @e[tag=figurewardrobe,sort=nearest,limit=1] run tp @s ~ ~ ~ ~180 ~