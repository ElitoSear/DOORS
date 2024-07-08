#basementhallway
#90
execute if entity @s[y_rotation=90] if entity @s[scores={generating=6}] at @s align xyz positioned ^-6 ^-3 ^-1 run place template minecraft:basementhallway
execute if entity @s[y_rotation=90] if entity @s[scores={generating=5}] at @s align xyz positioned ^-44 ^-7 ^-1 run forceload add ~ ~ ~19 ~89
execute if entity @s[y_rotation=90,tag=seekcrescendo1,scores={generating=12}] at @s align xyz positioned ^-44 ^-7 ^-1 as @e[type=marker,tag=seekeyemarker,dx=19,dy=12,dz=89,limit=4,sort=random] run function doors:summonseekeye
execute if entity @s[y_rotation=90,tag=seekcrescendo2,scores={generating=12}] at @s align xyz positioned ^-44 ^-7 ^-1 as @e[type=marker,tag=seekeyemarker,dx=19,dy=12,dz=89,limit=8,sort=random] run function doors:summonseekeye
execute if entity @s[y_rotation=90,tag=seekcrescendo3,scores={generating=12}] at @s align xyz positioned ^-44 ^-7 ^-1 as @e[type=marker,tag=seekeyemarker,dx=19,dy=12,dz=89,limit=16,sort=random] run function doors:summonseekeye
execute if entity @s[y_rotation=90] if entity @s[tag=destroy] at @s align xyz positioned ^-44 ^-7 ^-1 run kill @e[dx=19,dy=12,dz=89,tag=!door]

execute if entity @s[y_rotation=90] if entity @s[scores={generating=9}] at @s align xyz positioned ^-44 ^-7 ^-1 run tag @e[dx=19,dy=12,dz=89,tag=lever,limit=1,sort=random] add correctlever
execute if entity @s[y_rotation=90] if entity @s[scores={generating=10}] at @s align xyz positioned ^-44 ^-7 ^-1 run execute as @e[dx=19,dy=12,dz=89,tag=lever,tag=!correctlever] at @s run setblock ~ ~ ~ air
execute if entity @s[y_rotation=90] if entity @s[scores={generating=11}] at @s align xyz positioned ^-44 ^-7 ^-1 run execute as @e[dx=19,dy=12,dz=89,tag=lever,tag=!correctlever] run kill @s
#180
execute if entity @s[y_rotation=180] if entity @s[scores={generating=6}] at @s align xyz positioned ^-6 ^-3 ^-1 run place template minecraft:basementhallway ~ ~ ~ clockwise_90
execute if entity @s[y_rotation=180] if entity @s[scores={generating=5}] at @s align xyz positioned ^44 ^-7 ^-1 run forceload add ~ ~ ~89 ~19
execute if entity @s[y_rotation=180,tag=seekcrescendo1,scores={generating=12}] at @s align xyz positioned ^44 ^-7 ^-1 as @e[type=marker,tag=seekeyemarker,dz=89,dy=12,dx=19,limit=4,sort=random] run function doors:summonseekeye
execute if entity @s[y_rotation=180,tag=seekcrescendo2,scores={generating=12}] at @s align xyz positioned ^44 ^-7 ^-1 as @e[type=marker,tag=seekeyemarker,dz=89,dy=12,dx=19,limit=8,sort=random] run function doors:summonseekeye
execute if entity @s[y_rotation=180,tag=seekcrescendo3,scores={generating=12}] at @s align xyz positioned ^44 ^-7 ^-1 as @e[type=marker,tag=seekeyemarker,dz=89,dy=12,dx=19,limit=16,sort=random] run function doors:summonseekeye
execute if entity @s[y_rotation=180] if entity @s[tag=destroy] at @s align xyz positioned ^44 ^-7 ^-1 run kill @e[dx=89,dy=12,dz=19,tag=!door]

