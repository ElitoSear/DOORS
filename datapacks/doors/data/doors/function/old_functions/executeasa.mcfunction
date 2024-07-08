#DEBUG

#execute at @s run function doors:debug/main

#Replace Items
#execute if predicate doors:is_holding_candle run function doors:item/candle
#execute if predicate doors:is_holding_lighter run function doors:item/lighter
#execute if predicate doors:is_holding_flashlight run function doors:item/flashlight
#Spectate if Joined Later
execute unless score @s muerte matches 1.. if entity @s[scores={lobbytime=1..}] if entity @e[tag=void,scores={reception=4..}] run function doors:joinedlater
#Guiding Light
execute at @s run function doors:death/guiding_light_message
#Achievements
        #Betrayal
execute at @s if entity @s[scores={Hiding=1..}] if entity @a[scores={killedbyrush=1..},distance=..5] run advancement grant @s only doors:achievements/achievement3
execute at @s if entity @s[scores={Hiding=1..}] if entity @a[scores={killedbyambush=1..},distance=..5] run advancement grant @s only doors:achievements/achievement3
execute at @s if entity @s[scores={Hiding=1..}] if entity @e[type=armor_stand,tag=rush,distance=..10] run advancement grant @s only doors:achievements/achievement4
execute at @s if entity @s[scores={Hiding=1..}] if entity @e[type=armor_stand,tag=ambush,distance=..10] run advancement grant @s only doors:achievements/achievement4
execute if entity @s[tag=rifted] run advancement grant @s only doors:achievements/achievement5
#Flickering
execute if entity @e[scores={flickering=1..10}] run tag @s add screechexemption
execute if entity @e[scores={flickering=2}] if entity @s[tag=!atroom] unless predicate doors:darkness at @s run function doors:flickeringsound
execute if entity @e[scores={flickering=44..}] run tag @s[tag=!atrooms,tag=!athalt,tag=!atlibrary,tag=!atelectrical] remove screechexemption
#If player is in lobby
execute if entity @s[scores={lobbytime=1..}] run function doors:playerisinlobby
execute if entity @s[scores={lobbytime=100}] run advancement grant @s only doors:achievements/achievement1
#Remove Loot Table
execute if entity @s[gamemode=adventure] at @s anchored eyes positioned ^ ^ ^ anchored feet run function doors:ray_cast/loot_table_removal
#Creative and Spectator tag removal
execute if entity @s[gamemode=!adventure] run tag @s remove leader
execute if entity @s[gamemode=!adventure] run tag @s remove lastplayer
#Hiding system (Kicked out)
execute if entity @s[scores={kickedout=2}] at @s run function doors:kicked_out
scoreboard players reset @s[scores={kickedout=338..}] kickedout
execute if entity @s[scores={kickedout=1..}] run scoreboard players add @s kickedout 1
execute if entity @s[scores={HidingTime=378}] run scoreboard players add @s kickedout 1
scoreboard players add @s[scores={Hiding=1}] HidingTime 1
execute if entity @s[scores={HidingTime=200}] at @s run playsound doors:misc.get_out master @s ~ ~ ~ 1 1
execute if entity @s[scores={Hiding=0}] run scoreboard players reset @s HidingTime
execute if entity @s[scores={Hiding=0}] at @s unless entity @s[scores={kickedout=1..}] run stopsound @s master doors:misc.get_out
stopsound @s[gamemode=spectator] master doors:misc.get_out
#Eyes
execute if entity @e[tag=eyes] at @s anchored eyes positioned ^ ^ ^ anchored feet run function doors:eyes/raycast_eyes
#Hiding
execute if entity @s[gamemode=adventure,scores={HidingTime=2,playercurrentdoor=52..100}] run scoreboard players add @s HidingTime 78

execute if entity @s[scores={HidingTime=1}] at @s if entity @s[nbt={RootVehicle:{Entity:{Tags:["wardrobe"]}}}] run playsound doors:misc.wardrobe_open master @s ~ ~ ~ 0.6
execute if entity @s[scores={HidingTime=1}] at @s if entity @s[nbt={RootVehicle:{Entity:{Tags:["figurewardrobe"]}}}] run playsound doors:misc.wardrobe_open master @s ~ ~ ~ 0.6
execute if entity @s[scores={HidingTime=1}] at @s if entity @s[nbt={RootVehicle:{Entity:{Tags:["bed"]}}}] run playsound doors:misc.bed_hide master @s ~ ~ ~ 0.6

execute if entity @s[nbt={RootVehicle:{Entity:{Tags:["locker"]}}}] run scoreboard players reset @s HidingTime
execute if entity @s[nbt={RootVehicle:{Entity:{Tags:["figurewardrobe"]}}}] if score @s HidingTime matches 10.. run scoreboard players set @s HidingTime 4

execute unless entity @s[nbt={RootVehicle:{Entity:{Tags:["hidingspot"]}}}] run scoreboard players set @s Hiding 0
execute on vehicle if entity @s[tag=hidingspot] on passengers at @s run scoreboard players set @s Hiding 1


execute at @s positioned ~ ~-0.45 ~ unless entity @s[nbt={RootVehicle:{Entity:{Tags:["bed"]}}}] if entity @e[tag=bed,distance=..0.5] run execute as @e[tag=bed,sort=nearest,limit=1] at @s run playsound doors:misc.bed_hide master @p ~ ~ ~ 0.6 0.8
execute at @s positioned ~ ~-0.45 ~ unless entity @s[nbt={RootVehicle:{Entity:{Tags:["bed"]}}}] if entity @e[tag=bed,distance=..0.5] run execute as @e[tag=bed,sort=nearest,limit=1] at @s run tp @p ^ ^1.5 ^2
#Player Spectators System
execute if entity @s[tag=spectates] if score @s muerte matches 1.. at @s run function doors:spectate
execute if entity @s[scores={muerte=1}] at @s unless score @s killed matches 1.. run scoreboard players add @s killed 1
#Eyes Sound
execute if entity @s[scores={eyesspawn=2}] at @s run playsound doors:entity.eyes.spawn master @s
execute if entity @s[scores={eyesspawn=2}] at @s run scoreboard players add @s eyesspawn 1
execute if entity @s[scores={eyesdamagesound=2}] at @s run playsound doors:entity.eyes.damage master @s
execute if entity @s[scores={eyesdamagesound=2}] at @s run scoreboard players add @s eyesdamagesound 1
#Death Sound
execute if entity @s[scores={killed=2}] at @s run playsound doors:misc.death master @s
execute if entity @s[scores={killed=2}] at @s run stopsound @s * doors:entity.halt.ambience
execute if entity @s[scores={killed=2}] at @s run stopsound @s * doors:music.here_i_come
execute if entity @s[scores={killed=2}] at @s run stopsound @s * doors:music.the_rooms
execute if entity @s[scores={killed=2}] run gamemode spectator @s
scoreboard players add @s[scores={killed=1..4}] killed 1
#Elevator Sound
execute if entity @s[scores={lobbyelevatortime=2}] at @s run playsound doors:misc.player_on_elevator master @a
#Holding Item Sound
execute if entity @s[nbt={SelectedItem:{id:"minecraft:soul_torch",tag:{CustomModelData:3}}}] if entity @e[scores={rush=2}] run playsound doors:candle_burned master @s
execute if entity @s[scores={candlesound=1}] at @s run playsound doors:item.candle master @s
execute unless entity @s[nbt={SelectedItem:{id:"minecraft:soul_torch",tag:{CustomModelData:3}}}] run scoreboard players reset @s candlesound
execute if entity @s[nbt={SelectedItem:{id:"minecraft:soul_torch",tag:{CustomModelData:3}}}] run scoreboard players add @s candlesound 1

