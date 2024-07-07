execute at @e[tag=leader,limit=1] run execute as @a[distance=60..,tag=!atrooms] at @s run playsound custom:entity.void.jumpscare master @s
scoreboard players add @s flickering 1
summon armor_stand ^ ^-2 ^-31 {Tags:["camera"],NoGravity:1,Invisible:1}
tp @e[tag=camera] ^ ^-2 ^-31 facing ^ ^-2 ^-33
gamemode spectator @a[tag=!atrooms]
execute positioned ^ ^-2 ^-5.01 run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:11}}],CustomName:'{"text":"Seek","bold":true}',Tags:["seek"],DisabledSlots:4144959}
tp @e[tag=seek] ^ ^-2 ^-5.01 facing ^ ^-2 ^-6.01