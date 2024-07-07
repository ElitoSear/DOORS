#seekstart
#90
execute if entity @s[y_rotation=90] if entity @s[scores={generating=6}] at @s align xyz positioned ^-7 ^-3 ^-1 run place template minecraft:seekstart
execute if entity @s[y_rotation=90] if entity @s[scores={generating=5}] at @s align xyz positioned ^-7 ^-3 ^-1 run forceload add ~ ~ ~40 ~15
execute if entity @s[y_rotation=90] if entity @s[tag=destroy] at @s align xyz positioned ^-7 ^-3 ^-1 run kill @e[dx=40,dy=9,dz=15,tag=!door]
#180
execute if entity @s[y_rotation=180] if entity @s[scores={generating=6}] at @s align xyz positioned ^-7 ^-3 ^-1 run place template minecraft:seekstart ~ ~ ~ clockwise_90
execute if entity @s[y_rotation=180] if entity @s[scores={generating=5}] at @s align xyz positioned ^7 ^-3 ^-1 run forceload add ~ ~ ~15 ~40
execute if entity @s[y_rotation=180] if entity @s[tag=destroy] at @s align xyz positioned ^7 ^-3 ^-1 run kill @e[dx=15,dy=9,dz=40,tag=!door]
#-90
execute if entity @s[y_rotation=-90] if entity @s[scores={generating=6}] at @s align xyz positioned ^-7 ^-3 ^-1 run place template minecraft:seekstart ~ ~ ~ 180
execute if entity @s[y_rotation=-90] if entity @s[scores={generating=5}] at @s align xyz positioned ^7 ^-3 ^-40 run forceload add ~ ~ ~40 ~15
execute if entity @s[y_rotation=-90] if entity @s[tag=destroy] at @s align xyz positioned ^7 ^-3 ^-40 run kill @e[dx=40,dy=9,dz=15,tag=!door]
#0
execute if entity @s[y_rotation=0] if entity @s[scores={generating=6}] at @s align xyz positioned ^-7 ^-3 ^-1 run place template minecraft:seekstart ~ ~ ~ counterclockwise_90
execute if entity @s[y_rotation=0] if entity @s[scores={generating=5}] at @s align xyz positioned ^-7 ^-3 ^-40 run forceload add ~ ~ ~15 ~40
execute if entity @s[y_rotation=0] if entity @s[tag=destroy] at @s align xyz positioned ^-7 ^-3 ^-40 run kill @e[dx=15,dy=9,dz=40,tag=!door]
#Not rotated variable needed
execute if entity @s[scores={seekchasetriggered=22}] at @s run data merge entity @e[tag=seek,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:11}}]}
execute if entity @s[scores={seekchasetriggered=29}] at @s run data merge entity @e[tag=seek,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:11}}]}
execute if entity @s[scores={seekchasetriggered=36}] at @s run data merge entity @e[tag=seek,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:12}}]}
execute if entity @s[scores={seekchasetriggered=43}] at @s run data merge entity @e[tag=seek,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:13}}]}
execute if entity @s[scores={seekchasetriggered=50}] at @s run data merge entity @e[tag=seek,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:14}}]}
execute if entity @s[scores={seekchasetriggered=57}] at @s run data merge entity @e[tag=seek,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:15}}]}
execute if entity @s[scores={seekchasetriggered=64}] at @s run data merge entity @e[tag=seek,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:16}}]}
execute if entity @s[scores={seekchasetriggered=71}] at @s run data merge entity @e[tag=seek,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:17}}]}
execute if entity @s[scores={seekchasetriggered=78}] at @s run data merge entity @e[tag=seek,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:18}}]}
execute if entity @s[scores={seekchasetriggered=85}] at @s run data merge entity @e[tag=seek,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:19}}]}
execute if entity @s[scores={seekchasetriggered=92}] at @s run data merge entity @e[tag=seek,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20}}]}
execute if entity @s[scores={seekchasetriggered=99}] at @s run data merge entity @e[tag=seek,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:21}}]}
execute if entity @s[scores={seekchasetriggered=106}] at @s run data merge entity @e[tag=seek,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:22}}]}
execute if entity @s[scores={seekchasetriggered=113}] at @s run data merge entity @e[tag=seek,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:23}}]}