execute if entity @s[scores={lightersound=1}] at @s run playsound doors:item.lighter master @s
execute unless entity @s[nbt={SelectedItem:{id:"minecraft:torch",tag:{CustomModelData:1}}}] run scoreboard players reset @s lightersound
execute if entity @s[nbt={SelectedItem:{id:"minecraft:torch",tag:{CustomModelData:1}}}] run scoreboard players add @s lightersound 1

execute if entity @s[scores={keysound=1}] at @s run playsound doors:item.key master @s
execute unless entity @s[nbt={SelectedItem:{id:"minecraft:string",tag:{CustomModelData:13}}}] run scoreboard players reset @s keysound
execute if entity @s[nbt={SelectedItem:{id:"minecraft:string",tag:{CustomModelData:13}}}] run scoreboard players add @s keysound 1

execute if entity @s[scores={electricalkeysound=1}] at @s run playsound doors:item.key master @s
execute unless entity @s[nbt={SelectedItem:{id:"minecraft:feather",tag:{CustomModelData:13}}}] run scoreboard players reset @s electricalkeysound
execute if entity @s[nbt={SelectedItem:{id:"minecraft:feather",tag:{CustomModelData:13}}}] run scoreboard players add @s electricalkeysound 1
#Off Hand Warning
execute unless entity @s[tag=nooffhandwarning] if entity @s[nbt={Inventory:[{Slot:-106b}]}] run title @s actionbar {"translate":"text.doors.off_hand_warning"}
execute if entity @s[tag=atrooms] if entity @s[nbt={SelectedItem:{id:"minecraft:soul_torch",tag:{CustomModelData:3}}}] run title @s actionbar {"translate":"text.doors.candle_lighter"}
execute if entity @s[tag=atrooms] if entity @s[nbt={SelectedItem:{id:"minecraft:string",tag:{CustomModelData:94}}}] run title @s actionbar {"translate":"text.doors.crucifix_lighter"}
#Not allowing to sleep TRANSLATE
execute if entity @s[scores={sleeping=1..}] at @s run function doors:sleeping
#Gold System
execute store result score @s golddetection run clear @s minecraft:gold_ingot
execute run scoreboard players operation @s gold += @s golddetection
execute if entity @s[scores={golddetection=1..}] at @s run playsound doors:misc.gold_increase master @s
execute store result score @s golddetection run clear @s minecraft:gold_ingot

execute if entity @s[scores={vitamins=1..}] run function doors:for_advancements/used_snowball


#Last Player and Leader

execute if score @s playercurrentdoor = min_score playerminimumdoor run tag @s add lastplayer
execute unless score @s playercurrentdoor = min_score playerminimumdoor run tag @s remove lastplayer
execute if score @s playercurrentdoor = max_score playermaxdoor run tag @s add leader
execute unless score @s playercurrentdoor = max_score playermaxdoor run tag @s remove leader

execute if score @s playercurrentroomsdoor = min_score playerminimumroomsdoor run tag @s add lastroomsplayer
execute unless score @s playercurrentroomsdoor = min_score playerminimumroomsdoor run tag @s remove lastroomsplayer
execute if score @s playercurrentroomsdoor = max_score playermaxroomsdoor run tag @s add roomsleader
execute unless score @s playercurrentroomsdoor = max_score playermaxroomsdoor run tag @s remove roomsleader

#Dawn of the Doors
execute if entity @s[scores={lobbytime=2}] at @s run playsound doors:music.dawn_of_the_doors voice @s
execute positioned 9 63 -55 if entity @s[dx=37,dy=5,dz=36,gamemode=!spectator] run scoreboard players add @s lobbytime 1
execute positioned 9 63 -55 unless entity @s[dx=37,dy=5,dz=36,gamemode=!spectator] run scoreboard players reset @s lobbytime
scoreboard players reset @s[scores={lobbytime=2132..}] lobbytime
scoreboard players reset @s[scores={left=1..}] lobbytime
tp @s[scores={left=1..}] 34.5 63.0 -50.5 0 -12.5
scoreboard players reset @s[scores={left=1..}] left

execute if entity @s[scores={Hiding=1},tag=!atrooms,tag=!atelectrical,tag=!atlibrary,tag=!athalt,tag=!atseek] unless entity @e[scores={flickering=1..}] run tag @s add screechexemption
execute if entity @s[scores={Hiding=0},tag=!atrooms,tag=!atelectrical,tag=!atlibrary,tag=!athalt,tag=!atseek] unless entity @e[scores={flickering=1..}] run tag @s remove screechexemption
#Timothy
scoreboard players add @s[scores={timothytriggered=1..}] timothytriggered 1
execute if entity @s[scores={timothytriggered=2}] unless entity @s[scores={Health=..1}] run damage @s 1
execute if entity @s[scores={timothytriggered=2}] at @s run summon armor_stand ^ ^ ^0.5 {Invisible:1b,Invulnerable:1b,Marker:1b,ArmorItems:[{},{},{},{id:"string",Count:1b,tag:{CustomModelData:15}}],HandItems:[{},{}],Tags:["timothy"]}
execute if entity @s[scores={timothytriggered=10..}] at @s run kill @e[tag=timothy,limit=1,sort=nearest]
execute if entity @s[scores={timothytriggered=10..}] run scoreboard players reset @s timothytriggered
execute if entity @s[scores={drawers=1}] store result score @s drawerrandomizer run random value 1..200
execute if entity @s[scores={drawers=1}] at @s if entity @s[scores={drawerrandomizer=3}] run scoreboard players set @s timothytriggered 1
execute if entity @s[scores={drawers=1}] run scoreboard players reset @s drawers
execute if entity @s[scores={timothytriggered=2}] at @s run playsound doors:entity.timothy.jumpscare master @s
execute if entity @s[scores={timothytriggered=2}] run advancement grant @s only doors:achievements/achievement14
execute if entity @s[scores={timothytriggered=2}] at @s run playsound doors:misc.ear_ringing master @s
execute if entity @s[scores={timothytriggered=2}] run scoreboard players add @s timothytriggered 1
#Remove Previous Rooms
execute if entity @s[scores={removepreviousrooms=1}] at @s run scoreboard players operation @s subtractfromlastplayer = @s playercurrentdoor
execute if entity @s[scores={removepreviousrooms=2}] at @s run scoreboard players remove @s subtractfromlastplayer 7
execute if entity @s[scores={removepreviousrooms=3}] at @s run execute as @e[tag=door,scores={generating=13}] if score @s doornumber < @a[scores={removepreviousrooms=3},limit=1,sort=nearest] subtractfromlastplayer run tag @s add destroy

