execute at @s align xyz positioned ^ ^-2 ^ run execute as @e[tag=atelectrical,dx=1.0,dz=1.0] positioned as @s run tp @s ^ ^ ^-0.5 facing ^ ^ ^-2
execute at @s align xyz positioned ^ ^-2 ^ run execute as @e[tag=figure,dx=1.0,dz=1.0] positioned as @s run tp ^ ^ ^-0.5

execute at @s align xyz positioned ^4 ^ ^-38 run execute as @e[tag=figure,dx=1.0,dz=1.0] positioned as @s run tp ^ ^ ^0.5

execute at @s align xyz positioned ^17 ^ ^-50 run execute as @e[tag=figure,dx=1.0,dz=1.0] positioned as @s run tp ^ ^ ^0.5
execute at @s align xyz positioned ^18 ^ ^-50 run execute as @e[tag=figure,dx=1.0,dz=1.0] positioned as @s run tp ^ ^ ^0.5
execute at @s align xyz positioned ^19 ^ ^-50 run execute as @e[tag=figure,dx=1.0,dz=1.0] positioned as @s run tp ^ ^ ^0.5

execute at @s align xyz positioned ^17 ^ ^-50 if entity @e[scores={electricalcinematic2=1..}] run execute as @a[tag=atelectrical,dx=1.0,dz=1.0] positioned as @s run tp ^ ^ ^0.5
execute at @s align xyz positioned ^18 ^ ^-50 if entity @e[scores={electricalcinematic2=1..}] run execute as @a[tag=atelectrical,dx=1.0,dz=1.0] positioned as @s run tp ^ ^ ^0.5
execute at @s align xyz positioned ^19 ^ ^-50 if entity @e[scores={electricalcinematic2=1..}] run execute as @a[tag=atelectrical,dx=1.0,dz=1.0] positioned as @s run tp ^ ^ ^0.5

execute at @s align xyz positioned ^17 ^ ^-50 if entity @e[scores={electricalcinematic3=1..}] run execute as @a[tag=atelectrical,dx=1.0,dz=1.0] positioned as @s run tp ^ ^ ^0.5
execute at @s align xyz positioned ^18 ^ ^-50 if entity @e[scores={electricalcinematic3=1..}] run execute as @a[tag=atelectrical,dx=1.0,dz=1.0] positioned as @s run tp ^ ^ ^0.5
execute at @s align xyz positioned ^19 ^ ^-50 if entity @e[scores={electricalcinematic3=1..}] run execute as @a[tag=atelectrical,dx=1.0,dz=1.0] positioned as @s run tp ^ ^ ^0.5

#
execute at @s align xyz positioned ^17 ^ ^-45 if block ~ ~ ~ lever[powered=true] unless entity @s[scores={electricalstart=1..}] run scoreboard players add @s electricalstart 1

execute at @s align xyz positioned ^ ^-2 ^-2 run tag @a[gamemode=adventure,dx=1.0,dz=1.0,dy=3.0] add atelectrical
execute at @s align xyz positioned ^ ^-2 ^-2 run tag @a[gamemode=adventure,dx=1.0,dz=1.0,dy=3.0] add atfigure
execute at @s align xyz positioned ^ ^-2 ^-2 run tag @a[tag=atelectrical,dx=1.0,dz=1.0,dy=3.0] add screechexemption

