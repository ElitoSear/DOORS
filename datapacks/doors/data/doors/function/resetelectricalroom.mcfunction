setblock 792 65 -92 minecraft:lever[face=wall,facing=west,powered=false]
execute as ElitoSear run tag @s remove atelectrical
execute as ElitoSear run tag @s remove screechexemption
execute as ElitoSear run tag @s remove killedbyothermeans
execute as ElitoSear run tag @s remove clickedleft
execute as ElitoSear run tag @s remove clickedright
execute as ElitoSear run scoreboard players set @s muerte 0
execute as ElitoSear run scoreboard players reset @s killedbyfigure
execute as ElitoSear run scoreboard players reset @s unhinged2
execute as ElitoSear run scoreboard players reset @s unhinged2intense
execute as ElitoSear run tag @s remove clickedleft
execute as ElitoSear run tag @s remove clickedright
fill 766 64 -111 766 65 -111 minecraft:gray_stained_glass_pane replace air
fill 754 63 -106 752 67 -106 minecraft:iron_bars replace air
fill 764 63 -96 764 67 -94 iron_bars replace air
fill 767 63 -90 765 67 -90 minecraft:iron_bars replace air
fill 793 65 -93 793 65 -97 barrier replace air
fill 779 64 -96 779 66 -94 air replace light[level=15]
fill 778 66 -96 778 64 -94 air replace minecraft:barrier
fill 798 72 -86 798 70 -84 air replace minecraft:iron_bars
fill 765 63 -108 768 63 -96 air replace fire
tag d6e6ea31-9134-4e06-a16a-c4582b12b2e4 remove closed
stopsound ElitoSear
scoreboard players reset @e[scores={electricalstart=1..}] electricalstart
execute as @e[tag=firefromelectrical] run data merge entity @s {view_range:0f}
tag @e[tag=electricalkey] remove electricalkey
execute as @e[tag=figurewardrobe] run scoreboard players reset @s hearminigame
scoreboard players reset progresslevel breakerprogress
scoreboard players reset @e electricalcinematic2
scoreboard players reset @e electricalcinematic3
scoreboard players reset @e electricalcinematic4
scoreboard players reset @e breakerpuzzle
scoreboard players reset @e[tag=!switchpick] breaker
scoreboard players reset @e breakernumber
execute as @e[tag=figurepathelectrical] run tag @s remove checked
execute as @e[tag=figurepathelectrical2] run tag @s remove checked
execute as @e[tag=figurepathelectrical3] run tag @s remove checked
tag @e[tag=switchdisplay] remove placed
tag @e[tag=switch] remove powered
tag @e[tag=breakerinteraction] remove openbreaker
execute as @e[tag=breakerinteraction] at @e[tag=protectbreaker] positioned ~ ~-4 ~ if entity @s[distance=..3] run execute at @s run tp @s ~ ~4 ~
scoreboard players reset count switches
execute as @e[tag=switchdisplay] run data merge entity @s {transformation:{translation:[0.0f,0.0f,0.2f]},start_interpolation:0,interpolation_duration:5,view_range:0}
execute as @e[tag=electricalroomslidingdoor] run data merge entity @s {transformation:{translation:[0.0f,0.0f,0f]}}
data merge entity @e[tag=breakercover,limit=1] {transformation:{right_rotation:[0f,0f,0f,1f]},start_interpolation:0,interpolation_duration:8}
tag @e[tag=electricalroomdoor] add closed
item replace entity @e[tag=hiddenelectricalkey] armor.head with air
item replace entity @e[tag=hiddenswitch] armor.head with air
kill @e[tag=figure]
kill @e[tag=camera]
summon minecraft:zombified_piglin 803.5 69.0 -101.5 {NoGravity:1b,Invulnerable:1b,Tags: ["figure"], OnGround: 1b, NoAI: 1b,CustomName: '{"bold":true,"color":"#CC6465","text":"Figure"}',Silent:1b,PersistenceRequired:1b}
data merge entity @e[tag=screennumber,limit=1] {item:{id:"minecraft:iron_ingot",Count:1b,tag:{CustomModelData:3}}}
data merge entity @e[tag=screenstage,limit=1] {item:{id:"minecraft:iron_ingot",Count:1b,tag:{CustomModelData:17}}}
data merge entity @e[tag=screenprogress,limit=1] {item:{id:"minecraft:iron_ingot",Count:1b,tag:{CustomModelData:21}}}
data merge entity @e[tag=screenstate,limit=1] {item:{id:"minecraft:iron_ingot",Count:1b,tag:{CustomModelData:15}}}