execute if entity @s[scores={removepreviousroomsfromrooms=1}] at @s run scoreboard players operation @s subtractfromlastroomsplayer = @s playercurrentroomsdoor
execute if entity @s[scores={removepreviousroomsfromrooms=2}] at @s run scoreboard players remove @s subtractfromlastroomsplayer 5
execute if entity @s[scores={removepreviousroomsfromrooms=3}] at @s run execute as @e[tag=roomsdoor,scores={generating=13}] if score @s roomsdoornumber < @a[scores={removepreviousroomsfromrooms=3},limit=1,sort=nearest] subtractfromlastroomsplayer run tag @s add destroy

scoreboard players reset @s[tag=!lastplayer] removepreviousrooms
scoreboard players reset @s[tag=!lastplayer] subtractfromlastplayer

scoreboard players add @s[tag=lastplayer] removepreviousrooms 1
scoreboard players set @s[scores={removepreviousrooms=5..}] removepreviousrooms 1

scoreboard players reset @s[tag=!lastroomsplayer] removepreviousroomsfromrooms
scoreboard players reset @s[tag=!lastroomsplayer] subtractfromlastroomsplayer

scoreboard players add @s[tag=lastroomsplayer] removepreviousroomsfromrooms 1
scoreboard players set @s[scores={removepreviousroomsfromrooms=5..}] removepreviousroomsfromrooms 1
#Snare Trap
execute if entity @s[scores={snaretrap=2..40}] at @s run tp @s ~ ~ ~ ~ 90
execute at @s unless block ~ ~-0.01 ~ #doors:snaretrap run scoreboard players reset @s snaretrap
execute if entity @s[gamemode=adventure] at @s if block ~ ~-0.01 ~ #doors:snaretrap run scoreboard players add @s snaretrap 1
execute if entity @s[scores={snaretrap=3}] at @s run playsound doors:misc.snare_trap master @s ~ ~ ~ 0.6
execute if entity @s[scores={snaretrap=3}] at @s run scoreboard players add @s snaretrap 1
execute if entity @s[scores={snaretrap=2}] at @s run effect give @s minecraft:slowness 3 127 true
execute if entity @s[scores={snaretrap=2}] at @s unless entity @s[scores={health=..1}] run damage @s 1
execute if entity @s[scores={snaretrap=2}] at @s run setblock ~ ~ ~ green_carpet
execute if entity @s[scores={snaretrap=20}] at @s if block ~ ~ ~ green_carpet run setblock ~ ~ ~ moss_carpet

#Screech
execute if entity @s[gamemode=adventure] at @s unless entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:1}}}] unless predicate doors:darkness run scoreboard players reset @s darkroomsound
execute if entity @s[gamemode=adventure] at @s unless entity @s[tag=screechexemption] unless entity @s[scores={muerte=1..}] if predicate doors:darkness run scoreboard players add @s darkroomsound 1
execute if entity @s[gamemode=adventure] at @s unless entity @s[tag=screechexemption] unless entity @s[scores={muerte=1..}] if predicate doors:darkness run scoreboard players add @s darkroom 1
execute if entity @s[gamemode=adventure,scores={darkroomsound=2}] at @s run playsound doors:misc.darkroom master @s
execute if entity @s[gamemode=adventure,scores={darkroomsound=2}] at @s run scoreboard players add @s darkroomsound 1

execute if score @s screechtime matches 2 store result score @s screech_random run random value 1..15
execute if score @s screechtime matches 2 at @s run playsound doors:entity.screech.pre_psst master @s ~ ~ ~ 0.6
execute if score @s screechtime matches 2 at @s run summon marker ~ ~ ~ {Tags:["initial_rotation"]}
execute if score @s screechtime matches 2 at @s run tp @e[type=marker,tag=initial_rotation,sort=nearest,limit=1] @s
execute if score @s screechtime matches 2..131 at @s facing entity @e[tag=screech,distance=..2.1,limit=1,sort=nearest,predicate=!doors:is_being_crucifixed] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.3] run scoreboard players set @s screechtime 200
execute if score @s screechtime matches 2..132 at @s rotated as @e[type=marker,tag=initial_rotation,distance=..2.3,sort=nearest,limit=1] run tp @e[type=marker,tag=initial_rotation,sort=nearest,limit=1] ~ ~ ~ ~ ~
execute if score @s screechtime matches 2..200 at @s rotated as @e[type=marker,tag=initial_rotation,sort=nearest,limit=1] run function doors:screech/branch
execute if score @s screechtime matches 132 at @s run kill @e[type=marker,tag=initial_rotation,sort=nearest,limit=1]
execute if score @s screechtime matches 132 at @s anchored eyes positioned ^ ^ ^0.9 run tp @e[tag=screech,limit=1,sort=nearest,predicate=!doors:is_being_crucifixed] ~ ~ ~ facing entity @s
execute if score @s screechtime matches 140 at @s anchored eyes positioned ^ ^ ^0.9 run kill @e[tag=screech,limit=1,sort=nearest,predicate=!doors:is_being_crucifixed]
execute if score @s screechtime matches 140 run scoreboard players reset @s screechtime

execute if score @s screechtime matches 200..214 at @s anchored eyes positioned ^ ^ ^0.9 run function doors:screech/dodge
execute if score @s screechtime matches 200 at @s run kill @e[type=marker,tag=initial_rotation,sort=nearest,limit=1]
execute if score @s screechtime matches 215 run scoreboard players reset @s screechtime

execute if score @s darkroom matches 300 run function doors:screech/spawn
execute if score @s darkroom matches 750 run function doors:screech/spawn
execute if score @s darkroom matches 1200 run function doors:screech/spawn

execute if score @s darkroom matches 1210.. run scoreboard players reset @s darkroom

execute if score @s screechtime matches 1.. run scoreboard players add @s screechtime 1

#Glinting items
execute if entity @s[gamemode=adventure] at @s if entity @e[scores={reception=1..}] run scoreboard players add @e[tag=correctlever,distance=..10] shimmering 1
execute if entity @s[gamemode=adventure] at @s if entity @e[scores={reception=1..}] run scoreboard players add @e[tag=hiddenswitch,nbt={ArmorItems:[{},{},{},{id:"minecraft:iron_ingot"}]},distance=..10] shimmering 1
execute if entity @s[gamemode=adventure] at @s if entity @e[scores={reception=1..}] run scoreboard players add @e[tag=ectricalkey,distance=..10] shimmering 1
execute if entity @s[gamemode=adventure] at @s if entity @e[scores={reception=1..}] run scoreboard players add @e[tag=ishiddenkey,distance=..10] shimmering 1

    #Sounds
