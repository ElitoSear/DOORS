

execute if score @s generating matches 7 if score @s structurepick matches 4 store result score boolean keyishidden run random value 0..1
execute if score @s generating matches 7 if score @s structurepick matches 13 store result score boolean keyishidden run random value 0..1

execute if score @s doornumber = firstchase seekrandomness run tag @s add seekcrescendo1
execute if score @s doornumber = secondchase seekrandomness run tag @s add seekcrescendo1

execute if entity @s[scores={generating=5}] run function doors:numberassignment

execute at @s align xyz positioned ^ ^-2.0 ^ run scoreboard players operation @a[gamemode=adventure,dx=1.0,dy=1.0,dz=1.0] playercurrentdoor = @s doornumber
execute at @s align xyz positioned ^ ^-2.0 ^1.0 run execute as @a[gamemode=adventure,dx=1.0,dy=1.0,dz=1.0] if score @e[tag=door,sort=nearest,limit=1] doornumber = @s playercurrentdoor run scoreboard players remove @s playercurrentdoor 1
execute if entity @s[scores={doornumber=50..51}] at @s align xyz positioned ^1.0 ^-2.0 ^ run scoreboard players operation @a[gamemode=adventure,dx=1.0,dy=1.0,dz=1.0] playercurrentdoor = @s doornumber
execute if entity @s[scores={doornumber=50..51}] at @s align xyz positioned ^1.0 ^-2.0 ^1.0 run execute as @a[gamemode=adventure,dx=1.0,dy=1.0,dz=1.0] if score @e[tag=door,sort=nearest,limit=1] doornumber = @s playercurrentdoor run scoreboard players remove @s playercurrentdoor 1

execute if entity @s[scores={flickering=1}] run tag @s add flickon
execute if entity @s[scores={flickering=2}] run tag @s remove flickon
execute if entity @s[scores={flickering=3}] run tag @s add flickoff
execute if entity @s[scores={flickering=4}] run tag @s remove flickoff
execute if entity @s[scores={flickering=5}] run tag @s add flickon
execute if entity @s[scores={flickering=6}] run tag @s remove flickon
execute if entity @s[scores={flickering=7}] run tag @s add flickoff
execute if entity @s[scores={flickering=8}] run tag @s remove flickoff
execute if entity @s[scores={flickering=9}] run tag @s add flickon
execute if entity @s[scores={flickering=10}] run tag @s remove flickon
execute if entity @s[scores={flickering=11}] run tag @s add flickoff
execute if entity @s[scores={flickering=12}] run tag @s remove flickoff
scoreboard players add @s[scores={flickering=1..13}] flickering 1
scoreboard players reset @s[scores={flickering=14..}] flickering

execute if entity @a[nbt={Inventory:[{id:"minecraft:string",tag:{CustomModelData:13}}]}] at @s positioned ^ ^-2 ^-0.51 run clear @a[distance=..0.5] string{CustomModelData:13}

#Rush and Ambush tag adding to rooms they won't spawn
execute if entity @s[scores={generating=12}] run function doors:entitieswontspawn
execute if entity @s[scores={doornumber=90..98}] at @s run scoreboard players set @a[distance=..10,gamemode=adventure,scores={rushrandomizer=5..}] rushrandomizer 1
#Player Maximum Door Reached and 
function doors:maxdoornumber
#Library Items
execute if entity @s[scores={doornumber=51}] at @s positioned ^0.01 ^-2 ^-1.201 run function doors:deletelibraryitems
#Infirmary
execute if score @s doornumber = infirmary infirmaryrandomness run tag @s add infirmary
execute if entity @s[tag=infirmary,scores={generating=3}] run scoreboard players set @s structurepick 58
#Rush
       #Summoning