execute if entity @s[scores={seekchasetriggered=2}] at @s run function doors:seekstarting
execute if entity @s[scores={seekchasetriggered=2}] run scoreboard players operation @s deleteroomsseekchase = @s doornumber
execute if entity @s[scores={seekchasetriggered=2}] run scoreboard players remove @s deleteroomsseekchase 1
execute if entity @s[scores={seekchasetriggered=2}] at @s run execute as @e[tag=door] unless score @s doornumber matches 0 if score @s doornumber < @e[tag=door,scores={structurepick=70},limit=1] deleteroomsseekchase run tag @s add destroy
execute if entity @s[scores={seekchasetriggered=3..127}] at @s run execute as @a run spectate @e[tag=camera,limit=1]
execute if entity @s[scores={seekchasetriggered=3..23}] at @s run execute as @e[tag=camera] at @s run tp @s ~ ~ ~ ~9 ~
execute if entity @s[scores={seekchasetriggered=2}] at @s run execute as @a at @s run playsound custom:music.here_i_come voice @s
execute if entity @s[scores={seekchasetriggered=2}] at @s run tp @e[tag=camera] ^ ^-2 ^-31
execute if entity @s[scores={seekchasetriggered=3}] at @s run tp @e[tag=camera] ^ ^-2 ^-29.75
execute if entity @s[scores={seekchasetriggered=4}] at @s run tp @e[tag=camera] ^ ^-2 ^-28.5
execute if entity @s[scores={seekchasetriggered=5}] at @s run tp @e[tag=camera] ^ ^-2 ^-27.25
execute if entity @s[scores={seekchasetriggered=6}] at @s run tp @e[tag=camera] ^ ^-2 ^-26
execute if entity @s[scores={seekchasetriggered=7}] at @s run tp @e[tag=camera] ^ ^-2 ^-24.75
execute if entity @s[scores={seekchasetriggered=8}] at @s run tp @e[tag=camera] ^ ^-2 ^-23.5
execute if entity @s[scores={seekchasetriggered=9}] at @s run tp @e[tag=camera] ^ ^-2 ^-22.25
execute if entity @s[scores={seekchasetriggered=10}] at @s run tp @e[tag=camera] ^ ^-2 ^-21
execute if entity @s[scores={seekchasetriggered=11}] at @s run tp @e[tag=camera] ^ ^-2 ^-19.75
execute if entity @s[scores={seekchasetriggered=12}] at @s run tp @e[tag=camera] ^ ^-2 ^-18.5
execute if entity @s[scores={seekchasetriggered=13}] at @s run tp @e[tag=camera] ^ ^-2 ^-17.25
execute if entity @s[scores={seekchasetriggered=14}] at @s run tp @e[tag=camera] ^ ^-2 ^-16
execute if entity @s[scores={seekchasetriggered=15}] at @s run tp @e[tag=camera] ^ ^-2 ^-14.75
execute if entity @s[scores={seekchasetriggered=16}] at @s run tp @e[tag=camera] ^ ^-2 ^-13.5
execute if entity @s[scores={seekchasetriggered=17}] at @s run tp @e[tag=camera] ^ ^-2 ^-12.25
execute if entity @s[scores={seekchasetriggered=18}] at @s run tp @e[tag=camera] ^ ^-2 ^-11
execute if entity @s[scores={seekchasetriggered=19}] at @s run tp @e[tag=camera] ^ ^-2 ^-9.75 ~ ~5
execute if entity @s[scores={seekchasetriggered=20}] at @s run tp @e[tag=camera] ^ ^-2 ^-8.5 ~ ~6
execute if entity @s[scores={seekchasetriggered=21}] at @s run tp @e[tag=camera] ^ ^-2 ^-7.25 ~ ~5
execute if entity @s[scores={seekchasetriggered=22}] at @s run tp @e[tag=camera] ^ ^-2 ^-6 ~ ~6
execute if entity @s[scores={seekchasetriggered=24..63}] at @s run execute as @e[tag=camera] at @s run tp @s ^ ^0.025 ^-0.05
execute if entity @s[scores={seekchasetriggered=64}] at @s run tp @e[tag=camera] ^-2 ^-2 ^-7 facing ^ ^-2 ^-7
execute if entity @s[scores={seekchasetriggered=65..105}] at @s run execute as @e[tag=camera] at @s run tp @s ^-0.075 ^ ^
execute if entity @s[scores={seekchasetriggered=106}] at @s run tp @e[tag=camera] ^ ^-2 ^-11 facing entity @e[tag=seek,limit=1] feet
execute if entity @s[scores={seekchasetriggered=107..127}] at @s run execute as @e[tag=camera] at @s run tp @s ~ ~ ~ ~-9 ~
execute if entity @s[scores={seekchasetriggered=107}] at @s run tp @e[tag=camera] ^ ^-2 ^-11
execute if entity @s[scores={seekchasetriggered=108}] at @s run tp @e[tag=camera] ^ ^-2 ^-12.1
execute if entity @s[scores={seekchasetriggered=107}] at @s run tp @e[tag=camera] ^ ^-2 ^-11
execute if entity @s[scores={seekchasetriggered=108}] at @s run tp @e[tag=camera] ^ ^-2 ^-12.1
execute if entity @s[scores={seekchasetriggered=109}] at @s run tp @e[tag=camera] ^ ^-2 ^-13.2
execute if entity @s[scores={seekchasetriggered=110}] at @s run tp @e[tag=camera] ^ ^-2 ^-14.3
execute if entity @s[scores={seekchasetriggered=111}] at @s run tp @e[tag=camera] ^ ^-2 ^-15.4
execute if entity @s[scores={seekchasetriggered=112}] at @s run tp @e[tag=camera] ^ ^-2 ^-16.5
execute if entity @s[scores={seekchasetriggered=113}] at @s run tp @e[tag=camera] ^ ^-2 ^-17.6
execute if entity @s[scores={seekchasetriggered=114}] at @s run tp @e[tag=camera] ^ ^-2 ^-18.7
execute if entity @s[scores={seekchasetriggered=115}] at @s run tp @e[tag=camera] ^ ^-2 ^-19.8
execute if entity @s[scores={seekchasetriggered=116}] at @s run tp @e[tag=camera] ^ ^-2 ^-20.9
execute if entity @s[scores={seekchasetriggered=117}] at @s run tp @e[tag=camera] ^ ^-2 ^-22
execute if entity @s[scores={seekchasetriggered=118}] at @s run tp @e[tag=camera] ^ ^-2 ^-23.1
execute if entity @s[scores={seekchasetriggered=119}] at @s run tp @e[tag=camera] ^ ^-2 ^-24.2
execute if entity @s[scores={seekchasetriggered=120}] at @s run tp @e[tag=camera] ^ ^-2 ^-25.3
execute if entity @s[scores={seekchasetriggered=121}] at @s run tp @e[tag=camera] ^ ^-2 ^-26.4
execute if entity @s[scores={seekchasetriggered=122}] at @s run tp @e[tag=camera] ^ ^-2 ^-27.5
execute if entity @s[scores={seekchasetriggered=123}] at @s run tp @e[tag=camera] ^ ^-2 ^-28.6
execute if entity @s[scores={seekchasetriggered=124}] at @s run tp @e[tag=camera] ^ ^-2 ^-29.7
execute if entity @s[scores={seekchasetriggered=125}] at @s run tp @e[tag=camera] ^ ^-2 ^-30.8
execute if entity @s[scores={seekchasetriggered=126}] at @s run tp @e[tag=camera] ^ ^-2 ^-31.9
execute if entity @s[scores={seekchasetriggered=127}] at @s run tp @e[tag=camera] ^ ^-2 ^-33
execute if entity @s[scores={seekchasetriggered=113}] at @s run scoreboard players add @e[tag=seek] seekrun 1
execute if entity @s[scores={seekchasetriggered=128}] at @s run kill @e[tag=camera]
execute if entity @s[scores={seekchasetriggered=128}] at @s run execute as @a unless entity @s[scores={muerte=1..}] unless entity @s[tag=atrooms] run gamemode adventure @s
execute if entity @s[scores={seekchasetriggered=128}] at @s run tp @a ^ ^-2 ^-33 facing ^ ^-2 ^-34
execute if entity @s[scores={seekchasetriggered=128}] at @s run execute as @a unless entity @s[scores={muerte=1..}] unless entity @s[tag=atrooms] run tag @s add atseek
execute if entity @s[scores={seekchasetriggered=128}] at @s run execute as @a unless entity @s[scores={muerte=1..}] unless entity @s[tag=atrooms] run effect give @s invisibility infinite 0 true
execute if entity @s[scores={seekchasetriggered=128}] at @s run execute as @a unless entity @s[scores={muerte=1..}] unless entity @s[tag=atrooms] run attribute @s generic.movement_speed base set 0.14
execute if entity @s[scores={seekchasetriggered=128}] at @s run execute as @a unless entity @s[scores={muerte=1..}] unless entity @s[tag=atrooms] run gamemode adventure @s
execute if entity @s[scores={seekchasetriggered=128}] run execute as @a[tag=atseek,tag=!atrooms] at @s run playsound custom:entity.seek.scream master @s ^ ^ ^-5

