execute if score @s roomsdoornumber matches 0..9 run data merge entity @s {text:'["",{"text":"A-00","color":"black"},{"score":{"name":"@s","objective":"roomsdoornumber"},"color":"black"}]'}
execute if score @s roomsdoornumber matches 10..99 run data merge entity @s {text:'["",{"text":"A-0","color":"black"},{"score":{"name":"@s","objective":"roomsdoornumber"},"color":"black"}]'}
execute if score @s roomsdoornumber matches 100.. run data merge entity @s {text:'["",{"text":"A-","color":"black"},{"score":{"name":"@s","objective":"roomsdoornumber"},"color":"black"}]'}

#Rooms leader and last player
scoreboard players operation max_door roomsdoornumber > @s roomsdoornumber
execute if score @s roomsdoornumber = max_door roomsdoornumber run tag @s add roomslatest
execute unless score @s roomsdoornumber = max_door roomsdoornumber run tag @s remove roomslatest
#A-60
        #Summoning
execute if entity @s[scores={a60=2}] at @s run execute as @a[tag=atrooms] at @s run playsound custom:entity.a60.arrival master @s ~ ~ ~
execute if entity @s[scores={a60=78}] run scoreboard players operation @a[tag=lastroomsplayer] roomssummoningsubstraction = @a[tag=lastroomsplayer] playercurrentroomsdoor
execute if entity @s[scores={a60=79}] run scoreboard players remove @a[tag=lastroomsplayer] roomssummoningsubstraction 2
execute if entity @s[scores={a60=79}] run execute as @e[tag=roomsdoor] if score @s generating matches 13 if score @s roomsdoornumber < @a[tag=lastroomsplayer,limit=1] roomssummoningsubstraction run tag @s add destroy
execute if entity @s[scores={a60=80}] at @s run execute as @e[tag=roomsdoor] at @s if score @s roomsdoornumber = @a[tag=lastroomsplayer,limit=1] roomssummoningsubstraction run summon minecraft:armor_stand ^ ^-2 ^-1.51 {Tags:["a60","roomsentity","immunetodeletion"],CustomName:'{"text":"A-60","bold":true}',DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:string",Count:1b,tag:{CustomModelData:120}}],Invisible:1,NoGravity:1b}
execute if entity @s[scores={a60=180..}] run execute as @e[tag=a60] at @s run tp @s ^ ^ ^0.4 facing entity @e[tag=roomsentitypath,tag=!a60checked,limit=1,sort=nearest]
scoreboard players add @s[scores={a60=1..}] a60 1
#A-120
       #Summoning
execute if entity @s[scores={a120=2}] run scoreboard players operation @a[tag=lastroomsplayer] roomssummoningsubstraction = @a[tag=lastroomsplayer] playercurrentroomsdoor
execute if entity @s[scores={a120=3}] run scoreboard players remove @a[tag=lastroomsplayer] roomssummoningsubstraction 2
execute if entity @s[scores={a120=4}] run execute as @e[tag=roomsdoor] if score @s generating matches 13 if score @s roomsdoornumber < @a[tag=lastroomsplayer,limit=1] roomssummoningsubstraction run tag @s add destroy
execute if entity @s[scores={a120=5}] at @s run execute as @e[tag=roomsdoor] at @s if score @s roomsdoornumber = @a[tag=lastroomsplayer,limit=1] roomssummoningsubstraction run summon minecraft:armor_stand ^ ^-2 ^-1.51 {Tags:["a120","roomsentity","immunetodeletion"],CustomName:'{"text":"A-120","bold":true}',DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:string",Count:1b,tag:{CustomModelData:122}}],Invisible:1,NoGravity:1b}
execute if entity @s[scores={a120=125..}] run execute as @e[tag=a120] at @s run tp @s ^ ^ ^0.4 facing entity @e[tag=roomsentitypath,tag=!a120checked,limit=1,sort=nearest]
scoreboard players add @s[scores={a120=1..}] a120 1

execute at @s align xyz positioned ^ ^-2 ^-1 if entity @s[scores={generating=10}] run summon interaction ~0.5 ~ ~0.5 {Tags:["automaticdoor"],width:1.1f,height:2f}
execute at @s align xyz positioned ^ ^-2 ^-1 run scoreboard players operation @a[gamemode=adventure,dx=1.0,dy=1.0,dz=1.0] playercurrentroomsdoor = @s roomsdoornumber
execute at @s align xyz positioned ^ ^-2 ^ run execute as @a[gamemode=adventure,dx=1,dy=1,dz=1] if score @e[tag=roomsdoor,sort=nearest,limit=1] roomsdoornumber = @s playercurrentroomsdoor run scoreboard players remove @s playercurrentroomsdoor 1