#Rift Sound
execute if entity @s[scores={riftsound=2}] at @e[tag=rift] run playsound doors:misc.rift master @s
execute at @e[tag=rift] run execute at @e[tag=rift] if entity @s[distance=..16] run scoreboard players add @s riftsound 1
execute at @e[tag=rift] run execute at @e[tag=rift] if entity @s[distance=16..17] run scoreboard players reset @s riftsound
execute at @e[tag=rift] run execute at @e[tag=rift] if entity @s[distance=16..17] run stopsound @s * doors:misc.rift
execute if entity @s[scores={riftsound=1780..}] run scoreboard players reset @s riftsound

execute if entity @s[scores={riftsoundlobby=2},tag=rifted] at @e[tag=riftlobby] run playsound doors:misc.rift master @s
execute if entity @s[tag=rifted] at @s if entity @e[tag=riftlobby,distance=..16] run scoreboard players add @s riftsoundlobby 1
execute if entity @s[tag=rifted] at @s if entity @e[tag=riftlobby,distance=16..17] run scoreboard players reset @s riftsoundlobby
execute if entity @s[tag=rifted] at @s if entity @e[tag=riftlobby,distance=16..17] run stopsound @s * doors:misc.rift
execute if entity @s[scores={riftsoundlobby=1780..}] run scoreboard players reset @s riftsoundlobby
#Rooms entrance sound
execute if entity @s[scores={roomsentrance=2}] at @e[tag=roomsentrance] run playsound doors:music.rooms_entrance master @s
execute at @s if entity @e[tag=roomsentrance,distance=..16] run scoreboard players add @s roomsentrance 1
execute at @s if entity @e[tag=roomsentrance,distance=16..17] run scoreboard players reset @s roomsentrance
execute at @s if entity @e[tag=roomsentrance,distance=16..17] run stopsound @s * doors:music.rooms_entrance
execute if entity @s[scores={roomsentrance=964..}] run scoreboard players reset @s roomsentrance
#Optional exit at the rooms sound
execute if entity @s[scores={roomsentrance=2}] at @e[tag=optionalexittext] run playsound doors:music.rooms_entrance master @s
execute at @s if entity @e[tag=optionalexittext,distance=..16] run scoreboard players add @s roomsentrance 1
execute at @s if entity @e[tag=optionalexittext,distance=16..17] run scoreboard players reset @s roomsentrance
execute at @s if entity @e[tag=optionalexittext,distance=16..17] run stopsound @s * doors:music.rooms_entrance
#Exit at the rooms sound
execute if entity @s[scores={roomsentrance=2}] at @e[tag=roomsexit] run playsound doors:music.rooms_entrance master @s
execute at @s if entity @e[tag=roomsexit,distance=..16] run scoreboard players add @s roomsentrance 1
execute at @s if entity @e[tag=roomsexit,distance=16..17] run scoreboard players reset @s roomsentrance
execute at @s if entity @e[tag=roomsexit,distance=16..17] run stopsound @s * doors:music.rooms_entrance
#Sound for every entity that hold the tag glins
execute at @s run execute as @e[tag=glints,sort=nearest,limit=1] at @s run playsound doors:misc.glint master @a[scores={glints=2}]
execute at @s run execute as @e[tag=glints,sort=nearest,limit=1] at @s run scoreboard players add @a[distance=..16] glints 1
execute at @s run execute as @e[tag=glints,sort=nearest,limit=1] at @s run scoreboard players reset @a[distance=16..17] glints
execute at @s run execute as @e[tag=glints,sort=nearest,limit=1] at @s run stopsound @a[distance=16..17] * doors:misc.glint
execute if entity @s[scores={glints=358..}] run scoreboard players reset @s glints
#Jeffs Jingle
execute if entity @s[scores={jeffsjingle=2}] at @e[tag=jeffsjingle] run playsound doors:music.jeffs_jingle master @s ^ ^ ^ 1.2
execute at @s if entity @e[tag=jeffsjingle,distance=..16] run scoreboard players add @s jeffsjingle 1
execute at @s if entity @e[tag=jeffsjingle,distance=16..17] run scoreboard players reset @s jeffsjingle
execute at @s if entity @e[tag=jeffsjingle,distance=16..17] run stopsound @s * doors:music.jeffs_jingle
execute if entity @s[scores={jeffsjingle=2398..}] run scoreboard players reset @s jeffsjingle
#Eyes sound
execute if entity @s[scores={eyessound=2}] at @e[tag=eyes] run playsound doors:entity.eyes.idle master @s
execute at @s if entity @e[tag=eyes,distance=..7] run scoreboard players add @s eyessound 1
execute at @s if entity @e[tag=eyes,distance=7..8] run scoreboard players reset @s eyessound
execute at @s if entity @e[tag=eyes,distance=7..8] run stopsound @s * doors:entity.eyes.idle
execute if entity @s[scores={eyessound=120..}] run scoreboard players reset @s eyessound
#Fnaf2 Sound
execute if entity @s[scores={fnaf2=1}] at @e[tag=window] positioned ~13.5 ~ ~5.5 run playsound doors:misc.fnaf_2 master @s
execute if entity @s[scores={fnaf2=192..}] at @s run scoreboard players reset @s fnaf2
#Stop Sound
stopsound @s[scores={killedbyrush=1..}] * doors:entity.rush.near
stopsound @s[scores={killedbyrush=1..}] * doors:entity.rush.far
stopsound @s[scores={killedbyrush=1..}] * doors:misc.darkroom
stopsound @s[scores={killedbyambush=1..}] * doors:entity.ambush.near
stopsound @s[scores={killedbyambush=1..}] * doors:entity.ambush.far
stopsound @s[scores={killed=4..}] * doors:entity.a60.near
stopsound @s[scores={killed=4..}] * doors:entity.a60.far
stopsound @s[scores={killed=4..}] * doors:entity.a120.near
stopsound @s[scores={killed=4..}] * doors:entity.a120.far
#Crucifixing
  #Rush
execute if predicate doors:is_holding_crucifix at @s unless score @s Hiding matches 1.. run function doors:crucifix/crucifix

#Rush

