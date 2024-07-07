data merge entity @e[tag=lock50display,limit=1] {item:{id:"minecraft:string",Count:1b,tag:{CustomModelData:32}}}
execute at @e[tag=lock50] run tag @e[tag=automaticdoorlibrary,distance=..5] add closed
tag @e[tag=itemforsale] remove sold
execute as @e[tag=itemforsale] run data merge entity @s {Tags:["itemforsale"],CustomName:''}
scoreboard players reset slot1
scoreboard players reset slot2
scoreboard players reset slot3
scoreboard players reset slot4
scoreboard players reset slot5
execute as @e[tag=hiddenbook] run data merge entity @s {HandItems:[{id:"minecraft:air",Count:1b},{}]}
execute as @e[tag=hiddenbook] run tag @s remove glints
execute as @e[tag=hiddenbook] run tag @s remove book1
execute as @e[tag=hiddenbook] run tag @s remove book2
execute as @e[tag=hiddenbook] run tag @s remove book3
execute as @e[tag=hiddenbook] run tag @s remove book4
execute as @e[tag=hiddenbook] run tag @s remove book5
execute as @e[tag=solutionpaper] run item replace entity @s armor.head with air
data remove entity @e[tag=lock50,limit=1] interaction
execute as @e[tag=solutionpaper] run tag @s remove solutionpaper1
execute as @e[tag=solutionpaper] run tag @s remove solutionpaper2
execute as @e[tag=solutionpaper] run tag @s remove solutionpaper3
execute as @e[tag=door,scores={doornumber=50}] at @s run tag @e[tag=automaticdoorlibrary,limit=1,sort=nearest] remove closed
execute as ElitoSear run scoreboard players reset @s librarymusic
execute as ElitoSear run scoreboard players reset @s failedtoclick
execute as ElitoSear run scoreboard players reset @s clickleft
execute as ElitoSear run scoreboard players reset @s clickright
execute as @e run scoreboard players reset @s heartminigame
execute as ElitoSear run scoreboard players reset @s killedbyfigure
execute as ElitoSear run scoreboard players set @s muerte 0
execute as ElitoSear run tag @s remove atlibrary
execute as ElitoSear run tag @s remove screechexemption
execute as ElitoSear run tag @s remove killedbyothermeans
execute as ElitoSear run tag @s remove clickedleft
execute as ElitoSear run tag @s remove clickedright
stopsound ElitoSear
execute as @e[tag=figurepathlibrary] run tag @s remove checked
kill @e[tag=figure]
summon minecraft:zombified_piglin 208.50 64.00 -118.50 {NoGravity: 1b,Invulnerable: 1b, Tags: ["figure"], OnGround: 1b, NoAI: 1b, Rotation: [-90.0f, 0.0f],  CustomName: '{"bold":true,"color":"#CC6465","text":"Figure"}',Silent:1b,PersistenceRequired:1b}
fill 214 62 -135 215 62 -134 air
execute as @e[tag=door,scores={doornumber=50}] run scoreboard players reset @s librarystart

