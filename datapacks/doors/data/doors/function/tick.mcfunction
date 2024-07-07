#Guiding Light Message Moving
setworldspawn 34 63 -50 -12
spawnpoint @a 34 63 -50 -12

execute if score movement guiding_light_message matches 1 run function doors:guiding_light/moving_right
execute if score movement guiding_light_message matches 100 run function doors:guiding_light/moving_left
scoreboard players add movement guiding_light_message 1
execute if score movement guiding_light_message matches 201 run scoreboard players set movement guiding_light_message 1

#Player is in lobby
execute as @a run function doors:executeasa

execute if entity @e[tag=void,scores={reception=1..}] run function doors:max_score

#kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:written_book",tag:{title:"Credits"}}}]
gamemode adventure @a[gamemode=survival]
spawnpoint @a 34 63 -50
#Count Players
execute store result score player_count playercount run execute if entity @a
#Key for every locked door
execute as @e[type=marker,tag=ishiddenkey] at @s run item replace block ~ ~-1 ~ container.13 with minecraft:string{CustomModelData:13,display:{Name:'{"translate":"item.doors.key","italic":false}'}}
execute as @e[type=armor_stand,tag=ishiddenkey] run data merge entity @s {ArmorItems:[{},{},{},{Count:1b,id:"minecraft:string",tag:{CustomModelData:13,display:{Name:'{"translate":"item.doors.key","italic":false}'}}}]}

execute as @e[type=interaction,tag=lock] at @s run function doors:lock/main
#Start game
execute as @e[scores={doornumber=1,generating=12}] at @s run tag @e[tag=automaticdoor,sort=nearest,limit=1] add closed
execute as @e[tag=void] run function doors:gamestarts

#Void
execute as @a[limit=1,tag=leader,tag=!atrooms] at @s as @a[tag=!leader,distance=70..,tag=!atrooms] unless score @s voidtime matches 1184.. unless score @s guiding_light_message matches 1.. unless score @s lobbytime matches 1.. run scoreboard players add @s voidtime 1
execute as @e[tag=void] run function doors:resetrun

#Elevator Jam Skip
execute if entity @e[scores={reception=1..}] as @e[type=interaction,tag=skipelevatorjam] at @s run function doors:elevatorjamskip
#Necesary for everydoor
execute as @e[tag=basementdoor,tag=!closed] at @s run fill ^-1 ^ ^1 ^2 ^1 ^1 air replace #all_signs

execute as @e[type=text_display,tag=door] run function doors:door

execute as @e[type=text_display,tag=roomsdoor] run function doors:roomsdoor
#Eyes on lobby
execute positioned 14 63 -50 run execute as @e[tag=eye,distance=..10] at @s run tp @s ~ ~ ~ facing entity @a[sort=nearest,limit=1,distance=..10] eyes
#Lobby bell
execute as @e[type=interaction,tag=bell] run function doors:bell
#Elevator System 
execute as @e[tag=elevatorcountdown] run function doors:elevatorcountdown
execute as @e[tag=elevatorplayercount] run function doors:elevatorplayercount
#Display gold quantity whenever near Jeff TRANSLATE
execute as @e[type=interaction,tag=jeffsjingle] at @s as @a[distance=..5] if score @s gold matches 1.. run title @s actionbar [{"translate":"text.doors.you_have"},{"score":{"name":"@s","objective":"gold"},"bold":true,"color":"yellow"},{"translate":"text.doors.many_gold"}]
execute as @e[type=interaction,tag=jeffsjingle] at @s as @a[distance=..5] if score @s gold matches 0 run title @s actionbar [{"translate":"text.doors.without_gold"}]
#Delete dropped keys
kill @e[type=item,nbt={Item:{id:"minecraft:feather",tag:{CustomModelData:13}}}]
kill @e[type=item,nbt={Item:{id:"minecraft:string",tag:{CustomModelData:13}}}]
#Vitamins
stopsound @a * minecraft:entity.snowball.throw

#Stop Dawn of the Doors whenever someone opens a book in singleplayer