execute if entity @s[gamemode=adventure] if score @s playercurrentdoor matches 10..89 at @s at @e[tag=door,limit=1,sort=nearest] positioned ^ ^-2 ^-0.51 if entity @s[distance=..0.5] store result score @s rushrandomizer run random value 1..100
execute if entity @s[gamemode=adventure] if score @s playercurrentdoor matches 90..99 at @s at @e[tag=door,limit=1,sort=nearest] positioned ^ ^-2 ^-0.51 if entity @s[distance=..0.5] store result score @s rushrandomizer run random value 1..24
execute if entity @s[scores={rushrandomizer=1..6}] at @s unless score @s playercurrentdoor matches ..10 at @e[tag=door,tag=!rushsummonfailed,limit=1,sort=nearest] unless entity @e[scores={rush=1..}] positioned ^ ^-2 ^-0.51 if entity @s[distance=..0.5] run scoreboard players add @e[tag=door,limit=1,sort=nearest] rush 1
execute if entity @s[gamemode=adventure] at @s at @e[tag=door,limit=1,sort=nearest] positioned ^ ^-2 ^-0.51 if entity @s[distance=..0.5] run tag @e[tag=door,limit=1,sort=nearest] add rushsummonfailed

        #Jumpscare
execute if entity @s[scores={killedbyrush=2}] run tag @s add killedbyothermeans
execute if entity @s[scores={killedbyrush=2}] run tag @s add nooffhandwarning
execute if entity @s[scores={killedbyrush=2}] run effect give @s invisibility 6 0 true
execute if entity @s[scores={killedbyrush=2}] run item replace entity @s weapon.offhand with string{CustomModelData:119,display:{Name:'{"text": ""}'}}
execute if entity @s[scores={killedbyrush=2}] at @s run playsound doors:misc.static master @s
execute if entity @s[scores={killedbyrush=2}] run title @s times 0t 100t 0t
execute if entity @s[scores={killedbyrush=60}] run title @s title {"text": "\uE016"}
execute if entity @s[scores={killedbyrush=110}] at @s run playsound doors:entity.rush.death master @s ~ ~ ~ 0.8
execute if entity @s[scores={killedbyrush=110}] run title @s times 0t 17t 0t 
execute if entity @s[scores={killedbyrush=110}] run title @s title {"text": "\uE017"}
execute if entity @s[scores={killedbyrush=125}] run clear @s string{CustomModelData:119}
execute if entity @s[scores={killedbyrush=125}] run function doors:death/rush/main

scoreboard players add @s[scores={killedbyrush=1..128}] killedbyrush 1
scoreboard players reset @s[scores={killedbyrush=129}] killedbyrush

#Ambush

execute if entity @s[gamemode=adventure] at @s at @e[tag=door,limit=1,sort=nearest] positioned ^ ^-2 ^-0.51 if entity @s[distance=..0.5] store result score @s ambushrandomizer run random value 1..100
execute if entity @s[scores={ambushrandomizer=2}] at @s unless score @s playercurrentdoor matches ..10 at @e[tag=door,tag=!ambushsummonfailed,limit=1,sort=nearest] unless entity @e[scores={ambush=1..}] positioned ^ ^-2 ^-0.51 if entity @s[distance=..0.5] run scoreboard players add @e[tag=door,limit=1,sort=nearest] ambush 1
execute if entity @s[gamemode=adventure] at @s at @e[tag=door,limit=1,sort=nearest] positioned ^ ^-2 ^-0.51 if entity @s[distance=..0.5] run tag @e[tag=door,limit=1,sort=nearest] add ambushsummonfailed

        #Jumpscare
execute if entity @s[scores={killedbyambush=2}] run tag @s add nooffhandwarning
execute if entity @s[scores={killedbyambush=2}] run tag @s add killed_by_ambush
execute if entity @s[scores={killedbyambush=2}] run effect give @s invisibility 1 0 true
execute if entity @s[scores={killedbyambush=2}] run item replace entity @s weapon.offhand with string{CustomModelData:119,display:{Name:'{"text":""}'}}
execute if entity @s[scores={killedbyambush=2}] at @s run playsound doors:entity.ambush.death master @s
execute if entity @s[scores={killedbyambush=2}] run title @s times 0t 100t 0t
execute if entity @s[scores={killedbyambush=2}] run title @s title {"text": "\uE018"}
execute if entity @s[scores={killedbyambush=10}] run title @s times 0t 2t 0t 
execute if entity @s[scores={killedbyambush=10}] run title @s title {"text": "\uE019"}
execute if entity @s[scores={killedbyambush=12}] run clear @s string{CustomModelData:119}
execute if entity @s[scores={killedbyambush=12}] run damage @s 20 mob_attack by @e[tag=ambushdamagesource,limit=1]
execute if entity @s[scores={killedbyambush=12}] run scoreboard players add @s[tag=!killed_by_ambush_kicked_out_by_hide] timeskilledbyambush 1
execute if entity @s[scores={killedbyambush=12}] run scoreboard players set @s guiding_light_message 1
execute if entity @s[scores={killedbyambush=14}] run tag @s remove nooffhandwarning

scoreboard players add @s[scores={killedbyambush=1..15}] killedbyambush 1
scoreboard players reset @s[scores={killedbyambush=16}] killedbyambush

#Seek
        #Jumpscare
execute if entity @s[scores={killedbyseek=2}] run tag @s add killed_by_seek
execute if entity @s[scores={killedbyseek=2}] run attribute @s generic.movement_speed base set 0.1
execute if entity @s[scores={killedbyseek=2}] run title @s times 0t 19t 0t
execute if entity @s[scores={killedbyseek=2}] run title @s title {"text":"\uE023"}
execute if entity @s[scores={killedbyseek=2}] at @s run playsound doors:entity.seek.death master @s ~ ~ ~ 0.4
execute if entity @s[scores={killedbyseek=20}] run damage @s[tag=!killed_by_seek_hand,tag=!killed_by_seek_fallen_chandelier] 20 mob_attack by @e[tag=seekdamagesource,limit=1,sort=nearest]
execute if entity @s[scores={killedbyseek=20}] run damage @s[tag=killed_by_seek_hand] 20 mob_attack by @e[tag=seekhanddamagesource,limit=1]
execute if entity @s[scores={killedbyseek=20}] run scoreboard players add @s[tag=!killed_by_seek_hand,tag=!killed_by_seek_fallen_chandelier] timeskilledbyseek 1
execute if entity @s[scores={killedbyseek=20}] run scoreboard players set @s guiding_light_message 1
execute if entity @s[scores={killedbyseek=22}] at @s run stopsound @s * doors:music.here_i_come
execute if entity @s[scores={killedbyseek=22}] at @s run stopsound @s * doors:entity.seek.steps_close
execute if entity @s[scores={killedbyseek=22}] at @s run stopsound @s * doors:entity.seek.steps_far

scoreboard players add @s[scores={killedbyseek=1..24}] killedbyseek 1
scoreboard players reset @s[scores={killedbyseek=25}] killedbyseek

        #Steps
