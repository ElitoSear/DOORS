#Figure

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

execute as @a[scores={running=15..},tag=atlibrary] at @s unless entity @a[scores={killedbyfigure=1..}] run attribute @e[tag=figure,limit=1,sort=nearest] generic.movement_speed base set 0.5
execute as @a[scores={running=15..},tag=atlibrary] at @s run data modify entity @e[tag=figure,limit=1,sort=nearest] AngryAt set from entity @s UUID


execute as @a[scores={walk=500..},tag=atlibrary] at @s unless entity @a[scores={killedbyfigure=1..}] run attribute @e[tag=figure,limit=1,sort=nearest] generic.movement_speed base set 0.5
execute as @a[scores={walk=500..},tag=atlibrary] at @s run data modify entity @e[tag=figure,limit=1,sort=nearest] AngryAt set from entity @s UUID


execute as @e[tag=figure] at @s run execute as @a[tag=atlibrary,distance=0..24] if predicate doors:is_sprinting run scoreboard players add @s running 1
execute as @e[tag=figure] at @s run execute as @a[tag=atlibrary,distance=12..] run scoreboard players reset @s walk


execute as @e[tag=figure] at @s unless entity @s[scores={crucifixfailed=1..}] unless entity @e[scores={heartminigame=1..}] run execute as @a[tag=atlibrary,distance=..2] unless entity @s[scores={killedbyfigure=1..}] run scoreboard players add @s killedbyfigure 1
execute as @e[tag=figure,scores={crucifixfailed=1..2}] run data merge entity @s {NoAI:1b}
execute as @e[tag=figure,scores={crucifixfailed=120}] run data merge entity @s {NoAI:0b}

execute as @e[tag=figure] at @s if entity @a[tag=atlibrary,distance=..2] run attribute @s generic.movement_speed base set 0.23

#KilledByFigure

execute as @e[tag=figure] unless entity @s[nbt={ActiveEffects:[{Id:18}]}] run effect give @s weakness infinite 127 true


#Start Library

execute as @e[tag=door,scores={doornumber=50}] run function doors:librarystart

execute as @e[tag=figure] at @s run tag @e[tag=figurepathlibrary,distance=..0.5] add checked

execute as @a[scores={librarymusic=2}] at @s run playsound custom:music.unhinged voice @s
execute as @a[scores={librarymusic=852..}] run scoreboard players set @s librarymusic 1
execute as @a[scores={librarymusic=1..852}] run scoreboard players add @s librarymusic 1

#Slots
execute as @e[tag=slot,scores={slotnumber=10..}] run scoreboard players set @s slotnumber 0
execute as @e[tag=slotdisplay] run function doors:slotdisplay
scoreboard players operation @e[tag=slot1display] slotnumber = @e[tag=slot1] slotnumber
scoreboard players operation @e[tag=slot2display] slotnumber = @e[tag=slot2] slotnumber
scoreboard players operation @e[tag=slot3display] slotnumber = @e[tag=slot3] slotnumber
scoreboard players operation @e[tag=slot4display] slotnumber = @e[tag=slot4] slotnumber
scoreboard players operation @e[tag=slot5display] slotnumber = @e[tag=slot5] slotnumber
execute as @e[tag=book1] run item replace entity @s weapon with minecraft:sunflower{CustomModelData:1,book:1}
execute as @e[tag=book2] run item replace entity @s weapon with minecraft:sunflower{CustomModelData:2,book:2}
execute as @e[tag=book3] run item replace entity @s weapon with minecraft:sunflower{CustomModelData:3,book:3}
execute as @e[tag=book4] run item replace entity @s weapon with minecraft:sunflower{CustomModelData:4,book:4}
execute as @e[tag=book5] run item replace entity @s weapon with minecraft:sunflower{CustomModelData:5,book:5}
execute as @e[tag=itemforsale] run function doors:itemforsale
#Set solution paper for players to pick up constantly
execute as @e[tag=solutionpaper] if entity @s[nbt={ArmorItems:[{tag:{CustomModelData:101}}]}] run tag @s add solutionpaper1
execute as @e[tag=solutionpaper] if entity @s[nbt={ArmorItems:[{tag:{CustomModelData:102}}]}] run tag @s remove solutionpaper1
execute as @e[tag=solutionpaper] if entity @s[nbt={ArmorItems:[{tag:{CustomModelData:103}}]}] run tag @s remove solutionpaper1
execute as @e[tag=solutionpaper1] run item replace entity @s armor.head with string{display:{Name:'{"translate":"item.doors.solution_paper","italic":false}'},CustomModelData:101}
execute as @e[tag=solutionpaper] if entity @s[nbt={ArmorItems:[{tag:{CustomModelData:102}}]}] run tag @s add solutionpaper2
execute as @e[tag=solutionpaper] if entity @s[nbt={ArmorItems:[{tag:{CustomModelData:101}}]}] run tag @s remove solutionpaper2
execute as @e[tag=solutionpaper] if entity @s[nbt={ArmorItems:[{tag:{CustomModelData:103}}]}] run tag @s remove solutionpaper2
execute as @e[tag=solutionpaper2] run item replace entity @s armor.head with string{display:{Name:'{"translate":"item.doors.solution_paper","italic":false}'},CustomModelData:102}
execute as @e[tag=solutionpaper] if entity @s[nbt={ArmorItems:[{tag:{CustomModelData:103}}]}] run tag @s add solutionpaper3
execute as @e[tag=solutionpaper] if entity @s[nbt={ArmorItems:[{tag:{CustomModelData:102}}]}] run tag @s remove solutionpaper3
execute as @e[tag=solutionpaper] if entity @s[nbt={ArmorItems:[{tag:{CustomModelData:101}}]}] run tag @s remove solutionpaper3
execute as @e[tag=solutionpaper3] run item replace entity @s armor.head with string{display:{Name:'{"translate":"item.doors.solution_paper","italic":false}'},CustomModelData:103}
#Make goblino look at players
execute as @e[type=item_display,tag=goblinoshead] at @s anchored eyes facing entity @a[gamemode=!spectator,sort=nearest,limit=1,distance=0.1..] eyes positioned ^ ^ ^0.3 rotated as @s positioned ^ ^ ^1 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~
#Lock Number Sound
execute as @e[tag=slot] at @s run function doors:slot
#Unlocking door
execute as @e[tag=lock50] at @s if entity @s[nbt={interaction:{}}] run function doors:lock50
#Killing books from the floor

kill @e[type=item,nbt={Item:{id:"minecraft:sunflower"}}] 

#Buying System
execute as @e[tag=crucifixforsale,tag=itemforsale] run function doors:crucifixforsale
execute as @e[tag=vitaminsforsale,tag=itemforsale] run function doors:vitaminsforsale
execute as @e[tag=lockpickforsale,tag=itemforsale] run function doors:lockpickforsale
execute as @e[tag=skeletonkeyforsale,tag=itemforsale] run function doors:skeletonkeyforsale


