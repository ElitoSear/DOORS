function doors:library/replace_books

execute at @s align xyz positioned ^1.0 ^-2.0 ^-1 run execute as @a[tag=atlibrary,dx=1,dy=3,dz=1] at @e[tag=door,scores={doornumber=50}] run tag @e[tag=automaticdoorlibrary,limit=1,sort=nearest] add closed
execute at @s align xyz positioned ^1.0 ^-2.0 ^ run execute as @a[tag=atlibrary,dx=1,dy=3,dz=1] at @e[tag=door,scores={doornumber=50}] run tag @e[tag=automaticdoorlibrary,limit=1,sort=nearest] add closed
execute at @s align xyz positioned ^1.0 ^-2.0 ^-1 run execute as @a[tag=atlibrary,dx=1,dy=3,dz=1] at @e[tag=door,scores={doornumber=50}] run tp @s ^0.01 ^-2 ^-4 facing ^0.01 ^-2 ^-5
execute at @s align xyz positioned ^1.0 ^-2.0 ^ run execute as @a[tag=atlibrary,dx=1,dy=3,dz=1] at @e[tag=door,scores={doornumber=50}] run tp @s ^0.01 ^-2 ^-4 facing ^0.01 ^-2 ^-5

execute at @s align xyz positioned ^1.0 ^-2.0 ^-1 run execute as @e[tag=figure,dx=1,dy=3,dz=1] at @e[tag=door,scores={doornumber=50}] run tag @e[tag=automaticdoorlibrary,limit=1,sort=nearest] add closed
execute at @s align xyz positioned ^1.0 ^-2.0 ^ run execute as @e[tag=figure,dx=1,dy=3,dz=1] at @e[tag=door,scores={doornumber=50}] run tag @e[tag=automaticdoorlibrary,limit=1,sort=nearest] add closed
execute at @s align xyz positioned ^1.0 ^-2.0 ^-1 run execute as @e[tag=figure,dx=1,dy=3,dz=1] at @e[tag=door,scores={doornumber=50}] run tp @s ^0.01 ^-2 ^-6 facing ^0.01 ^-2 ^-7
execute at @s align xyz positioned ^1.0 ^-2.0 ^ run execute as @e[tag=figure,dx=1,dy=3,dz=1] at @e[tag=door,scores={doornumber=50}] run tp @s ^0.01 ^-2 ^-6 facing ^0.01 ^-2 ^-7

execute at @s unless entity @s[scores={librarystart=1..}] if block ^ ^-2 ^-1 mangrove_door[open=true] run scoreboard players add @s librarystart 1