execute at @s align xyz positioned ^ ^-2 ^ run tag @e[tag=rushorambush,dx=1.0,dz=1.0] add stop
execute if entity @s[tag=flickon] at @s align xyz positioned ^-7 ^-3 ^-1 run fill ^ ^ ^ ^15 ^9 ^-40 light[level=0] replace minecraft:wall_torch[facing=north]
execute if entity @s[tag=flickon] at @s align xyz positioned ^-7 ^-3 ^-1 run fill ^ ^ ^ ^15 ^9 ^-40 light[level=1] replace minecraft:wall_torch[facing=east]
execute if entity @s[tag=flickon] at @s align xyz positioned ^-7 ^-3 ^-1 run fill ^ ^ ^ ^15 ^9 ^-40 light[level=2] replace minecraft:wall_torch[facing=south]
execute if entity @s[tag=flickon] at @s align xyz positioned ^-7 ^-3 ^-1 run fill ^ ^ ^ ^15 ^9 ^-40 light[level=3] replace minecraft:wall_torch[facing=west]
execute if entity @s[tag=flickoff] at @s align xyz positioned ^-7 ^-3 ^-1 run fill ^ ^ ^ ^15 ^9 ^-40 minecraft:wall_torch[facing=north] replace light[level=0]
execute if entity @s[tag=flickoff] at @s align xyz positioned ^-7 ^-3 ^-1 run fill ^ ^ ^ ^15 ^9 ^-40 minecraft:wall_torch[facing=east] replace light[level=1]
execute if entity @s[tag=flickoff] at @s align xyz positioned ^-7 ^-3 ^-1 run fill ^ ^ ^ ^15 ^9 ^-40 minecraft:wall_torch[facing=south] replace light[level=2]
execute if entity @s[tag=flickoff] at @s align xyz positioned ^-7 ^-3 ^-1 run fill ^ ^ ^ ^15 ^9 ^-40 minecraft:wall_torch[facing=west] replace light[level=3]
execute if entity @s[tag=destroy] at @s align xyz positioned ^-7 ^-3 ^-1 run fill ^ ^ ^ ^15 ^9 ^-40 air
execute if entity @s[tag=destroy] run kill @s