execute if entity @s[scores={electricalstart=4..304}] as @a[tag=!atrooms] run spectate @e[tag=camera,limit=1,sort=nearest]
execute if entity @s[scores={electricalstart=2}] run tag @a[gamemode=adventure] add atelectrical
execute if entity @s[scores={electricalstart=2}] run tag @a[gamemode=adventure] add atfigure
execute if entity @s[scores={electricalstart=2}] run tag @a[gamemode=adventure] remove atrooms
execute if entity @s[scores={electricalstart=2}] as @e[tag=door] if score @s doornumber matches 1..98 run tag @s add destroy
execute if entity @s[scores={electricalstart=2}] at @s run tag @e[tag=automaticdoor,limit=1,sort=nearest] add closed
execute if entity @s[scores={electricalstart=2}] at @s run summon armor_stand ^16 ^-1 ^-42.51 {Tags:["camera"],NoGravity:1,Invisible:1}
execute if entity @s[scores={electricalstart=2}] at @s run playsound custom:misc.electrical_room_lever_door master @a ^14 ^-1 ^-45.5
execute if entity @s[scores={electricalstart=2}] at @s as @e[tag=electricalroomslidingdoor] run data merge entity @s {transformation:{translation:[0.0f,0.0f,-4.01f]},start_interpolation:0,interpolation_duration:134}
execute if entity @s[scores={electricalstart=3}] at @s run tp @e[tag=camera] ^16 ^-1 ^-42.51 facing ^17 ^-1 ^-44.5
execute if entity @s[scores={electricalstart=3}] run gamemode spectator @a[tag=!atrooms]
execute if entity @s[scores={electricalstart=4..24}] as @e[tag=camera] at @s run tp @s ^ ^ ^ ~-0.6675 ~
execute if entity @s[scores={electricalstart=4}] at @s run tp @e[tag=camera] ^15.9 ^-1 ^-42.51
execute if entity @s[scores={electricalstart=5}] at @s run tp @e[tag=camera] ^15.8 ^-1 ^-42.51
execute if entity @s[scores={electricalstart=6}] at @s run tp @e[tag=camera] ^15.7 ^-1 ^-42.51
execute if entity @s[scores={electricalstart=7}] at @s run tp @e[tag=camera] ^15.6 ^-1 ^-42.51
execute if entity @s[scores={electricalstart=8}] at @s run tp @e[tag=camera] ^15.5 ^-1 ^-42.51
execute if entity @s[scores={electricalstart=9}] at @s run tp @e[tag=camera] ^15.4 ^-1 ^-42.51
execute if entity @s[scores={electricalstart=10}] at @s run tp @e[tag=camera] ^15.3 ^-1 ^-42.51
execute if entity @s[scores={electricalstart=11}] at @s run tp @e[tag=camera] ^15.2 ^-1 ^-42.51
execute if entity @s[scores={electricalstart=12}] at @s run tp @e[tag=camera] ^15.1 ^-1 ^-42.51
execute if entity @s[scores={electricalstart=13}] at @s run tp @e[tag=camera] ^15 ^-1 ^-42.51
execute if entity @s[scores={electricalstart=14}] at @s run tp @e[tag=camera] ^14.9 ^-1 ^-42.51
execute if entity @s[scores={electricalstart=15}] at @s run tp @e[tag=camera] ^14.8 ^-1 ^-42.51
execute if entity @s[scores={electricalstart=16}] at @s run tp @e[tag=camera] ^14.7 ^-1 ^-42.51
execute if entity @s[scores={electricalstart=17}] at @s run tp @e[tag=camera] ^14.6 ^-1 ^-42.51
execute if entity @s[scores={electricalstart=18}] at @s run tp @e[tag=camera] ^14.5 ^-1 ^-42.51
execute if entity @s[scores={electricalstart=19}] at @s run tp @e[tag=camera] ^14.4 ^-1 ^-42.51
execute if entity @s[scores={electricalstart=20}] at @s run tp @e[tag=camera] ^14.3 ^-1 ^-42.51
execute if entity @s[scores={electricalstart=21}] at @s run tp @e[tag=camera] ^14.2 ^-1 ^-42.51
execute if entity @s[scores={electricalstart=22}] at @s run tp @e[tag=camera] ^14.1 ^-1 ^-42.51
execute if entity @s[scores={electricalstart=23}] at @s run tp @e[tag=camera] ^14 ^-1 ^-42.51
execute if entity @s[scores={electricalstart=24}] at @s run tp @e[tag=camera] ^13.9 ^-1 ^-42.51
execute if entity @s[scores={electricalstart=25}] at @s run tp @e[tag=camera] ^14 ^-1 ^-42.51 facing ^14 ^-1 ^-43.51
execute if entity @s[scores={electricalstart=35..75}] at @s as @e[tag=camera] at @s run tp @s ^ ^ ^0.15 facing entity @e[tag=figure,limit=1,sort=nearest]
execute if entity @s[scores={electricalstart=75..136}] at @s as @e[tag=camera] at @s run tp @s ^ ^ ^-0.07 facing entity @e[tag=figure,limit=1,sort=nearest]
execute if entity @s[scores={electricalstart=136}] at @s align xyz run fill ^16 ^ ^-46 ^12 ^ ^-46 air replace barrier
execute if entity @s[scores={electricalstart=136..156}] as @e[tag=camera] at @s run tp @s ^ ^ ^ ~-7 ~
execute if entity @s[scores={electricalstart=300}] run scoreboard players reset @a walk
execute if entity @s[scores={electricalstart=300}] run scoreboard players reset @a running

execute if entity @s[scores={electricalstart=25..126}] as @e[tag=figure] at @s run tp @s ^ ^ ^0.1 facing entity @e[tag=figurepathelectrical,tag=!checked,limit=1,sort=nearest]
execute if entity @s[scores={electricalstart=126..136}] as @e[tag=figure] at @s run tp @s ^ ^ ^ facing entity @e[tag=camera,limit=1,sort=nearest]
execute if entity @s[scores={electricalstart=136..200}] as @e[tag=figure] at @s run tp @s ^ ^ ^0.1 facing entity @e[tag=figurepathelectrical,tag=!checked,limit=1,sort=nearest]
execute if entity @s[scores={electricalstart=200..300}] as @e[tag=figure] at @s run tp @s ^ ^ ^0.3 facing entity @e[tag=figurepathelectrical,tag=!checked,limit=1,sort=nearest]
execute if entity @s[scores={electricalstart=300}] as @e[tag=figure] at @s run tp @s ^ ^0.5 ^

