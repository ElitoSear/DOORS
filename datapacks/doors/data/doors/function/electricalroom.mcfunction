#Figure

execute as @e[tag=figure] at @s run tag @e[tag=figurepathelectrical,distance=..0.5] add checked

        #Heart Mini-Game
execute as @e[tag=figurewardrobe] run function doors:figurewardrobe

execute as @a[scores={wardrobewarning=2}] at @s run function doors:wardrobewarning


scoreboard players add @e[scores={failedtoclick=1..}] failedtoclick 1
scoreboard players add @e[scores={clickleft=1..}] clickleft 1
scoreboard players add @e[scores={clickright=1..}] clickright 1
scoreboard players reset @e[scores={clickleft=22..}] clickleft
scoreboard players reset @e[scores={clickright=22..}] clickright
scoreboard players reset @e[scores={failedtoclick=5..}] failedtoclick

execute as @a[tag=atfigure] run function doors:figure_wardrobe/inside_figure_wardrobe_tag

scoreboard players add @e[scores={heartminigame=1..}] heartminigame 1

#Figure Killing
execute as @a if predicate doors:is_sneaking run scoreboard players reset @s running
execute as @a if predicate doors:is_sneaking run scoreboard players reset @s walk

execute as @a[scores={running=15..},tag=atelectrical] at @s if entity @e[scores={electricalstart=350..}] unless entity @e[scores={electricalcinematic2=1..}] unless entity @a[scores={killedbyfigure=1..}] run attribute @e[tag=figure,limit=1,sort=nearest] generic.movement_speed base set 0.4
execute as @a[scores={running=15..},tag=atelectrical] at @s if entity @e[scores={electricalstart=350..}] unless entity @e[scores={electricalcinematic2=1..}] run data modify entity @e[tag=figure,limit=1,sort=nearest] AngryAt set from entity @s UUID


execute as @a[scores={walk=500..},tag=atelectrical] at @s if entity @e[scores={electricalstart=350..}] unless entity @e[scores={electricalcinematic2=1..}] unless entity @a[scores={killedbyfigure=1..}] run attribute @e[tag=figure,limit=1,sort=nearest] generic.movement_speed base set 0.4
execute as @a[scores={walk=500..},tag=atelectrical] if entity @e[scores={electricalstart=350..}] unless entity @e[scores={electricalcinematic2=1..}] at @s run data modify entity @e[tag=figure,limit=1,sort=nearest] AngryAt set from entity @s UUID


execute as @e[tag=figure] at @s run execute as @a[tag=atelectrical,distance=0..24] if predicate doors:is_sprinting run scoreboard players add @s running 1
execute as @e[tag=figure] at @s run execute as @a[tag=atelectrical,distance=12..] run scoreboard players reset @s walk


execute as @e[tag=figure] at @s if entity @e[scores={electricalstart=300..}] unless entity @s[scores={crucifixfailed=1..}] unless entity @e[scores={heartminigame=1..}] run execute as @a[tag=atelectrical,distance=..2,gamemode=adventure] unless entity @s[scores={killedbyfigure=1..}] run scoreboard players add @s killedbyfigure 1
execute as @e[tag=figure,scores={crucifixfailed=1..2}] run data merge entity @s {NoAI:1b}
execute as @e[tag=figure,scores={crucifixfailed=120}] run data merge entity @s {NoAI:0b}

execute as @e[tag=figure] at @s if entity @a[tag=atelectrical,distance=..2] run attribute @s generic.movement_speed base set 0.23

execute as @e[tag=figure] unless entity @s[nbt={ActiveEffects:[{Id:18}]}] run effect give @s weakness infinite 127 true
# Electrical Room

execute as @e[tag=door,scores={doornumber=100}] run function doors:electricalroomstart

execute as @e[scores={electricallight=2}] at @s run setblock ~ ~1 ~ end_rod[facing=down]
execute as @e[scores={electricallight=70}] at @s run setblock ~ ~1 ~ calcite
execute as @e[scores={electricallight=70}] at @s run playsound doors:misc.electrical_roof_light master @a ~ ~1 ~
scoreboard players add @e[scores={electricallight=1..}] electricallight 1
scoreboard players set @e[tag=electricalroomlight,scores={electricallight=150..}] electricallight 1