execute unless score player_count playercount matches 2.. run function doors:unlessmultiplayer
execute if score player_count playercount matches 2.. run function doors:ifmultiplayer

#Hiding System (Beds and Wardrobes)

execute as @e[type=interaction,tag=hidinginteraction] at @s run function doors:beenkickedout

execute as @e[type=interaction,tag=wardrobe] run function doors:hiding/wardrobe
execute as @e[type=interaction,tag=wardrobeinteraction] run function doors:hiding/wardrobeinteraction

execute as @e[type=interaction,tag=bed] run function doors:hiding/bed
execute as @e[type=interaction,tag=bedinteraction] run function doors:hiding/bedinteraction

execute as @e[type=interaction,tag=locker] run function doors:hiding/locker
execute as @e[type=interaction,tag=lockerinteraction] run function doors:hiding/lockerinteraction

execute as @e[type=interaction,tag=figurewardrobe] run function doors:hiding/figurewardrobe
execute as @e[type=interaction,tag=figurewardrobeinteraction] run function doors:hiding/figurewardrobeinteraction
#Jack
execute as @e[scores={jack=2},tag=automaticdoor] at @s positioned as @s rotated as @e[tag=door,limit=1,sort=nearest] run summon item_display ^ ^0.5 ^-4 {item:{id:"minecraft:string",Count:1b,tag:{CustomModelData:116}},Tags:["jack"]}
execute as @e[scores={jack=2},tag=automaticdoor] at @s run execute as @e[tag=jack,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ facing entity @a[sort=nearest,limit=1]
execute as @e[scores={jack=2},tag=wardrobe] at @s align xyz run summon item_display ~0.5 ~0.5 ~0.5 {item:{id:"minecraft:string",Count:1b,tag:{CustomModelData:116}},Tags:["jack"]}
execute as @e[scores={jack=2},tag=wardrobe] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run execute as @e[tag=jack,limit=1,sort=nearest] run tp @s ~ ~ ~ ~ ~
execute as @e[scores={jack=2}] at @s run playsound custom:entity.jack.jumpscare master @a
execute as @e[scores={jack=8}] at @s run kill @e[tag=jack,limit=1,sort=nearest]
execute as @e[scores={jack=8}] at @s run advancement grant @a[distance=..5,gamemode=adventure] only doors:achievements/achievement13
execute as @e[scores={jack=9..}] at @s run scoreboard players reset @s jack
scoreboard players add @e[scores={jack=1..}] jack 1
#Shadow
execute as @e[scores={shadow=2}] at @s positioned as @s rotated as @e[tag=door,limit=1,sort=nearest] run summon item_display ^ ^0.5 ^-4 {item:{id:"minecraft:string",Count:1b,tag:{CustomModelData:121}},Tags:["shadow"]}
execute as @e[scores={shadow=2}] at @s run execute as @e[tag=shadow,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ facing entity @a[sort=nearest,limit=1]
execute as @e[scores={shadow=2}] at @s run playsound custom:entity.shadow.jumpscare master @a
execute as @e[scores={shadow=6}] at @s run kill @e[tag=shadow,limit=1,sort=nearest]
execute as @e[scores={shadow=7..}] at @s run scoreboard players reset @s shadow
scoreboard players add @e[scores={shadow=1..}] shadow 1
#FNAF2 Sound
execute as @e[tag=window] at @s positioned ~13.5 ~ ~5.5 run function doors:window
#Timothy
execute as @e[tag=timothy] at @s run tp @s ~ ~ ~ facing entity @p[scores={timothytriggered=1..}]
#Library
execute if entity @e[tag=door,scores={doornumber=50}] run function doors:library
#Eyes
execute as @e[type=armor_stand,tag=eyes] run function doors:eyes

execute as @e[tag=hiddenswitch] unless entity @s[nbt={ArmorItems:[{},{},{},{id:"minecraft:iron_ingot"}]}] run scoreboard players reset @s shimmering
execute as @e[scores={shimmering=600..},type=armor_stand] at @s run particle minecraft:dust 0 1 1 0.5 ~ ~2 ~ 0.3 0.3 0.3 0 1 force
execute as @e[scores={shimmering=600..},type=marker] at @s run particle minecraft:dust 0 1 1 0.5 ~ ~-0.9 ~ 0.3 0.3 0.3 0 1 force
execute as @e[scores={shimmering=600}] at @s run tag @s add glints
#Rift System
function doors:riftitems
#Rift Sound
execute at @e[tag=riftlobby] run stopsound @a[tag=!rifted,distance=16..17] * custom:misc.rift
execute at @e[tag=riftlobby] run scoreboard players reset @a[tag=!rifted,distance=..16] riftsoundlobby
        #Open automatic doors
#Common door
execute as @e[type=interaction,tag=automaticdoor] run function doors:automaticdoor
#Seek Door
execute as @e[type=interaction,tag=automaticdoorseek] unless entity @s[tag=closed] at @s positioned ~ ~0.5 ~ if entity @a[distance=..6,tag=atseek] run setblock ~ ~-2 ~ minecraft:redstone_torch
execute as @e[type=interaction,tag=automaticdoorseek] if entity @s[tag=closed] at @s run setblock ~ ~-2 ~ minecraft:air
#Library Door
execute as @e[type=interaction,tag=automaticdoorlibrary] unless entity @s[tag=closed] at @s positioned ~ ~0.5 ~ if entity @a[distance=..4,gamemode=adventure] run fill ^-1 ^-2 ^-1 ^ ^-2 ^ minecraft:redstone_torch
execute as @e[type=interaction,tag=automaticdoorlibrary] if entity @s[tag=closed] at @s positioned ~ ~0.5 ~ if entity @a[distance=..4,gamemode=adventure] run fill ^-1 ^-2 ^-1 ^ ^-2 ^ minecraft:air
#Green Herb TRANSLATE
execute as @e[type=interaction,tag=greenherb] run function doors:greenherb
#Skeleton Lock at the Infirmary
execute as @e[type=interaction,tag=skeletonlock] at @s if entity @s[nbt={interaction:{}}] run function doors:lock/skeleton/main
#Skeleton Lock at A-000
execute as @e[type=interaction,tag=a000] at @s unless entity @e[distance=..3,tag=locked] run tag @s remove closed
#Locks at A-000

#eion
  #Crucifix Spins
execute as @e[tag=crucifix] run function doors:crucifix
  #Crucifixed entity
scoreboard players add @e[scores={crucifixed=1..}] crucifixed 1
scoreboard players add @e[scores={crucifixfailed=1..120}] crucifixfailed 1
scoreboard players reset @e[scores={crucifixfailed=121..}] crucifixfailed
    #specific entity sound
execute as @e[scores={crucifixed=2}] at @s if entity @s[tag=halt] run playsound custom:entity.halt.crucifixed master @a
execute as @e[scores={crucifixed=2}] at @s if entity @s[tag=rush] run playsound custom:entity.rush.crucifixed master @a
execute as @e[scores={crucifixed=2}] at @s if entity @s[tag=eyes] run playsound custom:entity.eyes.crucifixed master @a
execute as @e[scores={crucifixed=2}] at @s if entity @s[tag=screech] run playsound custom:entity.screech.crucifixed master @a
execute as @e[scores={crucifixed=2}] at @s if entity @s[tag=ambush] run playsound custom:entity.ambush.crucifixed master @a
    #Summoning of circles and spinning
execute as @e[tag=spinsslowly] at @s run tp @s ~ ~ ~ ~18 ~
execute as @e[tag=crucifixcircle] run data merge entity @s {transformation:{translation:[0f,0.5f,0f]}}
execute as @e[scores={crucifixed=2}] at @s align y run summon item_display ~ ~ ~ {Tags:["innercircle","crucifixcircle"],item:{id:"minecraft:torch",Count:1b,tag:{CustomModelData:4}}}
execute as @e[scores={crucifixed=2}] at @s align y run summon item_display ~ ~ ~ {Tags:["outercircle","spinsslowly","crucifixcircle"],item:{id:"minecraft:torch",Count:1b,tag:{CustomModelData:6}}}
execute as @e[scores={crucifixed=2}] at @s align y run summon item_display ~ ~ ~ {Tags:["crucifixchains","spinsslowly","crucifixcircle"],item:{id:"minecraft:torch",Count:1b,tag:{CustomModelData:8}}}
execute as @e[scores={crucifixed=2}] at @s align y run summon item_display ~ ~ ~ {Tags:["crucifixchains","spinsslowly","crucifixcircle"],item:{id:"minecraft:torch",Count:1b,tag:{CustomModelData:8}}}
execute as @e[scores={crucifixed=2}] at @s run fill ~ ~1 ~ ~ ~1 ~ light[level=15] replace air
execute as @e[scores={crucifixed=2}] at @s run item replace entity @s weapon.offhand with soul_torch{CustomModelData:1}
execute as @e[scores={crucifixed=88}] at @s run data merge entity @e[tag=crucifixchains,limit=1,sort=nearest] {transformation:{scale:[1f,1.5f,1f]},start_interpolation:0,interpolation_duration:22}
execute as @e[scores={crucifixed=88..100}] at @s run tp @s ~ ~0.015 ~
execute as @e[scores={crucifixed=100}] at @s run data merge entity @e[tag=crucifixchains,limit=1,sort=nearest] {transformation:{scale:[1f,0f,1f]},start_interpolation:0,interpolation_duration:10}
execute as @e[scores={crucifixed=100..110}] at @s run tp @s ~ ~-0.3 ~
execute as @e[scores={crucifixed=110}] at @s run kill @e[tag=spinsslowly,distance=..10]
execute as @e[scores={crucifixed=120}] at @s run kill @e[tag=innercircle,distance=..10]
execute as @e[scores={crucifixed=120}] at @s run fill ~ ~1 ~ ~ ~5 ~ air replace light[level=15] 
execute as @e[scores={crucifixed=121}] at @s run kill @s

execute as @e[scores={crucifixfailed=2}] at @s align y run summon item_display ~ ~ ~ {Tags:["innercircle","crucifixcircle"],item:{id:"minecraft:torch",Count:1b,tag:{CustomModelData:4}}}
execute as @e[scores={crucifixfailed=2}] at @s align y run summon item_display ~ ~ ~ {Tags:["outercircle","spinsslowly","crucifixcircle"],item:{id:"minecraft:torch",Count:1b,tag:{CustomModelData:6}}}
execute as @e[scores={crucifixfailed=2}] at @s align y run summon item_display ~ ~ ~ {Tags:["crucifixchains","spinsslowly","crucifixcircle"],item:{id:"minecraft:torch",Count:1b,tag:{CustomModelData:8}}}
execute as @e[scores={crucifixfailed=2}] at @s run fill ~ ~1 ~ ~ ~1 ~ light[level=15] replace air
execute as @e[scores={crucifixfailed=80}] at @s run data merge entity @e[tag=innercircle,limit=1,distance=..5] {item:{id:"minecraft:torch",Count:1b,tag:{CustomModelData:5}}}
execute as @e[scores={crucifixfailed=80}] at @s run data merge entity @e[tag=outercircle,limit=1,distance=..5] {item:{id:"minecraft:torch",Count:1b,tag:{CustomModelData:7}}}
execute as @e[scores={crucifixfailed=80}] at @s run data merge entity @e[tag=crucifixchains,limit=1,distance=..5] {item:{id:"minecraft:torch",Count:1b,tag:{CustomModelData:9}}}
execute as @e[scores={crucifixfailed=88}] at @s run data merge entity @e[tag=crucifixchains,limit=1,sort=nearest] {transformation:{scale:[1f,1.5f,1f]},start_interpolation:0,interpolation_duration:22}
execute as @e[scores={crucifixfailed=100}] at @s run data merge entity @e[tag=crucifixchains,limit=1,sort=nearest] {transformation:{scale:[1f,0f,1f]},start_interpolation:0,interpolation_duration:10}
execute as @e[scores={crucifixfailed=110}] at @s run kill @e[tag=spinsslowly,distance=..10]
execute as @e[scores={crucifixfailed=120}] at @s run fill ~ ~1 ~ ~ ~1 ~ air replace light[level=15] 
execute as @e[scores={crucifixfailed=120}] at @s run kill @e[tag=innercircle,distance=..10]

#Rush
execute as @e[tag=rush] run function doors:executables/rush
 
        #Entity Sound
execute unless entity @e[type=armor_stand,tag=rush] run stopsound @a * custom:entity.rush.far
execute unless entity @e[type=armor_stand,tag=rush] run stopsound @a * custom:entity.rush.near
execute if entity @e[type=armor_stand,tag=rush,scores={crucifixed=1..}] run stopsound @a * custom:entity.rush.far
execute if entity @e[type=armor_stand,tag=rush,scores={crucifixed=1..}] run stopsound @a * custom:entity.rush.near

execute if entity @e[type=text_display,tag=door,scores={rush=1200..}] run kill @e[tag=rush]
#Ambush
execute as @e[type=armor_stand,tag=ambush] run function doors:executables/ambush



          #Entity Sound
execute unless entity @e[type=armor_stand,tag=ambush] run scoreboard players reset @a[scores={ambushnear=1..}] ambushnear
execute unless entity @e[type=armor_stand,tag=ambush] run scoreboard players reset @a[scores={ambushfar=1..}] ambushfar
execute unless entity @e[type=armor_stand,tag=ambush] run stopsound @a * custom:entity.ambush.far
execute unless entity @e[type=armor_stand,tag=ambush] run stopsound @a * custom:entity.ambush.near
execute if entity @e[type=armor_stand,tag=ambush,scores={crucifixed=1..}] run stopsound @a * custom:entity.ambush.far
execute if entity @e[type=armor_stand,tag=ambush,scores={crucifixed=1..}] run stopsound @a * custom:entity.ambush.near

#Dupe
function doors:dupe
#Seek

 #Killing Players

execute as @e[type=armor_stand,tag=seek] run function doors:seek

scoreboard players add @e[scores={stop=1..}] stop 1

execute as @e[type=item_display,tag=eye,nbt={view_range:0f}] at @s run function doors:seekeye
#Electrical Room
execute if entity @e[tag=door,scores={doornumber=100}] run function doors:electricalroom
#The Rooms Start
execute as @e[tag=a000] unless entity @s[tag=closed] on target run execute unless entity @s[scores={atrooms=1..}] run scoreboard players add @s atrooms 1
execute as @e[tag=a000] if entity @s[nbt={interaction:{}}] run data remove entity @s interaction

#The Rooms

execute if entity @a[tag=atrooms] run function doors:atrooms

#A-90
        #Randomizer
scoreboard players add a-90 a90randomizer 1
execute if score a-90 a90randomizer matches 2326.. run scoreboard players set a-90 a90randomizer 1

execute as @e[tag=void] if entity @s[scores={reception=3..}] unless entity @a[scores={muerte=0}] unless entity @a[scores={guiding_light_message=1..}] unless entity @a[scores={killed=1..4}] unless entity @e[tag=void,scores={resetrun=1..}] run scoreboard players add @e[tag=void] resetrun 1
#Ambience

execute if score timer ambience matches 800 as @a[tag=!atrooms,scores={muerte=0}] at @s run function doors:ambience/branch
execute if entity @e[tag=void,scores={reception=1..}] run scoreboard players add timer ambience 1
execute if score timer ambience matches 801.. run scoreboard players set timer ambience 1

scoreboard players add lobby_camera ambience 1
execute if score lobby_camera ambience matches 2..600 run execute as @e[type=item_display,tag=lobby_camera] at @s run tp @s ^ ^ ^0.006
execute if score lobby_camera ambience matches 601 run tp @e[type=item_display,tag=lobby_camera] 28.01 65.65 1.03 -58 14.9
execute if score lobby_camera ambience matches 602..1199 run execute as @e[type=item_display,tag=lobby_camera] at @s run tp @s ^ ^ ^0.006
execute if score lobby_camera ambience matches 1200 run tp @e[type=item_display,tag=lobby_camera] 18.50 64.50 -60.40 0 0
execute if score lobby_camera ambience matches 1201.. run scoreboard players set lobby_camera ambience 1