execute if entity @s[tag=atseek] at @s unless entity @s[scores={killedbyseek=1..}] if entity @e[tag=seek,distance=..12,scores={seekrun=1..}] run scoreboard players add @s seeksteps 1
execute if entity @s[tag=atseek] at @s unless entity @s[scores={killedbyseek=1..}] if entity @e[tag=seek,distance=12..13,scores={seekrun=1..}] run scoreboard players reset @s seeksteps
execute if entity @s[tag=atseek] at @s unless entity @s[scores={killedbyseek=1..}] if entity @e[tag=seek,distance=12..13,scores={seekrun=1..}] run stopsound @s * doors:entity.seek.steps_close
execute if entity @s[tag=atseek] at @s unless entity @s[scores={killedbyseek=1..}] if entity @s[scores={seeksteps=1}] unless entity @e[tag=seek,scores={stop=1..}] run playsound doors:entity.seek.steps_close master @s
execute if entity @s[tag=atseek] at @s unless entity @s[scores={killedbyseek=1..}] if entity @s[scores={seeksteps=76..}] run scoreboard players reset @s seeksteps

#The Rooms Start

execute if entity @s[scores={roomsambience=2}] at @s run playsound doors:music.the_rooms voice @s
execute if entity @s[scores={roomsambience=1201..}] at @s run scoreboard players set @s roomsambience 1
execute if entity @s[scores={roomsambience=1..1200}] at @s run scoreboard players add @s roomsambience 1
execute if entity @s[scores={atrooms=2}] at @s run playsound doors:misc.rooms_door master @s
execute if entity @s[scores={atrooms=2}] at @s run effect clear @s regeneration
execute if entity @s[scores={atrooms=2}] positioned -24.99 65.1 -72.5 unless entity @e[tag=roomsdoor,distance=..1] run summon text_display -24.99 65.1 -72.5 {Rotation:[-90f,0f],background:1173741824,Tags:["roomsdoor"]}
execute if entity @s[scores={atrooms=20}] at @s run scoreboard players add @s roomsambience 1
execute if entity @s[scores={atrooms=20}] run title @s times 20 100 40
execute if entity @s[scores={atrooms=20}] run title @s title {"text":" \u0020 \u0020The Rooms \u0020 \u0020","underlined":true}
execute if entity @s[scores={atrooms=20}] run tp @s -17.5 63.0 -72.5 90 0
execute if entity @s[scores={atrooms=20}] run advancement grant @s only doors:achievements/achievement30
execute if entity @s[scores={atrooms=20}] run tag @s add atrooms
execute if entity @s[scores={atrooms=20}] run tag @s add screechexemption
execute if entity @s[scores={atrooms=21}] run scoreboard players reset @s roomsentrance
execute if entity @s[scores={atrooms=1..22}] run scoreboard players add @s atrooms 1

#The Rooms

execute if entity @s[tag=atrooms] at @s at @e[tag=roomsdoor,limit=1,sort=nearest] positioned ^ ^-2 ^-0.51 if entity @s[distance=..0.5] store result score @s a120randomizer run random value 1..100
execute if entity @s[scores={a120randomizer=1..15}] at @s if entity @s[scores={playercurrentroomsdoor=120..999}] at @e[tag=roomsdoor,tag=!a120summonfailed,limit=1,sort=nearest] unless entity @e[scores={a120=1..}] positioned ^ ^-2 ^-0.51 if entity @s[distance=..0.5] run scoreboard players add @e[tag=roomsdoor,limit=1,sort=nearest] a120 1
execute if entity @s[tag=atrooms] at @s at @e[tag=roomsdoor,limit=1,sort=nearest] positioned ^ ^-2 ^-0.51 if entity @s[distance=..0.5] run tag @e[tag=roomsdoor,limit=1,sort=nearest] add a120summonfailed

execute if entity @s[tag=atrooms] at @s at @e[tag=roomsdoor,limit=1,sort=nearest] positioned ^ ^-2 ^-0.51 if entity @s[distance=..0.5] store result score @s a60randomizer run random value 1..100
execute if entity @s[scores={a60randomizer=1..15}] at @s if entity @s[scores={playercurrentroomsdoor=60..999}] at @e[tag=roomsdoor,tag=!a60summonfailed,limit=1,sort=nearest] unless entity @e[scores={a60=1..}] positioned ^ ^-2 ^-0.51 if entity @s[distance=..0.5] run scoreboard players add @e[tag=roomsdoor,limit=1,sort=nearest] a60 1
execute if entity @s[tag=atrooms] at @s at @e[tag=roomsdoor,limit=1,sort=nearest] positioned ^ ^-2 ^-0.51 if entity @s[distance=..0.5] run tag @e[tag=roomsdoor,limit=1,sort=nearest] add a60summonfailed

        #Killed by A-90
execute if entity @s[scores={killedbya90=1}] run tag @s add killed_by_a_90
execute if entity @s[scores={killedbya90=8}] run title @s times 0t 2t 0t
execute if entity @s[scores={killedbya90=8}] run title @s title {"text": "\uE012"}
execute if entity @s[scores={killedbya90=12}] run title @s times 1t 4t 0t
execute if entity @s[scores={killedbya90=12}] run title @s title {"text": "\uE012"}
execute if entity @s[scores={killedbya90=12}] at @s run playsound doors:entity.a90.death master @s
execute if entity @s[scores={killedbya90=20}] run title @s times 2t 9t 0t
execute if entity @s[scores={killedbya90=20}] run title @s title {"text": "\uE014"}
execute if entity @s[scores={killedbya90=34}] run damage @s 20 mob_attack by @e[tag=a90damagesource,limit=1]
execute if entity @s[scores={killedbya90=34}] run scoreboard players add @s timeskilledbya90 1
execute if entity @s[scores={killedbya90=34}] run scoreboard players set @s guiding_light_message 1

scoreboard players add @s[scores={killedbya90=1..}] killedbya90 1
scoreboard players reset @s[scores={killedbya90=45..}] killedbya90


