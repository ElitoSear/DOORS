#seekfinish
#90
execute if entity @s[y_rotation=90] if entity @s[scores={generating=6}] at @s align xyz positioned ^-7 ^-5 ^-1 run place template minecraft:seekfinish
execute if entity @s[y_rotation=90] if entity @s[scores={generating=5}] at @s align xyz positioned ^-7 ^-5 ^-1 run forceload add ~ ~ ~42 ~15
execute if entity @s[y_rotation=90] if entity @s[tag=destroy] at @s align xyz positioned ^-7 ^-5 ^-1 run kill @e[dx=42,dy=12,dz=15,tag=!door]
#180
execute if entity @s[y_rotation=180] if entity @s[scores={generating=6}] at @s align xyz positioned ^-7 ^-5 ^-1 run place template minecraft:seekfinish ~ ~ ~ clockwise_90
execute if entity @s[y_rotation=180] if entity @s[scores={generating=5}] at @s align xyz positioned ^7 ^-5 ^-1 run forceload add ~ ~ ~15 ~42
execute if entity @s[y_rotation=180] if entity @s[tag=destroy] at @s align xyz positioned ^7 ^-5 ^-1 run kill @e[dx=15,dy=12,dz=42,tag=!door]
#-90
execute if entity @s[y_rotation=-90] if entity @s[scores={generating=6}] at @s align xyz positioned ^-7 ^-5 ^-1 run place template minecraft:seekfinish ~ ~ ~ 180
execute if entity @s[y_rotation=-90] if entity @s[scores={generating=5}] at @s align xyz positioned ^7 ^-5 ^-42 run forceload add ~ ~ ~42 ~15
execute if entity @s[y_rotation=-90] if entity @s[tag=destroy] at @s align xyz positioned ^7 ^-5 ^-42 run kill @e[dx=42,dy=12,dz=15,tag=!door]
#0
execute if entity @s[y_rotation=0] if entity @s[scores={generating=6}] at @s align xyz positioned ^-7 ^-5 ^-1 run place template minecraft:seekfinish ~ ~ ~ counterclockwise_90
execute if entity @s[y_rotation=0] if entity @s[scores={generating=5}] at @s align xyz positioned ^-7 ^-5 ^-42 run forceload add ~ ~ ~15 ~42
execute if entity @s[y_rotation=0] if entity @s[tag=destroy] at @s align xyz positioned ^-7 ^-5 ^-42 run kill @e[dx=15,dy=12,dz=42,tag=!door]
#Not rotated variable needed
execute as @e[tag=hand] at @s positioned ^ ^1 ^2 align xyz run execute as @a[distance=..1,gamemode=adventure] run tag @s add killed_by_seek_hand
execute as @e[tag=hand] at @s positioned ^ ^1 ^2 align xyz run execute as @a[distance=..1,gamemode=adventure] run tag @s add killed_by_seek_other_means
execute as @e[tag=hand] at @s positioned ^ ^1 ^2 align xyz run execute as @a[distance=..1,gamemode=adventure] unless score @s killedbyseek matches 1.. run scoreboard players add @s killedbyseek 1
execute as @e[tag=fallen_chandelier] at @s run execute as @a[distance=..1.5] run damage @s 9 minecraft:mob_attack by @e[tag=fallen_chandelier,sort=nearest,limit=1]

execute at @e[tag=seekend,limit=1,sort=nearest] run execute as @e[tag=seek,distance=..2.5] unless entity @s[scores={stop=1..}] run scoreboard players add @s stop 1
execute at @s align xyz positioned ^ ^-2 ^-43 run stopsound @a[tag=atseek,dx=1.0,dz=1.0] * custom:music.here_i_come
execute at @s align xyz positioned ^ ^-2 ^-43 run execute as @a[tag=atseek,dx=1.0,dz=1.0] at @s run playsound custom:music.here_i_come_end voice @s
execute at @s align xyz positioned ^ ^-2 ^-43 run execute as @a[tag=atseek,dx=1.0,dz=1.0] run attribute @s generic.movement_speed base set 0.1
execute at @s align xyz positioned ^ ^-2 ^-43 run effect clear @a[tag=atseek,dx=1.0,dz=1.0] invisibility
execute at @s align xyz positioned ^ ^-2 ^-43 run advancement grant @a[tag=atseek,dx=1.0,dz=1.0] only doors:achievements/achievement11
execute at @s align xyz positioned ^ ^-2 ^-43 run tag @a[tag=atseek,dx=1.0,dz=1.0] remove killed_by_seek_hallway
execute at @s align xyz positioned ^ ^-2 ^-43 run tag @a[tag=atseek,dx=1.0,dz=1.0] remove killed_by_seek_other_means
execute at @s align xyz positioned ^ ^-2 ^-43 run tag @a[tag=atseek,dx=1.0,dz=1.0] remove atseek
execute if entity @s[tag=flickon] at @s align xyz positioned ^-7 ^-5 ^-1 run fill ^ ^ ^ ^15 ^12 ^-42 light[level=0] replace minecraft:wall_torch[facing=north]
execute if entity @s[tag=flickon] at @s align xyz positioned ^-7 ^-5 ^-1 run fill ^ ^ ^ ^15 ^12 ^-42 light[level=1] replace minecraft:wall_torch[facing=east]
execute if entity @s[tag=flickon] at @s align xyz positioned ^-7 ^-5 ^-1 run fill ^ ^ ^ ^15 ^12 ^-42 light[level=2] replace minecraft:wall_torch[facing=south]
execute if entity @s[tag=flickon] at @s align xyz positioned ^-7 ^-5 ^-1 run fill ^ ^ ^ ^15 ^12 ^-42 light[level=3] replace minecraft:wall_torch[facing=west]
execute if entity @s[tag=flickoff] at @s align xyz positioned ^-7 ^-5 ^-1 run fill ^ ^ ^ ^15 ^12 ^-42 minecraft:wall_torch[facing=north] replace light[level=0]
execute if entity @s[tag=flickoff] at @s align xyz positioned ^-7 ^-5 ^-1 run fill ^ ^ ^ ^15 ^12 ^-42 minecraft:wall_torch[facing=east] replace light[level=1]
execute if entity @s[tag=flickoff] at @s align xyz positioned ^-7 ^-5 ^-1 run fill ^ ^ ^ ^15 ^12 ^-42 minecraft:wall_torch[facing=south] replace light[level=2]
execute if entity @s[tag=flickoff] at @s align xyz positioned ^-7 ^-5 ^-1 run fill ^ ^ ^ ^15 ^12 ^-42 minecraft:wall_torch[facing=west] replace light[level=3]
execute if entity @s[tag=destroy] at @s align xyz positioned ^-7 ^-5 ^-1 run fill ^ ^ ^ ^15 ^12 ^-42 air
execute if entity @s[tag=destroy] run kill @s