execute if entity @s[scores={rush=2}] run execute as @e[tag=door] run scoreboard players add @s flickering 1
execute if entity @s[scores={rush=40}] at @s run execute as @a[tag=!atrooms] at @s run playsound doors:entity.rush.arrival master @s ~ ~ ~ 0.5
execute if entity @s[scores={rush=61}] at @a[tag=leader,limit=1] run scoreboard players set @a[distance=70..] voidtime 1184
execute if entity @s[scores={rush=78}] run scoreboard players operation @a[tag=lastplayer] summoningsubtraction = @a[tag=lastplayer] playercurrentdoor
execute if entity @s[scores={rush=79}] run scoreboard players remove @a[tag=lastplayer] summoningsubtraction 3
execute if entity @s[scores={rush=79}] run execute as @e[tag=door] if score @s generating matches 13 if score @s doornumber < @a[tag=lastplayer,limit=1] summoningsubtraction run tag @s add destroy
execute if entity @s[scores={rush=80}] at @s run execute as @e[tag=door] at @s if score @s doornumber = @a[tag=lastplayer,limit=1] summoningsubtraction run summon minecraft:armor_stand ^ ^-2 ^-1.51 {Tags:["rush","rushorambush","immunetodeletion"],CustomName:'{"text":"Rush","bold":true}',DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:string",Count:1b,tag:{CustomModelData:20}}],Invisible:1,NoGravity:1b}
execute if entity @s[scores={rush=180..}] run execute as @e[tag=rush] at @s unless entity @s[scores={crucifixed=1..}] run tp @s ^ ^ ^0.4 facing entity @e[tag=entitypath,tag=!rushchecked,limit=1,sort=nearest]

scoreboard players add @s[scores={rush=1..}] rush 1

#Ambush
        #Summoning
execute if entity @s[scores={ambush=2}] at @s run execute as @a[tag=!atrooms] at @s run playsound doors:entity.ambush.arrival master @s ~ ~ ~ 0.5
execute if entity @s[scores={ambush=133}] run execute as @e[tag=door] if score @s doornumber <= @e[scores={ambush=133},limit=1] doornumber run tag @s add flickon
execute if entity @s[scores={ambush=132}] at @a[tag=leader,limit=1] run scoreboard players set @a[distance=70..] voidtime 1184
execute if entity @s[scores={ambush=134}] run tag @e[tag=flickon] remove flickon
execute if entity @s[scores={ambush=149}] run scoreboard players operation @a[tag=lastplayer] summoningsubtraction = @a[tag=lastplayer] playercurrentdoor
execute if entity @s[scores={ambush=150}] run scoreboard players remove @a[tag=lastplayer] summoningsubtraction 2
execute if entity @s[scores={ambush=150}] run execute as @e[tag=door] at @s if score @s generating matches 13 if score @s doornumber < @a[tag=lastplayer,limit=1] summoningsubtraction run tag @s add destroy
execute if entity @s[scores={ambush=151}] at @s run execute as @e[tag=door] at @s if score @s doornumber = @a[tag=lastplayer,limit=1] summoningsubtraction run summon minecraft:armor_stand ^ ^-2 ^-1.51 {Tags:["ambush","rushorambush","immunetodeletion"],CustomName:'{"text":"Ambush","bold":true}',DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:string",Count:1b,tag:{CustomModelData:19}}],HandItems:[{},{id:"minecraft:soul_torch",Count:1b,tag:{CustomModelData:1}}],Invisible:1,NoGravity:1b}
execute if entity @s[scores={ambush=151}] at @e[tag=ambush] run tag @e[tag=entitypath,limit=1,sort=nearest] add ambushsummonpos
execute if entity @s[scores={ambush=152..}] run execute as @e[tag=ambush,tag=!stop] at @s unless entity @s[scores={crucifixed=1..}] run tp @s ^ ^ ^0.5 facing entity @e[tag=entitypath,tag=!ambushchecked,limit=1,sort=nearest]
execute if entity @s[scores={ambush=152..}] run execute as @e[tag=ambush,tag=stop] at @s unless entity @s[scores={crucifixed=1..}] run tp @s ^ ^ ^0.5 facing entity @e[tag=entitypath,tag=ambushchecked,limit=1,sort=nearest]
execute if entity @s[scores={ambush=1200..}] run kill @e[tag=ambush]
execute if entity @s[scores={ambush=1200..}] run advancement grant @a[scores={muerte=0}] only doors:achievements/achievement15
execute if entity @s[scores={ambush=1200..}] run scoreboard players reset @s ambush

scoreboard players add @s[scores={ambush=1..}] ambush 1

#Seek

#Room Events
execute if entity @s[scores={seekroomevent=1}] run scoreboard players add @s flickering 1

execute if entity @s[scores={seekfinishevent=1}] run scoreboard players add @s flickering 1
execute if entity @s[scores={seekfinishevent=1}] at @s positioned ^ ^-1 ^-21 run execute as @e[tag=hand,distance=..22] at @s run particle minecraft:block minecraft:glass ^ ^1.5 ^0.5 0.1 0.1 0.1 2 150 normal @a
execute if entity @s[scores={seekfinishevent=1}] at @s positioned ^ ^-1 ^-21 run execute as @e[tag=hand,distance=..22] at @s run playsound block.glass.break block @a ~ ~1.5 ~
execute if entity @s[scores={seekfinishevent=10}] at @s positioned ^ ^-1 ^-21 run execute as @a[distance=..22] at @s run playsound doors:entity.seek.scream master @s ^ ^ ^-5

execute if entity @s[scores={seekroomevent=1..12}] run scoreboard players add @s seekroomevent 1
execute if entity @s[scores={seekfinishevent=1..12}] run scoreboard players add @s seekfinishevent 1

execute if entity @s[tag=seekcrescendo1] at @s positioned ^ ^-2 ^-0.51 if entity @a[distance=..1] unless entity @s[scores={seekroomevent=1..}] run scoreboard players add @s seekroomevent 1
execute if entity @s[tag=seekcrescendo2] at @s positioned ^ ^-2 ^-0.51 if entity @a[distance=..1] unless entity @s[scores={seekroomevent=1..}] run scoreboard players add @s seekroomevent 1
execute if entity @s[tag=seekcrescendo3] at @s positioned ^ ^-2 ^-0.51 if entity @a[distance=..1] unless entity @s[scores={seekroomevent=1..}] run scoreboard players add @s seekroomevent 1
execute if entity @s[tag=seekroom1] at @s positioned ^ ^-2 ^-0.51 if entity @a[distance=..1] unless entity @s[scores={seekroomevent=1..}] run scoreboard players add @s seekroomevent 1
execute if entity @s[tag=seekroom2] at @s positioned ^ ^-2 ^-0.51 if entity @a[distance=..1] unless entity @s[scores={seekroomevent=1..}] run scoreboard players add @s seekroomevent 1
execute if entity @s[tag=seekroom3] at @s positioned ^ ^-2 ^-0.51 if entity @a[distance=..1] unless entity @s[scores={seekroomevent=1..}] run scoreboard players add @s seekroomevent 1
execute if entity @s[tag=seekroom4] at @s positioned ^ ^-2 ^-0.51 if entity @a[distance=..1] unless entity @s[scores={seekroomevent=1..}] run scoreboard players add @s seekroomevent 1
execute if entity @s[tag=seekfinish] at @s positioned ^ ^-2 ^-0.51 if entity @a[distance=..1] unless entity @s[scores={seekfinishevent=1..}] run scoreboard players add @s seekfinishevent 1
execute if entity @s[tag=seekfinish] at @s positioned ^ ^-2 ^-0.51 run tag @a[distance=..1] add killed_by_seek_hallway
execute if entity @s[tag=seekfinish] at @s positioned ^ ^-2 ^-0.51 run tag @a[distance=..1] add killed_by_seek_other_means

execute if entity @s[scores={generating=2}] at @s run function doors:seekroomspick

execute if entity @s[tag=destroy] run setblock ^ ^-4 ^-1 air