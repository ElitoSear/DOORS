#rooms4
execute if entity @s[scores={generating=6}] at @s align xyz positioned ~-14 ~-3 ~-5 run place template minecraft:rooms4
execute if entity @s[scores={generating=5}] at @s align xyz positioned ~-14 ~-3 ~-5 run forceload add ~ ~ ~14 ~11
execute if entity @s[tag=destroy] at @s align xyz positioned ~-14 ~-3 ~-5 run kill @e[dx=14,dy=6,dz=11,tag=!roomsdoor]
execute at @s align xyz positioned ~-14 ~-2 ~ if score @s roomsdoornumber = max_score playercurrentroomsdoor run tag @e[tag=roomsentity,dx=1.0,dz=1.0] add stop
execute if entity @s[tag=destroy] at @s align xyz positioned ~-14 ~-3 ~-5 run fill ~ ~ ~ ~14 ~6 ~11 air
execute if entity @s[scores={roomsdoornumber=1..110,generating=7}] at @s align xyz positioned ~-14 ~-3 ~-5 run fill ~ ~ ~ ~14 ~6 ~11 light[level=10] replace air
execute if entity @s[scores={roomsdoornumber=111..120,generating=7}] at @s align xyz positioned ~-14 ~-3 ~-5 run fill ~ ~ ~ ~14 ~6 ~11 light[level=9] replace air
execute if entity @s[scores={roomsdoornumber=121..130,generating=7}] at @s align xyz positioned ~-14 ~-3 ~-5 run fill ~ ~ ~ ~14 ~6 ~11 light[level=8] replace air
execute if entity @s[scores={roomsdoornumber=131..140,generating=7}] at @s align xyz positioned ~-14 ~-3 ~-5 run fill ~ ~ ~ ~14 ~6 ~11 light[level=7] replace air
execute if entity @s[scores={roomsdoornumber=141..150,generating=7}] at @s align xyz positioned ~-14 ~-3 ~-5 run fill ~ ~ ~ ~14 ~6 ~11 light[level=6] replace air
execute if entity @s[scores={roomsdoornumber=151..160,generating=7}] at @s align xyz positioned ~-14 ~-3 ~-5 run fill ~ ~ ~ ~14 ~6 ~11 light[level=5] replace air
execute if entity @s[scores={roomsdoornumber=161..170,generating=7}] at @s align xyz positioned ~-14 ~-3 ~-5 run fill ~ ~ ~ ~14 ~6 ~11 light[level=4] replace air
execute if entity @s[scores={roomsdoornumber=171..180,generating=7}] at @s align xyz positioned ~-14 ~-3 ~-5 run fill ~ ~ ~ ~14 ~6 ~11 light[level=3] replace air
execute if entity @s[scores={roomsdoornumber=181..190,generating=7}] at @s align xyz positioned ~-14 ~-3 ~-5 run fill ~ ~ ~ ~14 ~6 ~11 light[level=2] replace air
execute if entity @s[scores={roomsdoornumber=191..199,generating=7}] at @s align xyz positioned ~-14 ~-3 ~-5 run fill ~ ~ ~ ~14 ~6 ~11 light[level=1] replace air
execute if entity @s[scores={roomsdoornumber=250,generating=8}] at @s align xyz positioned ~-14 ~-3 ~-5 run execute at @e[dx=14,dy=6,dz=11,tag=optionalroomsexit] run place template minecraft:roomsoptionalexit ~-3 ~-1 ~-8 
execute if entity @s[scores={roomsdoornumber=350,generating=8}] at @s align xyz positioned ~-14 ~-3 ~-5 run execute at @e[dx=14,dy=6,dz=11,tag=optionalroomsexit] run place template minecraft:roomsoptionalexit ~-3 ~-1 ~-8 
execute if entity @s[scores={roomsdoornumber=400,generating=8}] at @s align xyz positioned ~-14 ~-3 ~-5 run execute at @e[dx=14,dy=6,dz=11,tag=optionalroomsexit] run place template minecraft:roomsoptionalexit ~-3 ~-1 ~-8 
execute if entity @s[scores={roomsdoornumber=450,generating=8}] at @s align xyz positioned ~-14 ~-3 ~-5 run execute at @e[dx=14,dy=6,dz=11,tag=optionalroomsexit] run place template minecraft:roomsoptionalexit ~-3 ~-1 ~-8 
execute if entity @s[scores={roomsdoornumber=550,generating=8}] at @s align xyz positioned ~-14 ~-3 ~-5 run execute at @e[dx=14,dy=6,dz=11,tag=optionalroomsexit] run place template minecraft:roomsoptionalexit ~-3 ~-1 ~-8 
execute if entity @s[scores={roomsdoornumber=600,generating=8}] at @s align xyz positioned ~-14 ~-3 ~-5 run execute at @e[dx=14,dy=6,dz=11,tag=optionalroomsexit] run place template minecraft:roomsoptionalexit ~-3 ~-1 ~-8 
execute if entity @s[scores={roomsdoornumber=700,generating=8}] at @s align xyz positioned ~-14 ~-3 ~-5 run execute at @e[dx=14,dy=6,dz=11,tag=optionalroomsexit] run place template minecraft:roomsoptionalexit ~-3 ~-1 ~-8 
execute if entity @s[scores={roomsdoornumber=750,generating=8}] at @s align xyz positioned ~-14 ~-3 ~-5 run execute at @e[dx=14,dy=6,dz=11,tag=optionalroomsexit] run place template minecraft:roomsoptionalexit ~-3 ~-1 ~-8 
execute if entity @s[scores={roomsdoornumber=800,generating=8}] at @s align xyz positioned ~-14 ~-3 ~-5 run execute at @e[dx=14,dy=6,dz=11,tag=optionalroomsexit] run place template minecraft:roomsoptionalexit ~-3 ~-1 ~-8 
execute if entity @s[scores={roomsdoornumber=950,generating=8}] at @s align xyz positioned ~-14 ~-3 ~-5 run execute at @e[dx=14,dy=6,dz=11,tag=optionalroomsexit] run place template minecraft:roomsoptionalexit ~-3 ~-1 ~-8 
execute if score @s generating matches 9 at @s align xyz positioned ~-14 ~-3 ~-5 run execute as @e[dx=14,dy=6,dz=11,type=armor_stand,tag=rooms_gold] run loot replace entity @s armor.head loot doors:rooms_gold
execute if entity @s[tag=destroy] run kill @s