execute if entity @s[scores={HidingTime=217}] run title @s times 2t 2t 2t
execute if entity @s[scores={HidingTime=218}] run title @s title {"text": "\uE020"}
execute if entity @s[scores={HidingTime=224}] run title @s title {"text": "\uE020"}
execute if entity @s[scores={HidingTime=238}] run title @s title {"text": "\uE020"}
execute if entity @s[scores={HidingTime=244}] run title @s title {"text": "\uE020"}
execute if entity @s[scores={HidingTime=256}] run title @s title {"text": "\uE020"}
execute if entity @s[scores={HidingTime=261}] run title @s title {"text": "\uE020"}
execute if entity @s[scores={HidingTime=272}] run title @s title {"text": "\uE020"}
execute if entity @s[scores={HidingTime=277}] run title @s title {"text": "\uE020"}
execute if entity @s[scores={HidingTime=287}] run title @s title {"text": "\uE020"}
execute if entity @s[scores={HidingTime=292}] run title @s title {"text": "\uE020"}
execute if entity @s[scores={HidingTime=301}] run title @s title {"text": "\uE020"}
execute if entity @s[scores={HidingTime=305}] run title @s title {"text": "\uE020"}
execute if entity @s[scores={HidingTime=314}] run title @s title {"text": "\uE020"}
execute if entity @s[scores={HidingTime=318}] run title @s title {"text": "\uE020"}
execute if entity @s[scores={HidingTime=327}] run title @s title {"text": "\uE020"}
execute if entity @s[scores={HidingTime=330}] run title @s title {"text": "\uE020"}
execute if entity @s[scores={HidingTime=338}] run title @s title {"text": "\uE020"}
execute if entity @s[scores={HidingTime=342}] run title @s title {"text": "\uE020"}
execute if entity @s[scores={HidingTime=350}] run title @s title {"text": "\uE020"}
execute if entity @s[scores={HidingTime=355}] run title @s title {"text": "\uE020"}
execute if entity @s[scores={HidingTime=361}] run title @s title {"text": "\uE020"}
execute if entity @s[scores={HidingTime=364}] run title @s title {"text": "\uE020"}
execute if entity @s[scores={HidingTime=371}] run title @s title {"text": "\uE020"}
execute if entity @s[scores={HidingTime=375}] run title @s title {"text": "\uE020"}
execute if entity @s[scores={HidingTime=380}] run title @s times 0t 0t 12s
execute if entity @s[scores={HidingTime=380}] run title @s title {"text": "\uE020"}

execute if entity @s[scores={killedbyfigure=1..9}] at @s run tp @s ~ ~ ~ facing entity @e[tag=figure,limit=1,sort=nearest]
execute if entity @s[scores={killedbyfigure=2}] run tag @s add killed_by_figure
execute if entity @s[scores={killedbyfigure=2}] run tag @s add nooffhandwarning
execute if entity @s[scores={killedbyfigure=2}] at @s run effect give @e[tag=figure,distance=..3] invisibility infinite 0 true
execute if entity @s[scores={killedbyfigure=2}] at @s run execute as @e[tag=figure] run attribute @s generic.movement_speed base set 0.23
execute if entity @s[scores={killedbyfigure=2}] run item replace entity @s weapon.offhand with string{CustomModelData:99,display:{Name:'{"text":"","italic": false}'}}
execute if entity @s[scores={killedbyfigure=2}] at @s run playsound doors:entity.figure.aggressive_growl master @s
execute if entity @s[scores={killedbyfigure=30}] at @s run playsound doors:entity.figure.death master @s
execute if entity @s[scores={killedbyfigure=30}] at @s run effect clear @e[tag=figure] invisibility
execute if entity @s[scores={killedbyfigure=30}] at @s run clear @s string{CustomModelData:99}
execute if entity @s[scores={killedbyfigure=30}] at @e[tag=door,scores={doornumber=51}] if block ^ ^-1 ^-1 mangrove_door[open=true] run function doors:death/figure/tag_51
execute if entity @s[scores={killedbyfigure=30}] if entity @e[scores={electricalcinematic3=164..}] run function doors:death/figure/tag_pursuit
execute if entity @s[scores={killedbyfigure=30}] run damage @s 20 mob_attack by @e[tag=figure,limit=1,sort=nearest]
execute if entity @s[scores={killedbyfigure=30}] run scoreboard players add @s timeskilledbyfigure 1
execute if entity @s[scores={killedbyfigure=30}] run scoreboard players set @s guiding_light_message 1
execute if entity @s[scores={killedbyfigure=32}] at @s run scoreboard players reset @s librarymusic
execute if entity @s[scores={killedbyfigure=32}] at @s run scoreboard players reset @s unhinged2
execute if entity @s[scores={killedbyfigure=32}] at @s run scoreboard players reset @s unhinged2intense
execute if entity @s[scores={killedbyfigure=32}] at @s run stopsound @s * doors:music.unhinged
execute if entity @s[scores={killedbyfigure=32}] at @s run stopsound @s * doors:music.unhinged_2
execute if entity @s[scores={killedbyfigure=32}] at @s run stopsound @s * doors:music.unhinged_2_intense

scoreboard players add @s[scores={killedbyfigure=1..34}] killedbyfigure 1
scoreboard players reset @s[scores={killedbyfigure=35}] killedbyfigure


execute store result score @s vitaminslimit run clear @s snowball{CustomModelData:1} 0
execute store result score @s lockpicklimit run clear @s flint{CustomModelData:13} 0
execute store result score @s crucifixlimit run clear @s string{CustomModelData:94} 0
execute store result score @s lighterlimit run clear @s torch{CustomModelData:1} 0
execute store result score @s skeletonkeylimit run clear @s string{CustomModelData:96} 0
execute store result score @s flashlightlimit run clear @s warped_fungus_on_a_stick 0
execute store result score @s candlelimit run clear @s soul_torch{CustomModelData:3} 0
#TRANSLATE

execute if score @s skeletonkeylimit matches 2 at @s run summon item ~ ~ ~ {Item:{id:"minecraft:string",Count:1b,tag:{CustomModelData:96,display:{Name:'[{"translate":"item.doors.skeleton_key","italic":false}]'}}},PickupDelay:60s,Motion:[0.0d,0.4d,0.0d]}
execute if score @s skeletonkeylimit matches 2 at @s run title @s actionbar {"translate":"text.doors.skeleton_key_limit","color":"red"}
execute if score @s skeletonkeylimit matches 2 at @s run clear @s string{CustomModelData:96} 1

execute if score @s flashlightlimit matches 2 at @s run summon item ~ ~ ~ {Item:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:2,display:{Name:'[{"translate":"item.doors.flashlight","italic":false}]'}}},PickupDelay:60s,Motion:[0.0d,0.4d,0.0d]}
execute if score @s flashlightlimit matches 2 at @s run title @s actionbar {"translate":"text.doors.flashlight_limit","color":"red"}
execute if score @s flashlightlimit matches 2 at @s run clear @s warped_fungus_on_a_stick 1

execute if score @s candlelimit matches 2 at @s run summon item ~ ~ ~ {Item:{id:"minecraft:soul_torch",Count:1b,tag:{CustomModelData:3,display:{Name:'[{"translate":"item.doors.candle","italic":false}]'}}},PickupDelay:60s,Motion:[0.0d,0.4d,0.0d]}
execute if score @s candlelimit matches 2 at @s run title @s actionbar {"translate":"text.doors.candle_limit","color":"red"}
execute if score @s candlelimit matches 2 at @s run clear @s soul_torch{CustomModelData:3} 1

execute if score @s lighterlimit matches 2 at @s run summon item ~ ~ ~ {Item:{id:"minecraft:torch",Count:1b,tag:{CustomModelData:1,display:{Name:'[{"translate":"item.doors.lighter","italic":false}]'}}},PickupDelay:60s,Motion:[0.0d,0.4d,0.0d]}
execute if score @s lighterlimit matches 2 at @s run title @s actionbar {"translate":"text.doors.lighter_limit","color":"red"}
execute if score @s lighterlimit matches 2 at @s run clear @s torch{CustomModelData:1} 1