scoreboard players add hands handmovement 1
execute if score hands handmovement matches 21.. run scoreboard players reset hands handmovement
execute as @e[type=armor_stand,tag=hand] if score hands handmovement matches 1 run data merge entity @s {Pose:{RightArm:[270f,0f,0f]}}
execute as @e[type=armor_stand,tag=hand] if score hands handmovement matches 2 run data merge entity @s {Pose:{RightArm:[269f,0f,0f]}}
execute as @e[type=armor_stand,tag=hand] if score hands handmovement matches 3 run data merge entity @s {Pose:{RightArm:[268f,0f,0f]}}
execute as @e[type=armor_stand,tag=hand] if score hands handmovement matches 4 run data merge entity @s {Pose:{RightArm:[267f,0f,0f]}}
execute as @e[type=armor_stand,tag=hand] if score hands handmovement matches 5 run data merge entity @s {Pose:{RightArm:[266f,0f,0f]}}
execute as @e[type=armor_stand,tag=hand] if score hands handmovement matches 6 run data merge entity @s {Pose:{RightArm:[265f,0f,0f]}}
execute as @e[type=armor_stand,tag=hand] if score hands handmovement matches 7 run data merge entity @s {Pose:{RightArm:[264f,0f,0f]}}
execute as @e[type=armor_stand,tag=hand] if score hands handmovement matches 8 run data merge entity @s {Pose:{RightArm:[263f,0f,0f]}}
execute as @e[type=armor_stand,tag=hand] if score hands handmovement matches 9 run data merge entity @s {Pose:{RightArm:[262f,0f,0f]}}
execute as @e[type=armor_stand,tag=hand] if score hands handmovement matches 10 run data merge entity @s {Pose:{RightArm:[261f,0f,0f]}}
execute as @e[type=armor_stand,tag=hand] if score hands handmovement matches 11 run data merge entity @s {Pose:{RightArm:[260f,0f,0f]}}
execute as @e[type=armor_stand,tag=hand] if score hands handmovement matches 12 run data merge entity @s {Pose:{RightArm:[261f,0f,0f]}}
execute as @e[type=armor_stand,tag=hand] if score hands handmovement matches 13 run data merge entity @s {Pose:{RightArm:[262f,0f,0f]}}
execute as @e[type=armor_stand,tag=hand] if score hands handmovement matches 14 run data merge entity @s {Pose:{RightArm:[263f,0f,0f]}}
execute as @e[type=armor_stand,tag=hand] if score hands handmovement matches 15 run data merge entity @s {Pose:{RightArm:[264f,0f,0f]}}
execute as @e[type=armor_stand,tag=hand] if score hands handmovement matches 16 run data merge entity @s {Pose:{RightArm:[265f,0f,0f]}}
execute as @e[type=armor_stand,tag=hand] if score hands handmovement matches 17 run data merge entity @s {Pose:{RightArm:[266f,0f,0f]}}
execute as @e[type=armor_stand,tag=hand] if score hands handmovement matches 18 run data merge entity @s {Pose:{RightArm:[267f,0f,0f]}}
execute as @e[type=armor_stand,tag=hand] if score hands handmovement matches 19 run data merge entity @s {Pose:{RightArm:[268f,0f,0f]}}
execute as @e[type=armor_stand,tag=hand] if score hands handmovement matches 20 run data merge entity @s {Pose:{RightArm:[269f,0f,0f]}}
execute as @e[type=armor_stand,tag=hand] at @s positioned ^ ^ ^2 align xyz positioned ~0.5 ~ ~0.5 run execute as @a[distance=..0.5,gamemode=adventure] unless entity @s[scores={killedbyseek=1..}] run scoreboard players add @s killedbyseek 1