execute as @a[scores={unhinged2=2}] at @s run playsound doors:music.unhinged_2_intense voice @s
execute as @a[scores={unhinged2=200}] run stopsound @s * doors:music.unhinged_2_intense
execute as @a[scores={unhinged2=1054..}] run scoreboard players set @s unhinged2 201
execute as @a[scores={unhinged2=201}] at @s run playsound doors:music.unhinged_2 voice @s
execute as @a[scores={unhinged2=1..}] run scoreboard players add @s unhinged2 1

execute as @e[tag=switch,tag=powered] run scoreboard players set @s breaker 1
execute as @e[tag=switch,tag=!powered] run scoreboard players set @s breaker 0

item replace entity @e[tag=electricalkey] armor.head with feather{CustomModelData:13,display:{Name:'{"translate":"item.doors.electrical_key","italic":false}'}}

execute as @e[tag=hiddenswitch] at @s unless entity @s[nbt={ArmorItems:[{},{},{},{id:"minecraft:iron_ingot"}]}] run tag @s remove glints
execute as @e[tag=hiddenelectricalkey] at @s unless entity @s[nbt={ArmorItems:[{},{},{},{id:"minecraft:string"}]}] run tag @s remove glints

execute as @e[tag=electricalroomdoor] at @s run function doors:electrical_room_door/main

execute as @e[tag=switch,tag=powered,nbt={interaction:{}}] run function doors:unpowerswitch
execute as @e[tag=switch,tag=!powered,nbt={interaction:{}}] run function doors:powerswitch
execute as @e[tag=switch1,tag=powered] run data merge entity @e[tag=switch1display,limit=1] {item:{id:"minecraft:iron_ingot",Count:1b,tag:{CustomModelData:33}}}
execute as @e[tag=switch2,tag=powered] run data merge entity @e[tag=switch2display,limit=1] {item:{id:"minecraft:iron_ingot",Count:1b,tag:{CustomModelData:33}}}
execute as @e[tag=switch3,tag=powered] run data merge entity @e[tag=switch3display,limit=1] {item:{id:"minecraft:iron_ingot",Count:1b,tag:{CustomModelData:33}}}
execute as @e[tag=switch4,tag=powered] run data merge entity @e[tag=switch4display,limit=1] {item:{id:"minecraft:iron_ingot",Count:1b,tag:{CustomModelData:33}}}
execute as @e[tag=switch5,tag=powered] run data merge entity @e[tag=switch5display,limit=1] {item:{id:"minecraft:iron_ingot",Count:1b,tag:{CustomModelData:33}}}
execute as @e[tag=switch6,tag=powered] run data merge entity @e[tag=switch6display,limit=1] {item:{id:"minecraft:iron_ingot",Count:1b,tag:{CustomModelData:33}}}
execute as @e[tag=switch7,tag=powered] run data merge entity @e[tag=switch7display,limit=1] {item:{id:"minecraft:iron_ingot",Count:1b,tag:{CustomModelData:33}}}
execute as @e[tag=switch8,tag=powered] run data merge entity @e[tag=switch8display,limit=1] {item:{id:"minecraft:iron_ingot",Count:1b,tag:{CustomModelData:33}}}
execute as @e[tag=switch9,tag=powered] run data merge entity @e[tag=switch9display,limit=1] {item:{id:"minecraft:iron_ingot",Count:1b,tag:{CustomModelData:33}}}
execute as @e[tag=switch10,tag=powered] run data merge entity @e[tag=switch10display,limit=1] {item:{id:"minecraft:iron_ingot",Count:1b,tag:{CustomModelData:33}}}
execute as @e[tag=switch1,tag=!powered] run data merge entity @e[tag=switch1display,limit=1] {item:{id:"minecraft:iron_ingot",Count:1b,tag:{CustomModelData:32}}}
execute as @e[tag=switch2,tag=!powered] run data merge entity @e[tag=switch2display,limit=1] {item:{id:"minecraft:iron_ingot",Count:1b,tag:{CustomModelData:32}}}
execute as @e[tag=switch3,tag=!powered] run data merge entity @e[tag=switch3display,limit=1] {item:{id:"minecraft:iron_ingot",Count:1b,tag:{CustomModelData:32}}}
execute as @e[tag=switch4,tag=!powered] run data merge entity @e[tag=switch4display,limit=1] {item:{id:"minecraft:iron_ingot",Count:1b,tag:{CustomModelData:32}}}
execute as @e[tag=switch5,tag=!powered] run data merge entity @e[tag=switch5display,limit=1] {item:{id:"minecraft:iron_ingot",Count:1b,tag:{CustomModelData:32}}}
execute as @e[tag=switch6,tag=!powered] run data merge entity @e[tag=switch6display,limit=1] {item:{id:"minecraft:iron_ingot",Count:1b,tag:{CustomModelData:32}}}
execute as @e[tag=switch7,tag=!powered] run data merge entity @e[tag=switch7display,limit=1] {item:{id:"minecraft:iron_ingot",Count:1b,tag:{CustomModelData:32}}}
execute as @e[tag=switch8,tag=!powered] run data merge entity @e[tag=switch8display,limit=1] {item:{id:"minecraft:iron_ingot",Count:1b,tag:{CustomModelData:32}}}
execute as @e[tag=switch9,tag=!powered] run data merge entity @e[tag=switch9display,limit=1] {item:{id:"minecraft:iron_ingot",Count:1b,tag:{CustomModelData:32}}}
execute as @e[tag=switch10,tag=!powered] run data merge entity @e[tag=switch10display,limit=1] {item:{id:"minecraft:iron_ingot",Count:1b,tag:{CustomModelData:32}}}