execute if score @s crucifixlimit matches 2 at @s run summon item ~ ~ ~ {Item:{id:"minecraft:string",Count:1b,tag:{CustomModelData:94,display:{Name:'[{"translate":"item.doors.crucifix","italic":false}]'}}},PickupDelay:60s,Motion:[0.0d,0.4d,0.0d]}
execute if score @s crucifixlimit matches 2 at @s run title @s actionbar {"translate":"text.doors.crucifix_limit","color":"red"}
execute if score @s crucifixlimit matches 2 at @s run clear @s string{CustomModelData:94} 1

execute if score @s lockpicklimit matches 6 at @s run summon item ~ ~ ~ {Item:{id:"minecraft:flint",Count:3b,tag:{CustomModelData:13,display:{Name:'[{"translate":"item.doors.lockpick","italic":false}]'}}},PickupDelay:60s,Motion:[0.0d,0.4d,0.0d]}
execute if score @s lockpicklimit matches 6 at @s run title @s actionbar {"translate":"text.doors.lockpick_limit","color":"red"}
execute if score @s lockpicklimit matches 6 at @s run clear @s flint{CustomModelData:13} 3
execute if score @s lockpicklimit matches 5 at @s run summon item ~ ~ ~ {Item:{id:"minecraft:flint",Count:2b,tag:{CustomModelData:13,display:{Name:'[{"translate":"item.doors.lockpick","italic":false}]'}}},PickupDelay:60s,Motion:[0.0d,0.4d,0.0d]}
execute if score @s lockpicklimit matches 5 at @s run title @s actionbar {"translate":"text.doors.lockpick_limit","color":"red"}
execute if score @s lockpicklimit matches 5 at @s run clear @s flint{CustomModelData:13} 2
execute if score @s lockpicklimit matches 4 at @s run summon item ~ ~ ~ {Item:{id:"minecraft:flint",Count:1b,tag:{CustomModelData:13,display:{Name:'[{"translate":"item.doors.lockpick","italic":false}]'}}},PickupDelay:60s,Motion:[0.0d,0.4d,0.0d]}
execute if score @s lockpicklimit matches 4 at @s run title @s actionbar {"translate":"text.doors.lockpick_limit","color":"red"}
execute if score @s lockpicklimit matches 4 at @s run clear @s flint{CustomModelData:13} 1

execute if score @s vitaminslimit matches 6 at @s run summon item ~ ~ ~ {Item:{id:"minecraft:snowball",Count:3b,tag:{CustomModelData:1,display:{Name:'[{"translate":"item.doors.vitamins","italic":false}]'}}},PickupDelay:60s,Motion:[0.0d,0.4d,0.0d]}
execute if score @s vitaminslimit matches 6 at @s run title @s actionbar {"translate":"text.doors.vitamins_limit","color":"red"}
execute if score @s vitaminslimit matches 6 at @s run clear @s snowball{CustomModelData:1} 3
execute if score @s vitaminslimit matches 5 at @s run summon item ~ ~ ~ {Item:{id:"minecraft:snowball",Count:2b,tag:{CustomModelData:1,display:{Name:'[{"translate":"item.doors.vitamins","italic":false}]'}}},PickupDelay:60s,Motion:[0.0d,0.4d,0.0d]}
execute if score @s vitaminslimit matches 5 at @s run title @s actionbar {"translate":"text.doors.vitamins_limit","color":"red"}
execute if score @s vitaminslimit matches 5 at @s run clear @s snowball{CustomModelData:1} 2
execute if score @s vitaminslimit matches 4 at @s run summon item ~ ~ ~ {Item:{id:"minecraft:snowball",Count:1b,tag:{CustomModelData:1,display:{Name:'[{"translate":"item.doors.vitamins","italic":false}]'}}},PickupDelay:60s,Motion:[0.0d,0.4d,0.0d]}
execute if score @s vitaminslimit matches 4 at @s run title @s actionbar {"translate":"text.doors.vitamins_limit","color":"red"}
execute if score @s vitaminslimit matches 4 at @s run clear @s snowball{CustomModelData:1} 1

#Void
execute if entity @s[scores={voidtime=1184}] at @s run playsound doors:entity.void.jumpscare master @s
execute if entity @s[scores={voidtime=1184}] at @s run effect give @s darkness 2 0 true
scoreboard players add @s[scores={voidtime=1184..}] voidtime 1
execute if entity @s[scores={voidtime=1200..}] run scoreboard players operation @s playercurrentdoor = max_score playermaxdoor
execute if entity @s[scores={voidtime=1200..}] run advancement grant @s only doors:achievements/achievement18
execute if entity @s[scores={voidtime=1200..}] unless entity @s[predicate=doors:is_holding_crucifix] run damage @s 10 mob_attack by @e[tag=void,limit=1]
execute if entity @s[scores={voidtime=1200..}] run tp @s @a[tag=leader,sort=furthest,limit=1]
execute if entity @s[scores={voidtime=1200..}] at @s unless entity @s[predicate=doors:is_holding_crucifix] run playsound doors:misc.ear_ringinging master @s
execute if entity @s[scores={voidtime=1200..}] if entity @s[predicate=doors:is_holding_crucifix] run clear @s string{CustomModelData:94}
scoreboard players reset @s[scores={voidtime=1200..}] voidtime

#Sounds
        #A-60
execute if entity @s[tag=atrooms] if entity @e[type=armor_stand,tag=a60] at @s run function doors:sounds/a_60
        #A-120
execute if entity @s[tag=atrooms] if entity @e[type=armor_stand,tag=a120] at @s run function doors:sounds/a_120
        #Ambush
execute if entity @s[tag=!atrooms] if entity @e[type=armor_stand,tag=ambush] at @s run function doors:sounds/ambush
        #Rush
execute if entity @s[tag=!atrooms] if entity @e[type=armor_stand,tag=rush] at @s run function doors:sounds/rush

execute if entity @s[tag=!atrooms] unless entity @e[type=armor_stand,tag=rush] run scoreboard players reset @s rushnear
execute if entity @s[tag=!atrooms] unless entity @e[type=armor_stand,tag=rush] run scoreboard players reset @s rushfar
        #Seek
execute if entity @s[tag=!atrooms,tag=!killed_by_seek] if entity @e[type=armor_stand,tag=seek] at @s run function doors:sounds/seek_steps

        #Dupe
execute if entity @s[scores={dupegrowl=2}] at @s at @e[tag=dupe,limit=1,sort=nearest] run playsound doors:entity.dupe.growl master @s ~ ~ ~ 0.5
scoreboard players reset @s[scores={dupegrowl=90..}] dupegrowl

#Knobs
scoreboard players enable @s revive
execute if entity @e[tag=void,scores={reception=1..}] if score @s revive matches 1.. at @s run function doors:revive/revive