execute if entity @s[scores={electricalstart=157}] at @s run kill @e[tag=camera]
execute if entity @s[scores={electricalstart=157}] at @s run gamemode adventure @a[scores={muerte=0}]
execute if entity @s[scores={electricalstart=157}] at @s run function doors:loadelectricalroom
execute if entity @s[scores={electricalstart=157}] at @s run scoreboard players add @a unhinged2 1
execute if entity @s[scores={electricalstart=158}] as @e[tag=hiddenswitch] unless entity @s[nbt={ArmorItems:[{},{},{},{id:"minecraft:iron_ingot"}]}] run kill @s
execute if entity @s[scores={electricalstart=158}] run kill @e[tag=hiddenelectricalkey,tag=!electricalkey]
execute if entity @s[scores={electricalstart=301}] at @s run data merge entity @e[tag=figure,limit=1] {Silent:0b,NoAI:0b,NoGravity:0}

execute if entity @s[scores={electricalstart=157}] at @s run fill ^ ^-2 ^ ^30 ^5 ^-21 air replace iron_bars

execute if entity @s[scores={electricalstart=45}] at @e[tag=figure] run playsound minecraft:entity.zombie.step master @a
execute if entity @s[scores={electricalstart=55}] at @e[tag=figure] run playsound minecraft:entity.zombie.step master @a
execute if entity @s[scores={electricalstart=64}] at @e[tag=figure] run playsound minecraft:entity.zombified_piglin.angry master @a
execute if entity @s[scores={electricalstart=67}] at @e[tag=figure] run playsound minecraft:entity.zombie.step master @a
execute if entity @s[scores={electricalstart=80}] at @e[tag=figure] run playsound minecraft:entity.zombie.step master @a
execute if entity @s[scores={electricalstart=89}] at @e[tag=figure] run playsound minecraft:entity.zombie.step master @a
execute if entity @s[scores={electricalstart=95}] at @e[tag=figure] run playsound minecraft:entity.zombie.step master @a
execute if entity @s[scores={electricalstart=104}] at @e[tag=figure] run playsound minecraft:entity.zombie.step master @a
execute if entity @s[scores={electricalstart=110}] at @e[tag=figure] run playsound minecraft:entity.zombie.step master @a
execute if entity @s[scores={electricalstart=117}] at @e[tag=figure] run playsound minecraft:entity.zombie.step master @a
execute if entity @s[scores={electricalstart=124}] at @e[tag=figure] run playsound minecraft:entity.zombie.step master @a
execute if entity @s[scores={electricalstart=130}] at @e[tag=figure] run playsound minecraft:entity.zombie.step master @a
execute if entity @s[scores={electricalstart=140}] at @e[tag=figure] run playsound minecraft:entity.zombie.step master @a
execute if entity @s[scores={electricalstart=145}] at @e[tag=figure] run playsound minecraft:entity.zombie.step master @a
execute if entity @s[scores={electricalstart=150}] at @e[tag=figure] run playsound minecraft:entity.zombie.step master @a
execute if entity @s[scores={electricalstart=155}] at @e[tag=figure] run playsound minecraft:entity.zombie.step master @a
execute if entity @s[scores={electricalstart=160}] at @e[tag=figure] run playsound minecraft:entity.zombie.step master @a
execute if entity @s[scores={electricalstart=165}] at @e[tag=figure] run playsound minecraft:entity.zombie.step master @a
execute if entity @s[scores={electricalstart=170}] at @e[tag=figure] run playsound minecraft:entity.zombie.step master @a
execute if entity @s[scores={electricalstart=175}] at @e[tag=figure] run playsound minecraft:entity.zombie.step master @a
execute if entity @s[scores={electricalstart=180}] at @e[tag=figure] run playsound minecraft:entity.zombie.step master @a
execute if entity @s[scores={electricalstart=185}] at @e[tag=figure] run playsound minecraft:entity.zombie.step master @a
execute if entity @s[scores={electricalstart=190}] at @e[tag=figure] run playsound minecraft:entity.zombie.step master @a
execute if entity @s[scores={electricalstart=195}] at @e[tag=figure] run playsound minecraft:entity.zombie.step master @a
execute if entity @s[scores={electricalstart=200}] at @e[tag=figure] run playsound minecraft:entity.zombie.step master @a
execute if entity @s[scores={electricalstart=203}] at @e[tag=figure] run playsound minecraft:entity.zombie.step master @a
execute if entity @s[scores={electricalstart=206}] at @e[tag=figure] run playsound minecraft:entity.zombie.step master @a
execute if entity @s[scores={electricalstart=209}] at @e[tag=figure] run playsound minecraft:entity.zombie.step master @a
execute if entity @s[scores={electricalstart=212}] at @e[tag=figure] run playsound minecraft:entity.zombie.step master @a
execute if entity @s[scores={electricalstart=215}] at @e[tag=figure] run playsound minecraft:entity.zombie.step master @a
execute if entity @s[scores={electricalstart=218}] at @e[tag=figure] run playsound minecraft:entity.zombie.step master @a
execute if entity @s[scores={electricalstart=221}] at @e[tag=figure] run playsound minecraft:entity.zombie.step master @a
execute if entity @s[scores={electricalstart=224}] at @e[tag=figure] run playsound minecraft:entity.zombie.step master @a
execute if entity @s[scores={electricalstart=227}] at @e[tag=figure] run playsound minecraft:entity.zombie.step master @a
execute if entity @s[scores={electricalstart=230}] at @e[tag=figure] run playsound minecraft:entity.zombie.step master @a
execute if entity @s[scores={electricalstart=233}] at @e[tag=figure] run playsound minecraft:entity.zombie.step master @a
execute if entity @s[scores={electricalstart=236}] at @e[tag=figure] run playsound minecraft:entity.zombie.step master @a
execute if entity @s[scores={electricalstart=239}] at @e[tag=figure] run playsound minecraft:entity.zombie.step master @a
execute if entity @s[scores={electricalstart=242}] at @e[tag=figure] run playsound minecraft:entity.zombie.step master @a
execute if entity @s[scores={electricalstart=245}] at @e[tag=figure] run playsound minecraft:entity.zombie.step master @a
execute if entity @s[scores={electricalstart=248}] at @e[tag=figure] run playsound minecraft:entity.zombie.step master @a
execute if entity @s[scores={electricalstart=251}] at @e[tag=figure] run playsound minecraft:entity.zombie.step master @a
execute if entity @s[scores={electricalstart=254}] at @e[tag=figure] run playsound minecraft:entity.zombie.step master @a
execute if entity @s[scores={electricalstart=257}] at @e[tag=figure] run playsound minecraft:entity.zombie.step master @a
execute if entity @s[scores={electricalstart=260}] at @e[tag=figure] run playsound minecraft:entity.zombie.step master @a
execute if entity @s[scores={electricalstart=263}] at @e[tag=figure] run playsound minecraft:entity.zombie.step master @a
execute if entity @s[scores={electricalstart=266}] at @e[tag=figure] run playsound minecraft:entity.zombie.step master @a
execute if entity @s[scores={electricalstart=269}] at @e[tag=figure] run playsound minecraft:entity.zombie.step master @a
execute if entity @s[scores={electricalstart=272}] at @e[tag=figure] run playsound minecraft:entity.zombie.step master @a
execute if entity @s[scores={electricalstart=275}] at @e[tag=figure] run playsound minecraft:entity.zombie.step master @a
execute if entity @s[scores={electricalstart=278}] at @e[tag=figure] run playsound minecraft:entity.zombie.step master @a
execute if entity @s[scores={electricalstart=281}] at @e[tag=figure] run playsound minecraft:entity.zombie.step master @a

