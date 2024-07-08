execute if score a-90 a90randomizer matches 2050 as @a[tag=atrooms,scores={playercurrentroomsdoor=90..999}] at @s run playsound doors:entity.a90.spawn master @s

execute if score a-90 a90randomizer matches 2050 run title @a[tag=atrooms,scores={playercurrentroomsdoor=90..999}] times 0t 10t 0t
execute if score a-90 a90randomizer matches 2050 run title @a[tag=atrooms,scores={playercurrentroomsdoor=90..999}] title {"text":"\u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \uE012"}
execute if score a-90 a90randomizer matches 2060 run execute as @a[tag=atrooms] if score @s playercurrentroomsdoor matches 90..999 at @s run summon marker ~ ~ ~ {Tags:["savepos"]}
execute if score a-90 a90randomizer matches 2060 run execute as @a[tag=atrooms] if score @s playercurrentroomsdoor matches 90..999 at @s run tp @e[tag=savepos,limit=1,sort=nearest] @s
execute if score a-90 a90randomizer matches 2060 run execute as @e[tag=savepos] store result score @s yrotation run data get entity @s Rotation.[0] 100
execute if score a-90 a90randomizer matches 2060 run execute as @e[tag=savepos] store result score @s xrotation run data get entity @s Rotation.[1] 100
execute if score a-90 a90randomizer matches 2060 run title @a[tag=atrooms,scores={playercurrentroomsdoor=90..999}] times 0t 1t 0t
execute if score a-90 a90randomizer matches 2060 run title @a[tag=atrooms,scores={playercurrentroomsdoor=90..999}] title {"text":"\uE012"}
execute if score a-90 a90randomizer matches 2061..2069 run execute as @a[tag=atrooms] if score @s playercurrentroomsdoor matches 90..999 store result score @s yrotation run data get entity @s Rotation.[0] 100
execute if score a-90 a90randomizer matches 2061..2069 run execute as @a[tag=atrooms] if score @s playercurrentroomsdoor matches 90..999 store result score @s xrotation run data get entity @s Rotation.[1] 100
execute if score a-90 a90randomizer matches 2061 run title @a[tag=atrooms,scores={playercurrentroomsdoor=90..999}] times 0t 8t 0t
execute if score a-90 a90randomizer matches 2061 run title @a[tag=atrooms,scores={playercurrentroomsdoor=90..999}] title {"text":"\uE013"}
execute if score a-90 a90randomizer matches 2061..2069 as @a[tag=atrooms] if score @s playercurrentroomsdoor matches 90..999 at @s if entity @e[tag=savepos,distance=..0.1] if score @s yrotation = @e[tag=savepos,sort=nearest,limit=1] yrotation if score @s xrotation = @e[tag=savepos,sort=nearest,limit=1] xrotation run tag @s add a90i
execute if score a-90 a90randomizer matches 2069 run kill @e[tag=savepos]
execute if score a-90 a90randomizer matches 2069 run execute as @a[tag=atrooms,tag=!a90i] if score @s health matches ..18 if score @s playercurrentroomsdoor matches 90..999 run scoreboard players add @s killedbya90 1
execute if score a-90 a90randomizer matches 2076 run execute as @a[tag=atrooms,tag=!a90i] unless score @s health matches ..18 if score @s playercurrentroomsdoor matches 90..999 run damage @s 18 mob_attack by @e[tag=a90damagesource,limit=1]
execute if score a-90 a90randomizer matches 2076 run execute as @a[tag=atrooms,tag=!a90i] unless score @s health matches ..18 if score @s playercurrentroomsdoor matches 90..999 at @s run playsound doors:misc.ear_ringing master @s ~ ~ ~ 0.6
execute if score a-90 a90randomizer matches 2077 run tag @a[tag=a90i] remove a90i