execute if entity @s[y_rotation=180] if entity @s[scores={generating=9}] at @s align xyz positioned ^44 ^-7 ^-1 run tag @e[dx=89,dy=12,dz=19,tag=lever,limit=1,sort=random] add correctlever
execute if entity @s[y_rotation=180] if entity @s[scores={generating=10}] at @s align xyz positioned ^44 ^-7 ^-1 run execute as @e[dx=89,dy=12,dz=19,tag=lever,tag=!correctlever] at @s run setblock ~ ~ ~ air
execute if entity @s[y_rotation=180] if entity @s[scores={generating=11}] at @s align xyz positioned ^44 ^-7 ^-1 run execute as @e[dx=89,dy=12,dz=19,tag=lever,tag=!correctlever] run kill @s
#-90
execute if entity @s[y_rotation=-90] if entity @s[scores={generating=6}] at @s align xyz positioned ^-6 ^-3 ^-1 run place template minecraft:basementhallway ~ ~ ~ 180
execute if entity @s[y_rotation=-90] if entity @s[scores={generating=5}] at @s align xyz positioned ^44 ^-7 ^-19 run forceload add ~ ~ ~19 ~89
execute if entity @s[y_rotation=-90,tag=seekcrescendo1,scores={generating=12}] at @s align xyz positioned ^44 ^-7 ^-19 as @e[type=marker,tag=seekeyemarker,dx=19,dy=12,dz=89,limit=4,sort=random] run function doors:summonseekeye
execute if entity @s[y_rotation=-90,tag=seekcrescendo2,scores={generating=12}] at @s align xyz positioned ^44 ^-7 ^-19 as @e[type=marker,tag=seekeyemarker,dx=19,dy=12,dz=89,limit=8,sort=random] run function doors:summonseekeye
execute if entity @s[y_rotation=-90,tag=seekcrescendo3,scores={generating=12}] at @s align xyz positioned ^44 ^-7 ^-19 as @e[type=marker,tag=seekeyemarker,dx=19,dy=12,dz=89,limit=16,sort=random] run function doors:summonseekeye
execute if entity @s[y_rotation=-90] if entity @s[tag=destroy] at @s align xyz positioned ^44 ^-7 ^-19 run kill @e[dx=19,dy=12,dz=89,tag=!door]

execute if entity @s[y_rotation=-90] if entity @s[scores={generating=9}] at @s align xyz positioned ^44 ^-7 ^-19 run tag @e[dx=19,dy=12,dz=89,tag=lever,limit=1,sort=random] add correctlever
execute if entity @s[y_rotation=-90] if entity @s[scores={generating=10}] at @s align xyz positioned ^44 ^-7 ^-19 run execute as @e[dx=19,dy=12,dz=89,tag=lever,tag=!correctlever] at @s run setblock ~ ~ ~ air
execute if entity @s[y_rotation=-90] if entity @s[scores={generating=11}] at @s align xyz positioned ^44 ^-7 ^-19 run execute as @e[dx=19,dy=12,dz=89,tag=lever,tag=!correctlever] run kill @s
#0
execute if entity @s[y_rotation=0] if entity @s[scores={generating=6}] at @s align xyz positioned ^-6 ^-3 ^-1 run place template minecraft:basementhallway ~ ~ ~ counterclockwise_90
execute if entity @s[y_rotation=0] if entity @s[scores={generating=5}] at @s align xyz positioned ^-44 ^-7 ^-19 run forceload add ~ ~ ~89 ~19
execute if entity @s[y_rotation=0,tag=seekcrescendo1,scores={generating=12}] at @s align xyz positioned ^-44 ^-7 ^-19 as @e[type=marker,tag=seekeyemarker,dz=89,dy=12,dx=19,limit=4,sort=random] run function doors:summonseekeye
execute if entity @s[y_rotation=0,tag=seekcrescendo2,scores={generating=12}] at @s align xyz positioned ^-44 ^-7 ^-19 as @e[type=marker,tag=seekeyemarker,dz=89,dy=12,dx=19,limit=8,sort=random] run function doors:summonseekeye
execute if entity @s[y_rotation=0,tag=seekcrescendo3,scores={generating=12}] at @s align xyz positioned ^-44 ^-7 ^-19 as @e[type=marker,tag=seekeyemarker,dz=89,dy=12,dx=19,limit=16,sort=random] run function doors:summonseekeye
execute if entity @s[y_rotation=0] if entity @s[tag=destroy] at @s align xyz positioned ^-44 ^-7 ^-19 run kill @e[dx=89,dy=12,dz=19,tag=!door]