scoreboard players add @s[scores={electricalstart=1..620}] electricalstart 1

execute if entity @s[scores={electricalcinematic2=3..194}] as @a[tag=!atrooms] run spectate @e[tag=camera,limit=1,sort=nearest]
execute if entity @s[scores={electricalcinematic2=2}] run data merge entity @e[tag=figure,limit=1] {NoAI:1b,NoGravity:1b}
execute if entity @s[scores={electricalcinematic2=2}] at @s run summon armor_stand ^13 ^-2 ^-19.01 {Tags:["camera"],NoGravity:1,Invisible:1}
execute if entity @s[scores={electricalcinematic2=2}] at @s run tag @e[tag=placed] remove placed
execute if entity @s[scores={electricalcinematic2=2}] at @s run tp @e[tag=camera] ^13 ^-2 ^-19.01 facing ^-2 ^-3 ^-17.51
execute if entity @s[scores={electricalcinematic2=2}] at @s run tp @e[tag=figure] ^-1 ^-2 ^-18.51 facing ^2 ^-2 ^-18.51
execute if entity @s[scores={electricalcinematic2=2}] at @s run gamemode spectator @a[tag=!atrooms]
execute if entity @s[scores={electricalcinematic2=3..27}] at @s as @e[tag=camera] at @s run tp @s ^ ^ ^-0.041
execute if entity @s[scores={electricalcinematic2=28}] at @s run tp @e[tag=camera] ^12 ^-3 ^-19.51 facing ^9.5 ^-4 ^-18.51
execute if entity @s[scores={electricalcinematic2=29..59}] at @s as @e[tag=camera] at @s run tp @s ^ ^ ^-0.01
execute if entity @s[scores={electricalcinematic2=34}] at @s run particle minecraft:electric_spark ^11 ^-1.8 ^-19.51 0.1 0.1 0.1 0 1 force
execute if entity @s[scores={electricalcinematic2=34}] at @s run playsound minecraft:item.flintandsteel.use master @a ^11 ^-1.8 ^-19.51 1 1.5
execute if entity @s[scores={electricalcinematic2=34}] at @s as @e[tag=firefromelectrical] run data merge entity @s {view_range:1f}
execute if entity @s[scores={electricalcinematic2=34}] at @s align xyz run fill ^13 ^-2 ^-18 ^13 ^-2 ^-20 fire replace air
execute if entity @s[scores={electricalcinematic2=40}] at @s align xyz run fill ^8 ^-2 ^-18 ^10 ^-2 ^-18 fire replace air
execute if entity @s[scores={electricalcinematic2=40}] at @s align xyz run fill ^2 ^-2 ^-18 ^3 ^-2 ^-18 fire replace air
execute if entity @s[scores={electricalcinematic2=40}] at @s align xyz run fill ^13 ^-1 ^-32 ^15 ^1 ^-32 light[level=15] replace air
execute if entity @s[scores={electricalcinematic2=40}] at @s align xyz run fill ^13 ^-1 ^-31 ^15 ^1 ^-31 barrier replace air
execute if entity @s[scores={electricalcinematic2=40}] at @s align xyz run setblock ^7 ^-2 ^-19 fire replace
execute if entity @s[scores={electricalcinematic2=46}] at @s run scoreboard players reset @a unhinged2
execute if entity @s[scores={electricalcinematic2=46}] at @s run stopsound @a * custom:music.unhinged_2
execute if entity @s[scores={electricalcinematic2=46}] at @s run scoreboard players add @a unhinged2intense 1
execute if entity @s[scores={electricalcinematic2=60}] at @s run tp @e[tag=camera] ^14.5 ^1.6 ^-21.01 facing ^12 ^-3 ^-17.51

