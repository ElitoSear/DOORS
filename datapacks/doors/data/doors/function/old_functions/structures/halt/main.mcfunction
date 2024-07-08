#halt

#90
execute if entity @s[y_rotation=90] run function doors:structures/halt/90
#180
execute if entity @s[y_rotation=180] run function doors:structures/halt/180
#-90
execute if entity @s[y_rotation=-90] run function doors:structures/halt/-90
#0
execute if entity @s[y_rotation=0] run function doors:structures/halt/0

#Not rotated variable needed

execute at @s align xyz positioned ^ ^-2 ^1 run tag @e[tag=rushorambush,dx=1.0,dz=1.0] add stop
execute if entity @s[tag=destroy] at @s align xyz positioned ^-6 ^-3 ^-1 run fill ^ ^ ^ ^13 ^8 ^-90 air
execute if entity @s[tag=destroy] run kill @s

execute if entity @s[scores={halt=2}] at @s run tag @e[tag=automaticdoor,limit=1,sort=nearest] add closed
execute if entity @s[scores={halt=2}] at @s align xyz run fill ^ ^-1 ^ ^ ^-2 ^ barrier
execute if entity @s[scores={halt=2}] run effect give @a[gamemode=adventure] blindness infinite 0 true
execute if entity @s[scores={halt=2}] run effect give @a[gamemode=adventure] darkness infinite 0 true
execute if entity @s[scores={halt=2}] run execute as @a at @s run playsound doors:entity.halt.ambience master @s
execute if entity @s[scores={halt=2}] run tag @a[gamemode=adventure] add athalt
execute if entity @s[scores={halt=2}] run tag @a[gamemode=adventure] add nooffhandwarning
execute if entity @s[scores={halt=2}] run tag @a[gamemode=adventure] add screechexemption
execute if entity @s[scores={halt=2}] run stopsound @a[tag=athalt] * doors:music.here_i_come
execute if entity @s[scores={halt=2}] run execute as @a[tag=athalt] run attribute @s generic.movement_speed base set 0.1
execute if entity @s[scores={halt=2}] run effect clear @a[tag=athalt] invisibility
execute if entity @s[scores={halt=2}] run tag @a[tag=athalt] remove atseek
execute if entity @s[scores={halt=2}] at @s positioned ^ ^-2 ^-3 run tp @a ^ ^ ^ facing ^ ^ ^-4
execute if entity @s[scores={halt=69}] at @s positioned ^ ^-2 ^-33 run summon armor_stand ^ ^ ^ {CustomName:'{"text":"Halt","bold":true}',CustomNameVisible:0b,Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:string",Count:1b,tag:{CustomModelData:35}}],HandItems:[{id:"soul_torch",Count:1b,tag:{CustomModelData:1}},{}],Tags:["halt"],DisabledSlots:4144959}
execute if entity @s[scores={halt=60}] run execute as @a[tag=athalt] at @s run playsound doors:entity.halt.summon master @s ~ ~ ~ 0.5
execute if entity @s[scores={halt=80}] run execute as @a[tag=athalt] at @s run playsound doors:entity.halt.whisper master @s ~ ~ ~ 0.5
execute if entity @s[scores={halt=100}] run execute as @a[tag=athalt] at @s run playsound doors:entity.halt.whisper master @s ~ ~ ~ 0.5
execute if entity @s[scores={halt=110}] run execute as @a[tag=athalt] at @s run playsound doors:entity.halt.whistles master @s ~ ~ ~ 0.5
execute if entity @s[scores={halt=150}] run execute as @a[tag=athalt] at @s run playsound doors:entity.halt.whisper master @s ~ ~ ~ 0.5
execute if entity @s[scores={halt=288}] run execute as @a[tag=athalt] at @s run playsound doors:entity.halt.whistles master @s ~ ~ ~ 0.5 0.8
execute if entity @s[scores={halt=300}] run execute as @a[tag=athalt] at @s run playsound doors:entity.halt.whisper master @s ~ ~ ~ 0.5
execute if entity @s[scores={halt=350}] run execute as @a[tag=athalt] at @s run playsound doors:entity.halt.whisper master @s ~ ~ ~ 0.5 1.2
execute if entity @s[scores={halt=450}] run execute as @a[tag=athalt] at @s run playsound doors:entity.halt.whisper master @s ~ ~ ~ 0.5 0.75
execute if entity @s[scores={halt=466}] run execute as @a[tag=athalt] at @s run playsound doors:entity.halt.whistles master @s ~ ~ ~ 0.5
execute if entity @s[scores={halt=600}] run execute as @a[tag=athalt] at @s run playsound doors:entity.halt.whisper master @s ~ ~ ~ 0.5
execute if entity @s[scores={halt=644}] run execute as @a[tag=athalt] at @s run playsound doors:entity.halt.whistles master @s ~ ~ ~ 0.5
execute if entity @s[scores={halt=730}] run execute as @a[tag=athalt] at @s run playsound doors:entity.halt.whisper master @s ~ ~ ~ 0.5 1.2
execute if entity @s[scores={halt=800}] run execute as @a[tag=athalt] at @s run playsound doors:entity.halt.whisper master @s ~ ~ ~ 0.5
execute if entity @s[scores={halt=822}] run execute as @a[tag=athalt] at @s run playsound doors:entity.halt.distorted master @s ~ ~ ~ 0.3
execute if entity @s[scores={halt=900}] run execute as @a[tag=athalt] at @s run playsound doors:entity.halt.whisper master @s ~ ~ ~ 0.5

execute if entity @s[scores={halt=60}] run execute as @a[tag=athalt] at @s run scoreboard players add @s turnaroundwarning 1
execute if entity @s[scores={halt=70}] at @s positioned ^ ^-2 ^-43.01 run execute as @a[tag=athalt,limit=1,sort=nearest] at @s rotated as @e[scores={halt=70}] run execute as @e[tag=halt,limit=1,sort=nearest] run tp @s ^ ^ ^-9 facing ~ ~ ~

execute if entity @s[scores={halt=140}] run execute as @a[tag=athalt] at @s run scoreboard players add @s turnaroundwarning 1
execute if entity @s[scores={halt=150}] at @s positioned ^ ^-2 ^-43.01 run execute as @a[tag=athalt,limit=1,sort=nearest] at @s rotated as @e[scores={halt=150}] run execute as @e[tag=halt,limit=1,sort=nearest] run tp @s ^ ^ ^9 facing ~ ~ ~

execute if entity @s[scores={halt=250}] run execute as @a[tag=athalt] at @s run scoreboard players add @s turnaroundwarning 1
execute if entity @s[scores={halt=260}] at @s positioned ^ ^-2 ^-43.01 run execute as @a[tag=athalt,limit=1,sort=nearest] at @s rotated as @e[scores={halt=260}] run execute as @e[tag=halt,limit=1,sort=nearest] run tp @s ^ ^ ^-9 facing ~ ~ ~

execute if entity @s[scores={halt=320}] run execute as @a[tag=athalt] at @s run scoreboard players add @s turnaroundwarning 1
execute if entity @s[scores={halt=330}] at @s positioned ^ ^-2 ^-43.01 run execute as @a[tag=athalt,limit=1,sort=nearest] at @s rotated as @e[scores={halt=330}] run execute as @e[tag=halt,limit=1,sort=nearest] run tp @s ^ ^ ^9 facing ~ ~ ~

execute if entity @s[scores={halt=520}] run execute as @a[tag=athalt] at @s run scoreboard players add @s turnaroundwarning 1
execute if entity @s[scores={halt=530}] at @s positioned ^ ^-2 ^-43.01 run execute as @a[tag=athalt,limit=1,sort=nearest] at @s rotated as @e[scores={halt=530}] run execute as @e[tag=halt,limit=1,sort=nearest] run tp @s ^ ^ ^-9 facing ~ ~ ~

execute if entity @s[scores={halt=620}] run execute as @a[tag=athalt] at @s run scoreboard players add @s turnaroundwarning 1
execute if entity @s[scores={halt=630}] at @s positioned ^ ^-2 ^-43.01 run execute as @a[tag=athalt,limit=1,sort=nearest] at @s rotated as @e[scores={halt=630}] run execute as @e[tag=halt,limit=1,sort=nearest] run tp @s ^ ^ ^9 facing ~ ~ ~

execute if entity @s[scores={halt=820}] run execute as @a[tag=athalt] at @s run scoreboard players add @s turnaroundwarning 1
execute if entity @s[scores={halt=830}] at @s positioned ^ ^-2 ^-43.01 run execute as @a[tag=athalt,limit=1,sort=nearest] at @s rotated as @e[scores={halt=830}] run execute as @e[tag=halt,limit=1,sort=nearest] run tp @s ^ ^ ^-9 facing ~ ~ ~

execute if entity @s[scores={halt=920}] run execute as @a[tag=athalt] at @s run scoreboard players add @s turnaroundwarning 1
execute if entity @s[scores={halt=930}] at @s positioned ^ ^-2 ^-43.01 run execute as @a[tag=athalt,limit=1,sort=nearest] at @s rotated as @e[scores={halt=930}] run execute as @e[tag=halt,limit=1,sort=nearest] run tp @s ^ ^ ^9 facing ~ ~ ~

execute if entity @s[scores={halt=1100}] at @s run function doors:stophalt

execute at @s unless entity @s[scores={halt=1..}] if block ^ ^-2 ^-1 dark_oak_door[open=true] run scoreboard players add @s halt 1
scoreboard players add @s[scores={halt=1..1112}] halt 1

execute if entity @s[scores={halt=60..}] unless entity @a[tag=athalt] run kill @e[type=armor_stand,tag=halt]

execute at @s align xyz positioned ^ ^-2 ^-91 run stopsound @a[tag=athalt,dx=1.0,dz=1.0] * doors:entity.halt.ambience
execute at @s align xyz positioned ^ ^-2 ^-91 run stopsound @a[tag=athalt,dx=1.0,dz=1.0] * doors:entity.halt.whisper
execute at @s align xyz positioned ^ ^-2 ^-91 run stopsound @a[tag=athalt,dx=1.0,dz=1.0] * doors:entity.halt.whistles
execute at @s align xyz positioned ^ ^-2 ^-91 run stopsound @a[tag=athalt,dx=1.0,dz=1.0] * doors:entity.halt.distorted
execute at @s align xyz positioned ^ ^-2 ^-91 run effect clear @a[tag=athalt,dx=1.0,dz=1.0] blindness
execute at @s align xyz positioned ^ ^-2 ^-91 run effect clear @a[tag=athalt,dx=1.0,dz=1.0] darkness
execute at @s align xyz positioned ^ ^-2 ^-91 run tag @a[tag=athalt,dx=1.0,dz=1.0] remove screechexemption
execute at @s align xyz positioned ^ ^-2 ^-91 run tag @a[tag=athalt,dx=1.0,dz=1.0] remove nooffhandwarning
execute at @s align xyz positioned ^ ^-2 ^-91 run advancement grant @a[tag=athalt,dx=1.0,dz=1.0] only doors:achievements/achievement10
execute at @s align xyz positioned ^ ^-2 ^-91 run tag @a[tag=athalt,dx=1.0,dz=1.0] remove athalt