execute at @s align xyz positioned ^ ^-2 ^-33 unless entity @s[scores={seekchasetriggered=1..}] if entity @a[gamemode=adventure,dx=1.0,dz=1.0,dy=3.0] run scoreboard players add @s seekchasetriggered 1
execute at @s align xyz positioned ^1 ^-2 ^-33 unless entity @s[scores={seekchasetriggered=1..}] if entity @a[gamemode=adventure,dx=1.0,dz=1.0,dy=3.0] run scoreboard players add @s seekchasetriggered 1
execute at @s align xyz positioned ^2 ^-2 ^-33 unless entity @s[scores={seekchasetriggered=1..}] if entity @a[gamemode=adventure,dx=1.0,dz=1.0,dy=3.0] run scoreboard players add @s seekchasetriggered 1
execute at @s align xyz positioned ^3 ^-2 ^-33 unless entity @s[scores={seekchasetriggered=1..}] if entity @a[gamemode=adventure,dx=1.0,dz=1.0,dy=3.0] run scoreboard players add @s seekchasetriggered 1
execute at @s align xyz positioned ^-1 ^-2 ^-33 unless entity @s[scores={seekchasetriggered=1..}] if entity @a[gamemode=adventure,dx=1.0,dz=1.0,dy=3.0] run scoreboard players add @s seekchasetriggered 1
execute at @s align xyz positioned ^-2 ^-2 ^-33 unless entity @s[scores={seekchasetriggered=1..}] if entity @a[gamemode=adventure,dx=1.0,dz=1.0,dy=3.0] run scoreboard players add @s seekchasetriggered 1
execute at @s align xyz positioned ^-3 ^-2 ^-33 unless entity @s[scores={seekchasetriggered=1..}] if entity @a[gamemode=adventure,dx=1.0,dz=1.0,dy=3.0] run scoreboard players add @s seekchasetriggered 1

scoreboard players add @s[scores={seekchasetriggered=1..160}] seekchasetriggered 1