execute if entity @s[scores={electricalcinematic2=128}] at @s run tp @e[tag=camera] ^1 ^-2 ^-19.01 facing ^12 ^-3 ^-17.51
execute if entity @s[scores={electricalcinematic2=129..158}] at @s as @e[tag=camera] at @s run tp @s ^ ^ ^-0.01
execute if entity @s[scores={electricalcinematic2=159}] at @s run tp @e[tag=camera] ^2.5 ^-1.5 ^-18.51 facing ^-2 ^-2 ^-18.51
execute if entity @s[scores={electricalcinematic2=167}] at @s align xyz run fill ^-2 ^-1 ^-19 ^-2 ^ ^-19 air destroy
execute if entity @s[scores={electricalcinematic2=166..167}] as @e[tag=figure] at @s run tp @s ~ ~0.5 ~
execute if entity @s[scores={electricalcinematic2=168..172}] as @e[tag=figure] at @s run tp @s ~ ~-0.5 ~
execute if entity @s[scores={electricalcinematic2=166}] at @e[tag=figure] run playsound block.glass.break master @a
execute if entity @s[scores={electricalcinematic2=160..193}] at @s as @e[tag=camera] at @s run tp @s ^ ^ ^-0.01
execute if entity @s[scores={electricalcinematic2=194}] at @s run tp @e[tag=camera] ^3 ^ ^-46.51 facing ^5 ^ ^-46.51
execute if entity @s[scores={electricalcinematic2=195}] at @s run kill @e[tag=camera]
execute if entity @s[scores={electricalcinematic2=196}] at @s run gamemode adventure @a[scores={muerte=0}]
execute if entity @s[scores={electricalcinematic2=196}] unless entity @s[scores={breakerpuzzle=1..}] run scoreboard players add @s breakerpuzzle 1

execute if entity @s[scores={electricalcinematic2=196..}] run function doors:breaker

execute if entity @s[scores={electricalcinematic2=65}] run data merge entity @e[tag=figure,limit=1] {NoGravity:0b}
execute if entity @s[scores={electricalcinematic2=66}] as @e[tag=figure] at @s run tp @s ~ ~0.3 ~
execute if entity @s[scores={electricalcinematic2=71}] as @e[tag=figure] at @s run tp @s ~ ~-0.3 ~
execute if entity @s[scores={electricalcinematic2=76}] as @e[tag=figure] at @s run tp @s ~ ~0.3 ~
execute if entity @s[scores={electricalcinematic2=81}] as @e[tag=figure] at @s run tp @s ~ ~-0.3 ~
execute if entity @s[scores={electricalcinematic2=86}] as @e[tag=figure] at @s run tp @s ~ ~0.3 ~
execute if entity @s[scores={electricalcinematic2=91}] as @e[tag=figure] at @s run tp @s ~ ~-0.3 ~
execute if entity @s[scores={electricalcinematic2=96}] as @e[tag=figure] at @s run tp @s ~ ~0.3 ~
execute if entity @s[scores={electricalcinematic2=101}] as @e[tag=figure] at @s run tp @s ~ ~-0.3 ~
execute if entity @s[scores={electricalcinematic2=100}] as @e[tag=figure] at @s run tp @s ~ ~0.3 ~
execute if entity @s[scores={electricalcinematic2=105}] as @e[tag=figure] at @s run tp @s ~ ~-0.3 ~
execute if entity @s[scores={electricalcinematic2=100..110}] as @e[tag=figure] at @s run tp @s ~ ~ ~ ~18 ~

