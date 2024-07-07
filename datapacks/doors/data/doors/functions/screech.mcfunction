execute as @e[type=armor_stand,tag=screech,scores={crucifixed=1..}] at @s run scoreboard players reset @a[distance=..3] screechtime

scoreboard players add @a[scores={screech=1..}] screechtime 1
execute as @e[type=armor_stand,tag=screech] at @s run tp @s ~ ~ ~ facing entity @a[scores={screech=1..},limit=1,sort=nearest]
scoreboard players set @a[scores={randomizer=30..}] randomizer 1

execute as @e[type=armor_stand,tag=screech] at @s unless entity @a[distance=..1.5,scores={screech=1..}] run scoreboard players set @a[limit=1,sort=nearest] screech 1
