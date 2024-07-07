#90
execute if entity @s[scores={generating=6}] at @s align xyz positioned ^-30 ^-7 ^-1 run place template minecraft:largebasement
execute if entity @s[scores={generating=5}] at @s align xyz positioned ^-30 ^-7 ^-1 run forceload add ~ ~ ~25 ~63
execute if entity @s[tag=destroy] at @s align xyz positioned ^-30 ^-7 ^-1 run kill @e[dx=25,dy=13,dz=63,tag=!door]
execute if entity @s[scores={generating=9}] at @s align xyz positioned ^-30 ^-7 ^-1 run tag @e[dx=25,dy=13,dz=63,tag=lever,limit=1,sort=random] add correctlever
execute if entity @s[scores={generating=10}] at @s align xyz positioned ^-30 ^-7 ^-1 run execute as @e[dx=25,dy=13,dz=63,tag=lever,tag=!correctlever] at @s run setblock ~ ~ ~ air
execute if entity @s[scores={generating=11}] at @s align xyz positioned ^-30 ^-7 ^-1 run execute as @e[dx=25,dy=13,dz=63,tag=lever,tag=!correctlever] at @s run kill @s