execute if entity @s[scores={electricalcinematic2=10}] at @e[tag=figure] run playsound entity.zombie.step master @a
execute if entity @s[scores={electricalcinematic2=15}] at @e[tag=figure] run playsound entity.zombie.step master @a
execute if entity @s[scores={electricalcinematic2=20}] at @e[tag=figure] run playsound entity.zombie.step master @a
execute if entity @s[scores={electricalcinematic2=25}] at @e[tag=figure] run playsound entity.zombie.step master @a
execute if entity @s[scores={electricalcinematic2=30}] at @e[tag=figure] run playsound entity.zombie.step master @a
execute if entity @s[scores={electricalcinematic2=35}] at @e[tag=figure] run playsound entity.zombie.step master @a
execute if entity @s[scores={electricalcinematic2=40}] at @e[tag=figure] run playsound entity.zombie.step master @a
execute if entity @s[scores={electricalcinematic2=40}] at @e[tag=figure] run playsound entity.zombified_piglin.angry master @a
execute if entity @s[scores={electricalcinematic2=45}] at @e[tag=figure] run playsound entity.zombie.step master @a
execute if entity @s[scores={electricalcinematic2=49}] at @e[tag=figure] run playsound entity.zombie.step master @a
execute if entity @s[scores={electricalcinematic2=53}] at @e[tag=figure] run playsound entity.zombie.step master @a
execute if entity @s[scores={electricalcinematic2=60}] at @e[tag=figure] run playsound entity.zombie.step master @a
execute if entity @s[scores={electricalcinematic2=65}] at @e[tag=figure] run playsound entity.zombie.step master @a
execute if entity @s[scores={electricalcinematic2=71}] at @e[tag=figure] run playsound entity.zombie.step master @a
execute if entity @s[scores={electricalcinematic2=81}] at @e[tag=figure] run playsound entity.zombie.step master @a
execute if entity @s[scores={electricalcinematic2=91}] at @e[tag=figure] run playsound entity.zombie.step master @a
execute if entity @s[scores={electricalcinematic2=101}] at @e[tag=figure] run playsound entity.zombie.step master @a
execute if entity @s[scores={electricalcinematic2=101}] at @e[tag=figure] run playsound entity.zombie.step master @a
execute if entity @s[scores={electricalcinematic2=101}] at @e[tag=figure] run playsound entity.zombie.step master @a
execute if entity @s[scores={electricalcinematic2=101}] at @e[tag=figure] run playsound entity.zombie.step master @a
execute if entity @s[scores={electricalcinematic2=101}] at @e[tag=figure] run playsound entity.zombie.step master @a
execute if entity @s[scores={electricalcinematic2=101}] at @e[tag=figure] run playsound entity.zombie.step master @a
execute if entity @s[scores={electricalcinematic2=127}] at @e[tag=figure] run playsound entity.zombie.step master @a
execute if entity @s[scores={electricalcinematic2=133}] at @e[tag=figure] run playsound entity.zombie.step master @a
execute if entity @s[scores={electricalcinematic2=138}] at @e[tag=figure] run playsound entity.zombie.step master @a
execute if entity @s[scores={electricalcinematic2=143}] at @e[tag=figure] run playsound entity.zombie.step master @a
execute if entity @s[scores={electricalcinematic2=149}] at @e[tag=figure] run playsound entity.zombie.step master @a
execute if entity @s[scores={electricalcinematic2=154}] at @e[tag=figure] run playsound entity.zombie.step master @a
execute if entity @s[scores={electricalcinematic2=159}] at @e[tag=figure] run playsound entity.zombie.step master @a
execute if entity @s[scores={electricalcinematic2=164}] at @e[tag=figure] run playsound entity.zombie.step master @a
execute if entity @s[scores={electricalcinematic2=127}] at @e[tag=figure] run playsound entity.zombie.step master @a

scoreboard players add @s[scores={electricalcinematic2=1..300}] electricalcinematic2 1

execute if entity @s[scores={electricalcinematic3=2}] at @s run summon armor_stand ^23.5 ^5.5 ^-48.01 {Tags:["camera"],NoGravity:1,Invisible:1}
execute if entity @s[scores={electricalcinematic3=2}] at @s run tp @e[tag=camera] ^24.0 ^5.5 ^-48.51 facing ^25.5 ^4 ^-50.01
execute if entity @s[scores={electricalcinematic3=60..100}] as @e[tag=camera] at @s run tp @s ^ ^ ^-0.01
execute if entity @s[scores={electricalcinematic3=101}] at @s run tp @e[tag=camera] ^1.5 ^ ^-45.51 facing ^-2.5 ^ ^-45.51
execute if entity @s[scores={electricalcinematic3=104}] at @e[tag=wherefigureis] run playsound custom:entity.seek.knocks master @a
execute if entity @s[scores={electricalcinematic3=104}] at @e[tag=wherefigureis] positioned ^ ^ ^-2 run playsound entity.zombified_piglin.angry master @a
execute if entity @s[scores={electricalcinematic3=102..132}] as @e[tag=camera] at @s run tp @s ^ ^ ^-0.01
execute if entity @s[scores={electricalcinematic3=60}] at @s run gamemode spectator @a[tag=!atrooms]
execute if entity @s[scores={electricalcinematic3=60..132}] as @a[tag=!atrooms] run spectate @e[tag=camera,limit=1,sort=nearest]
execute if entity @s[scores={electricalcinematic3=133}] run kill @e[tag=camera]
execute if entity @s[scores={electricalcinematic3=134}] at @s run gamemode adventure @a[scores={muerte=0}]
execute if entity @s[scores={electricalcinematic3=164}] at @e[tag=wherefigureis] run tp @e[tag=figure] ^ ^ ^3
execute if entity @s[scores={electricalcinematic3=164}] run data merge entity @e[tag=figure,limit=1] {NoAI:0b}