execute if entity @s[y_rotation=0] if entity @s[scores={generating=9}] at @s align xyz positioned ^-44 ^-7 ^-19 run tag @e[dx=89,dy=12,dz=19,tag=lever,limit=1,sort=random] add correctlever
execute if entity @s[y_rotation=0] if entity @s[scores={generating=10}] at @s align xyz positioned ^-44 ^-7 ^-19 run execute as @e[dx=89,dy=12,dz=19,tag=lever,tag=!correctlever] at @s run setblock ~ ~ ~ air
execute if entity @s[y_rotation=0] if entity @s[scores={generating=11}] at @s align xyz positioned ^-44 ^-7 ^-19 run execute as @e[dx=89,dy=12,dz=19,tag=lever,tag=!correctlever] run kill @s
#Not rotated variable needed
execute if entity @s[scores={generating=7}] at @s align xyz positioned ^ ^-2 ^-11 run tag @e[tag=basementdoor,sort=random,limit=1,distance=..5] remove closed
execute if entity @s[scores={generating=8}] at @s align xyz positioned ^ ^-2 ^-11 run execute as @e[tag=basementdoor,limit=1,distance=..5,tag=!closed,y_rotation=-180] at @s run place template minecraft:basement ^9 ^-5 ^-1
execute if entity @s[scores={generating=8}] at @s align xyz positioned ^ ^-2 ^-11 run execute as @e[tag=basementdoor,limit=1,distance=..5,tag=!closed,y_rotation=-90] at @s run place template minecraft:basement ^9 ^-5 ^-1 clockwise_90
execute if entity @s[scores={generating=8}] at @s align xyz positioned ^ ^-2 ^-11 run execute as @e[tag=basementdoor,limit=1,distance=..5,tag=!closed,y_rotation=0] at @s run place template minecraft:basement ^9 ^-5 ^-1 180
execute if entity @s[scores={generating=8}] at @s align xyz positioned ^ ^-2 ^-11 run execute as @e[tag=basementdoor,limit=1,distance=..5,tag=!closed,y_rotation=90] at @s run place template minecraft:basement ^9 ^-5 ^-1 counterclockwise_90
execute if entity @s[scores={generating=13}] at @s positioned ^ ^-2 ^-10 run execute at @e[tag=lever,limit=1,sort=nearest] if entity @e[tag=correctlever,distance=..1] if block ~ ~ ~ lever[powered=true] run tag @s add leverpulled
execute if entity @s[tag=leverpulled] at @s run fill ^ ^-1 ^-13 ^ ^-2 ^-13 air
execute at @s align xyz positioned ^ ^-2 ^-10 if score @s doornumber = max_score playercurrentdoor run tag @e[tag=rushorambush,dx=1.0,dz=1.0] add stop
execute if entity @s[tag=flickon] at @s align xyz positioned ^-6 ^-3 ^-1 run fill ^ ^ ^ ^13 ^8 ^-19 light[level=0] replace minecraft:wall_torch[facing=north]
execute if entity @s[tag=flickon] at @s align xyz positioned ^-6 ^-3 ^-1 run fill ^ ^ ^ ^13 ^8 ^-19 light[level=1] replace minecraft:wall_torch[facing=east]
execute if entity @s[tag=flickon] at @s align xyz positioned ^-6 ^-3 ^-1 run fill ^ ^ ^ ^13 ^8 ^-19 light[level=2] replace minecraft:wall_torch[facing=south]
execute if entity @s[tag=flickon] at @s align xyz positioned ^-6 ^-3 ^-1 run fill ^ ^ ^ ^13 ^8 ^-19 light[level=3] replace minecraft:wall_torch[facing=west]
execute if entity @s[tag=flickoff] at @s align xyz positioned ^-6 ^-3 ^-1 run fill ^ ^ ^ ^13 ^8 ^-19 minecraft:wall_torch[facing=north] replace light[level=0]
execute if entity @s[tag=flickoff] at @s align xyz positioned ^-6 ^-3 ^-1 run fill ^ ^ ^ ^13 ^8 ^-19 minecraft:wall_torch[facing=east] replace light[level=1]
execute if entity @s[tag=flickoff] at @s align xyz positioned ^-6 ^-3 ^-1 run fill ^ ^ ^ ^13 ^8 ^-19 minecraft:wall_torch[facing=south] replace light[level=2]
execute if entity @s[tag=flickoff] at @s align xyz positioned ^-6 ^-3 ^-1 run fill ^ ^ ^ ^13 ^8 ^-19 minecraft:wall_torch[facing=west] replace light[level=3]
execute if entity @s[tag=destroy] at @s align xyz positioned ^-44 ^-7 ^-1 run fill ^ ^ ^ ^89 ^12 ^-20 air
execute if entity @s[tag=destroy] run kill @s