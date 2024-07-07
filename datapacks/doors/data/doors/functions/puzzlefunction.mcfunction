execute as @e[tag=paintingframe,nbt={item:{id:"minecraft:string"}}] at @s run tag @e[tag=paintingholder,distance=..1] add paintingavailable

execute as @e[tag=paintingholder] unless entity @s[nbt={HandItems:[{id:"minecraft:string"}]}] run tag @s remove holdingitem
execute as @e[tag=paintingholder] if entity @s[nbt={HandItems:[{id:"minecraft:string"}]}] run tag @s add holdingitem

execute as @e[tag=paintingframe] if entity @s[nbt={item:{id:"minecraft:air"}}] run tag @s remove holdingitem
execute as @e[tag=paintingframe] if entity @s[nbt={item:{id:"minecraft:string"}}] run tag @s add holdingitem

execute as @e[tag=paintingholder] at @s if entity @e[distance=..1,tag=paintingframe,nbt={item:{id:"minecraft:string",tag:{CustomModelData:25}}}] at @s run tag @s add paintingoval
execute as @e[tag=paintingholder] at @s if entity @e[distance=..1,tag=paintingframe,nbt={item:{id:"minecraft:string",tag:{CustomModelData:26}}}] at @s run tag @s add paintinghorizontal
execute as @e[tag=paintingholder] at @s if entity @e[distance=..1,tag=paintingframe,nbt={item:{id:"minecraft:string",tag:{CustomModelData:27}}}] at @s run tag @s add paintingvertical
execute as @e[tag=paintingholder] at @s if entity @e[distance=..1,tag=paintingframe,nbt={item:{id:"minecraft:string",tag:{CustomModelData:28}}}] at @s run tag @s add paintingsquare

execute as @e[tag=paintingholder] at @s unless entity @e[distance=..1,tag=paintingframe,nbt={item:{id:"minecraft:string",tag:{CustomModelData:25}}}] at @s run tag @s remove paintingoval
execute as @e[tag=paintingholder] at @s unless entity @e[distance=..1,tag=paintingframe,nbt={item:{id:"minecraft:string",tag:{CustomModelData:26}}}] at @s run tag @s remove paintinghorizontal
execute as @e[tag=paintingholder] at @s unless entity @e[distance=..1,tag=paintingframe,nbt={item:{id:"minecraft:string",tag:{CustomModelData:27}}}] at @s run tag @s remove paintingvertical
execute as @e[tag=paintingholder] at @s unless entity @e[distance=..1,tag=paintingframe,nbt={item:{id:"minecraft:string",tag:{CustomModelData:28}}}] at @s run tag @s remove paintingsquare

scoreboard players add @e[scores={loadingpaintings=1..10}] loadingpaintings 1
scoreboard players add @e[scores={fireplacetime=1..10}] fireplacetime 1