execute if entity @s[scores={electricalcinematic3=164..}] at @s align xyz positioned ^23 ^5 ^-51 as @a[gamemode=adventure,dx=1.0,dz=1.0,dy=2] run tag @s add winner
execute if entity @s[scores={electricalcinematic3=164..}] at @s align xyz positioned ^24 ^5 ^-51 as @a[gamemode=adventure,dx=1.0,dz=1.0,dy=2] run tag @s add winner
execute if entity @s[scores={electricalcinematic3=164..}] at @s align xyz positioned ^25 ^5 ^-51 as @a[gamemode=adventure,dx=1.0,dz=1.0,dy=2] run tag @s add winner
execute if entity @s[scores={electricalcinematic3=164..}] at @s align xyz positioned ^23 ^5 ^-51 as @a[gamemode=adventure,dx=1.0,dz=1.0,dy=2] run scoreboard players set @e[scores={electricalcinematic3=164..}] electricalcinematic3 200
execute if entity @s[scores={electricalcinematic3=164..}] at @s align xyz positioned ^24 ^5 ^-51 as @a[gamemode=adventure,dx=1.0,dz=1.0,dy=2] run scoreboard players set @e[scores={electricalcinematic3=164..}] electricalcinematic3 200
execute if entity @s[scores={electricalcinematic3=164..}] at @s align xyz positioned ^25 ^5 ^-51 as @a[gamemode=adventure,dx=1.0,dz=1.0,dy=2] run scoreboard players set @e[scores={electricalcinematic3=164..}] electricalcinematic3 200