execute if entity @s[scores={librarystart=2}] run execute as @e[tag=door] if score @s doornumber matches 1..47 run tag @s add destroy
execute if entity @s[scores={librarystart=2}] at @s run summon armor_stand ^0.01 ^-2.5 ^0.79 {Tags:["camera"],NoGravity:1,Invisible:1}
execute if entity @s[scores={librarystart=3}] at @s run tp @e[tag=camera] ^0.01 ^-2.5 ^0.79 facing ^0.01 ^-2.5 ^
execute if entity @s[scores={librarystart=3}] run gamemode spectator @a
execute if entity @s[scores={librarystart=222}] run scoreboard players reset @a walk
execute if entity @s[scores={librarystart=222}] run scoreboard players reset @a running
execute if entity @s[scores={librarystart=3..63}] run execute as @e[tag=camera] at @s run tp @s ^ ^ ^0.15
execute if entity @s[scores={librarystart=2}] run execute as @a at @s run playsound custom:music.unhinged_intro master @s
execute if entity @s[scores={librarystart=111}] run execute at @e[tag=figure] run playsound custom:entity.figure.aggressive_growl master @a
execute if entity @s[scores={librarystart=80..223}] run execute as @e[tag=camera] at @s run tp @s ^ ^ ^-0.048
execute if entity @s[scores={librarystart=63..93}] run execute as @e[tag=figure] at @s run tp @s ^ ^ ^0.4 facing entity @e[tag=figurepathlibrary,tag=!checked,limit=1,sort=nearest]
execute if entity @s[scores={librarystart=94..140}] run execute as @e[tag=figure] at @s run tp @s ^ ^ ^ facing entity @e[tag=camera,limit=1,sort=nearest]
execute if entity @s[scores={librarystart=141..223}] run execute as @e[tag=figure] at @s run tp @s ^ ^ ^0.5 facing entity @e[tag=figurepathlibrary,tag=!checked,limit=1,sort=nearest]
execute if entity @s[scores={librarystart=224}] run execute as @e[tag=figure] at @s run tp @s ^ ^0.5 ^
execute if entity @s[scores={librarystart=223}] at @s run kill @e[tag=camera]
execute if entity @s[scores={librarystart=223}] at @s run gamemode adventure @a[scores={muerte=0}]
execute if entity @s[scores={librarystart=223}] at @s run tp @a[gamemode=adventure] ^0.01 ^-2 ^-4 facing ^0.01 ^-2 ^-5
execute if entity @s[scores={librarystart=223}] at @s run function doors:loadlibrary
execute if entity @s[scores={librarystart=223}] at @s run tag @a[gamemode=adventure] add atlibrary
execute if entity @s[scores={librarystart=223}] at @s run tag @a[gamemode=adventure] add atfigure
execute if entity @s[scores={librarystart=223}] at @s run tag @a[tag=atlibrary] add screechexemption
execute if entity @s[scores={librarystart=223}] at @s run scoreboard players add @a librarymusic 1
execute if entity @s[scores={librarystart=223}] at @s run scoreboard players set @a[gamemode=adventure] playercurrentdoor 50
execute if entity @s[scores={librarystart=223}] at @s run data merge entity @e[tag=figure,limit=1] {Silent:0b,NoAI:0b,NoGravity:0}
execute if entity @s[scores={librarystart=224}] run execute as @e[tag=hiddenbook] unless entity @s[nbt={HandItems:[{id:"minecraft:sunflower"}]}] run kill @s
execute if entity @s[scores={librarystart=4..800}] run execute as @a run spectate @e[tag=camera,limit=1,sort=nearest]

execute if entity @s[scores={librarystart=62}] at @e[tag=figure] run playsound entity.zombie.step master @a
execute if entity @s[scores={librarystart=66}] at @e[tag=figure] run playsound entity.zombie.step master @a
execute if entity @s[scores={librarystart=70}] at @e[tag=figure] run playsound entity.zombie.step master @a
execute if entity @s[scores={librarystart=74}] at @e[tag=figure] run playsound entity.zombie.step master @a
execute if entity @s[scores={librarystart=78}] at @e[tag=figure] run playsound entity.zombie.step master @a
execute if entity @s[scores={librarystart=83}] at @e[tag=figure] run playsound entity.zombie.step master @a
execute if entity @s[scores={librarystart=88}] at @e[tag=figure] run playsound entity.zombie.step master @a
execute if entity @s[scores={librarystart=92}] at @e[tag=figure] run playsound entity.zombie.step master @a
execute if entity @s[scores={librarystart=147}] at @e[tag=figure] run playsound entity.zombie.step master @a
execute if entity @s[scores={librarystart=152}] at @e[tag=figure] run playsound entity.zombie.step master @a
execute if entity @s[scores={librarystart=156}] at @e[tag=figure] run playsound entity.zombie.step master @a
execute if entity @s[scores={librarystart=161}] at @e[tag=figure] run playsound entity.zombie.step master @a
execute if entity @s[scores={librarystart=165}] at @e[tag=figure] run playsound entity.zombie.step master @a
execute if entity @s[scores={librarystart=169}] at @e[tag=figure] run playsound entity.zombie.step master @a
execute if entity @s[scores={librarystart=173}] at @e[tag=figure] run playsound entity.zombie.step master @a
execute if entity @s[scores={librarystart=177}] at @e[tag=figure] run playsound entity.zombie.step master @a
execute if entity @s[scores={librarystart=181}] at @e[tag=figure] run playsound entity.zombie.step master @a

execute if entity @s[scores={librarystart=1..800}] run scoreboard players add @s librarystart 1