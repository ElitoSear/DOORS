execute positioned 24 63 -42 run tp @a[dx=2,dy=3,dz=18] 22.5 63 2.5 -90 0
execute positioned 10 63 -26 run execute as @a[dx=2,dy=3,dz=2] at @s run tp @s ~11 ~ ~27
execute positioned 10 63 -30 run execute as @a[dx=2,dy=3,dz=2] at @s run tp @s ~11 ~ ~31
execute positioned 10 63 -34 run execute as @a[dx=2,dy=3,dz=2] at @s run tp @s ~11 ~ ~35
execute positioned 10 63 -38 run execute as @a[dx=2,dy=3,dz=2] at @s run tp @s ~11 ~ ~39
execute positioned 10 63 -42 run execute as @a[dx=2,dy=3,dz=2] at @s run tp @s ~11 ~ ~43
scoreboard players set @a muerte 0
#clear @a written_book
stopsound @a * doors:music.dawn_of_the_doors
execute as @a at @s run playsound doors:music.dawn_of_the_doors_end voice @s
data merge block 38 63 -3 {LootTable:"doors:standard_loot"}
execute positioned 39.9 63.5 -1.0 unless entity @e[tag=key1,distance=..1] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,ShowArms:1b,DisabledSlots:4079166,Invisible:1b,Tags:["key1"],HandItems:[{id:"minecraft:string",Count: 1b,tag:{CustomModelData:13,display:{Name:'{"text":"","italic":false}'}}},{}],NoBasePlate:1b}
execute positioned 39.99 65.0 6.5 unless entity @e[tag=door,distance=..1] run summon text_display ~ ~ ~ {Tags:["door"],background:0,Rotation:[90f,0f]}

#Infirmary Select
execute store result score infirmary infirmaryrandomness run random value 62..64

#Seek Chase Random Values
execute store result score firstchase seekrandomness run random value 25..36
execute store result score secondchase seekrandomness run random value 65..72