execute if entity @s[scores={electricalcinematic3=201..405}] at @s if score player_count playercount matches 2.. run ride @a[tag=winner,limit=1] mount @e[tag=sithere,limit=1]
execute if entity @s[scores={electricalcinematic3=201}] at @s if score player_count playercount matches 2.. run gamemode spectator @a[tag=!winner]
execute if entity @s[scores={electricalcinematic3=201}] at @s unless score player_count playercount matches 2.. run gamemode spectator @a
execute if entity @s[scores={electricalcinematic3=201}] at @s run scoreboard players reset @a unhinged2intense
execute if entity @s[scores={electricalcinematic3=201}] at @s run stopsound @a * custom:music.unhinged_2_intense
execute if entity @s[scores={electricalcinematic3=201..1238}] at @s as @a at @s run spectate @e[tag=camera,limit=1]
execute if entity @s[scores={electricalcinematic3=201}] at @s run fill ^23 ^5 ^-51 ^25 ^7 ^-51 iron_bars
execute if entity @s[scores={electricalcinematic3=201}] at @s run summon armor_stand ^25.5 ^6 ^-49.51 {Tags:["camera"],NoGravity:1,Invisible:1}
execute if entity @s[scores={electricalcinematic3=201}] at @s run tp @e[tag=camera] ^25.5 ^6 ^-49.51 facing ^23 ^4.5 ^-47.51
execute if entity @s[scores={electricalcinematic3=235}] at @s run tp @e[tag=camera] ^24 ^4.9 ^-47.01 facing ^24 ^4.9 ^-51.51
execute if entity @s[scores={electricalcinematic3=235}] at @s run tp @e[tag=figure] ^24 ^4.5 ^-51.51 facing ^24 ^4.5 ^-50.51
execute if entity @s[scores={electricalcinematic3=235}] at @s run data merge entity @e[tag=figure,limit=1] {NoAI:1b,Silent:1b}
execute if entity @s[scores={electricalcinematic3=235}] at @s as @a at @s run playsound custom:music.elevator_jammed voice @s
execute if entity @s[scores={electricalcinematic3=235}] at @s as @a at @e[tag=figure] run playsound entity.zombified_piglin.angry master @s
execute if entity @s[scores={electricalcinematic3=301}] at @s as @a at @e[tag=figure] run playsound entity.zombified_piglin.ambient master @s
execute if entity @s[scores={electricalcinematic3=860}] at @s as @a at @e[tag=figure] run playsound entity.zombified_piglin.ambient master @s
execute if entity @s[scores={electricalcinematic3=235..295}] as @e[tag=camera] at @s run tp @s ^ ^ ^0.01
execute if entity @s[scores={electricalcinematic3=295..405}] rotated as @s as @e[tag=camera] positioned as @s run tp @s ^0.013 ^0.01 ^-0.017
execute if entity @s[scores={electricalcinematic3=295..405}] at @s if score player_count playercount matches 2.. as @e[tag=camera] at @s anchored eyes facing entity @a[tag=winner,sort=nearest,limit=1,distance=0.1..] eyes positioned ^ ^ ^0.1 rotated as @s positioned ^ ^ ^1 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~
execute if entity @s[scores={electricalcinematic3=295..405}] at @s unless score player_count playercount matches 2.. as @e[tag=camera] at @s anchored eyes facing entity @e[tag=sithere,sort=nearest,limit=1,distance=0.1..] eyes positioned ^ ^ ^0.1 rotated as @s positioned ^ ^ ^1 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~
execute if entity @s[scores={electricalcinematic3=770}] at @s run tp @e[tag=figure] ^24 ^9 ^-48.51
execute if entity @s[scores={electricalcinematic3=770}] at @s run data merge entity @e[tag=figure,limit=1] {NoAI:0b}
execute if entity @s[scores={electricalcinematic3=770..800}] at @s as @e[tag=camera] at @s anchored eyes facing entity @e[tag=figure,sort=nearest,limit=1,distance=0.1..] eyes positioned ^ ^ ^0.1 rotated as @s positioned ^ ^ ^1 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~
execute if entity @s[scores={electricalcinematic3=820}] at @s run tp @e[tag=figure] ^24 ^-5 ^-46.51
execute if entity @s[scores={electricalcinematic3=820}] as @e[tag=camera] at @s run tp @s ~ ~-12 ~
execute if entity @s[scores={electricalcinematic3=820..870}] at @s as @e[tag=camera] at @s anchored eyes facing entity @e[tag=figure,sort=nearest,limit=1,distance=0.1..] eyes positioned ^ ^ ^0.2 rotated as @s positioned ^ ^ ^1 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~
execute if entity @s[scores={electricalcinematic3=830..845}] at @s run particle minecraft:wax_on ^24 ^-5 ^-46.01 0.001 0.9 0.001 0 50 force
execute if entity @s[scores={electricalcinematic3=850..870}] rotated as @s as @e[tag=figure] positioned as @s run tp @s ^ ^0.1 ^-0.4
execute if entity @s[scores={electricalcinematic3=870..885}] as @e[tag=camera] at @s run tp @s ^ ^-0.1 ^
execute if entity @s[scores={electricalcinematic3=885}] at @s run tp @e[tag=camera] ^23 ^4 ^-47.51 facing ^25 ^4.5 ^-50.51
execute if entity @s[scores={electricalcinematic3=945}] at @s run tp @e[tag=camera] ^24 ^27 ^-48.51 facing ^24 ^6 ^-48.5
execute if entity @s[scores={electricalcinematic3=945..985}] as @e[tag=camera] at @s run tp @s ^ ^ ^0.425
execute if entity @s[scores={electricalcinematic3=985}] at @s run tp @e[tag=camera] ^23 ^4 ^-47.51 facing ^25 ^4.5 ^-50.51
execute if entity @s[scores={electricalcinematic3=945..985}] at @s run particle minecraft:wax_on ^24 ^11 ^-46.01 0.001 0.9 0.001 0 50 force
execute if entity @s[scores={electricalcinematic3=965..985}] at @s run particle minecraft:wax_on ^26.5 ^11 ^-51.01 0.001 0.9 0.001 0 50 force
execute if entity @s[scores={electricalcinematic3=967..985}] at @s run particle minecraft:wax_on ^21.5 ^11 ^-51.01 0.001 0.9 0.001 0 50 force
execute if entity @s[scores={electricalcinematic3=969..985}] at @s run particle minecraft:wax_on ^21.5 ^11 ^-46.01 0.001 0.9 0.001 0 50 force
execute if entity @s[scores={electricalcinematic3=971..985}] at @s run particle minecraft:wax_on ^26.5 ^11 ^-46.01 0.001 0.9 0.001 0 50 force
execute if entity @s[scores={electricalcinematic3=1034}] at @s run kill @e[tag=camera]
execute if entity @s[scores={electricalcinematic3=1034..1237}] at @s run tp @a 34.5 71 -50.5
execute if entity @s[scores={electricalcinematic3=1034}] at @s run title @a times 0t 60t 20t
execute if entity @s[scores={electricalcinematic3=1034}] at @s run title @a title {"translate": "text.doors.to_be_continued","color":"#454948"}
execute if entity @s[scores={electricalcinematic3=1125}] at @s run title @a times 30t 85t 10t
execute if entity @s[scores={electricalcinematic3=1125}] at @s run title @a title {"text": "\uE015"}
execute if entity @s[scores={electricalcinematic3=1238}] run advancement grant @a[scores={muerte=0}] only doors:achievements/achievement29
execute if entity @s[scores={electricalcinematic3=1238}] run scoreboard players add @e[tag=void] resetrun 1
scoreboard players add @s[scores={electricalcinematic3=1..165}] electricalcinematic3 1
scoreboard players add @s[scores={electricalcinematic3=200..}] electricalcinematic3 1