execute as @a if entity @s[nbt={Inventory:[{id:"minecraft:iron_ingot",tag:{CustomModelData:32}}]}] run tag @e[tag=switchdisplay,sort=random,tag=!placed,limit=1] add placed
execute as @a at @s if entity @s[nbt={Inventory:[{id:"minecraft:iron_ingot",tag:{CustomModelData:32}}]}] run playsound entity.item.pickup master @s
execute as @a at @s if entity @s[nbt={Inventory:[{id:"minecraft:iron_ingot",tag:{CustomModelData:32}}]}] if score count switches matches 0 run title @s[tag=!atrooms] actionbar {"text": "\uE001"}
execute as @a at @s if entity @s[nbt={Inventory:[{id:"minecraft:iron_ingot",tag:{CustomModelData:32}}]}] if score count switches matches 1 run title @s[tag=!atrooms] actionbar {"text": "\uE002"}
execute as @a at @s if entity @s[nbt={Inventory:[{id:"minecraft:iron_ingot",tag:{CustomModelData:32}}]}] if score count switches matches 2 run title @s[tag=!atrooms] actionbar {"text": "\uE003"}
execute as @a at @s if entity @s[nbt={Inventory:[{id:"minecraft:iron_ingot",tag:{CustomModelData:32}}]}] if score count switches matches 3 run title @s[tag=!atrooms] actionbar {"text": "\uE004"}
execute as @a at @s if entity @s[nbt={Inventory:[{id:"minecraft:iron_ingot",tag:{CustomModelData:32}}]}] if score count switches matches 4 run title @s[tag=!atrooms] actionbar {"text": "\uE005"}
execute as @a at @s if entity @s[nbt={Inventory:[{id:"minecraft:iron_ingot",tag:{CustomModelData:32}}]}] if score count switches matches 5 run title @s[tag=!atrooms] actionbar {"text": "\uE006"}
execute as @a at @s if entity @s[nbt={Inventory:[{id:"minecraft:iron_ingot",tag:{CustomModelData:32}}]}] if score count switches matches 6 run title @s[tag=!atrooms] actionbar {"text": "\uE007"}
execute as @a at @s if entity @s[nbt={Inventory:[{id:"minecraft:iron_ingot",tag:{CustomModelData:32}}]}] if score count switches matches 7 run title @s[tag=!atrooms] actionbar {"text": "\uE008"}
execute as @a at @s if entity @s[nbt={Inventory:[{id:"minecraft:iron_ingot",tag:{CustomModelData:32}}]}] if score count switches matches 8 run title @s[tag=!atrooms] actionbar {"text": "\uE009"}
execute as @a at @s if entity @s[nbt={Inventory:[{id:"minecraft:iron_ingot",tag:{CustomModelData:32}}]}] if score count switches matches 9 run title @s[tag=!atrooms] actionbar {"text": "\uE010"}
execute as @a if entity @s[nbt={Inventory:[{id:"minecraft:iron_ingot",tag:{CustomModelData:32}}]}] run clear @s iron_ingot{CustomModelData:32}
execute if entity @e[tag=breakerinteraction,nbt={interaction:{}}] run execute as @e[tag=switchdisplay,tag=placed] run data merge entity @s {transformation:{translation:[0.0f,0.0f,0.0f]},start_interpolation:0,interpolation_duration:8,view_range:1}
execute store result score count switches if entity @e[tag=placed,tag=switchdisplay]
execute as @e[tag=breakerinteraction] at @s if entity @s[nbt={interaction:{}},tag=!openbreaker] run data merge entity @e[tag=breakercover,limit=1] {transformation:{right_rotation:[0f,-0.995f,0f,0.099f]},start_interpolation:0,interpolation_duration:8}
execute as @e[tag=breakerinteraction] at @s if entity @s[nbt={interaction:{}},tag=!openbreaker] run tag @s add openbreaker
execute as @e[tag=breakerinteraction] at @s if entity @s[nbt={interaction:{}}] if score count switches matches 10 run tp @s ~ ~-4 ~
execute as @e[tag=breakerinteraction] at @s if entity @s[nbt={interaction:{}}] if score count switches matches 10 run execute as @e[tag=door,scores={doornumber=100}] unless entity @s[scores={electricalcinematic2=1..}] run scoreboard players add @s electricalcinematic2 1
execute as @e[tag=breakerinteraction] at @s if entity @s[nbt={interaction:{}}] run data remove entity @s interaction

execute as @e[tag=firefromelectrical] at @s positioned ^1.5 ^ ^1.5 if entity @s[nbt={view_range:1f}] run execute as @a[distance=..1,limit=1] run damage @s 5

execute as @e[tag=figure] at @s if entity @e[scores={electricalcinematic2=1..60}] run tag @e[tag=figurepathelectrical2,distance=..1] add checked
execute as @e[tag=figure] at @s if entity @e[scores={electricalcinematic2=115..180}] run tag @e[tag=figurepathelectrical3,distance=..1] add checked
execute as @e[tag=figure] at @s if entity @e[scores={electricalcinematic2=1..60}] run tp @s ^ ^ ^0.25 facing entity @e[tag=figurepathelectrical2,sort=nearest,limit=1,tag=!checked]
execute as @e[tag=figure] at @s if entity @e[scores={electricalcinematic2=115..180}] run tp @s ^ ^ ^0.3 facing entity @e[tag=figurepathelectrical3,sort=nearest,limit=1,tag=!checked]



execute as @a[scores={unhinged2intense=2}] at @s run playsound doors:music.unhinged_2_intense voice @s
scoreboard players set @a[scores={unhinged2intense=853..}] unhinged2intense 1
scoreboard players add @a[scores={unhinged2intense=1..}] unhinged2intense 1


scoreboard players set @e[tag=switchpickon] breaker 1
scoreboard players set @e[tag=switchpickoff] breaker 0


execute if entity @e[scores={breakerpuzzle=1030..}] run scoreboard players reset @e[scores={electricalcinematic2=1..}] electricalcinematic2
execute if entity @e[scores={breakerpuzzle=1030..}] run scoreboard players set @e[tag=door,scores={doornumber=100}] electricalcinematic3 1
execute if entity @e[scores={breakerpuzzle=1030..}] run scoreboard players reset @e[scores={breakerpuzzle=1030..}] breakerpuzzle
