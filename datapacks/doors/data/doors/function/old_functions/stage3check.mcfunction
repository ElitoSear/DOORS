data merge entity @e[tag=screennumber,limit=1] {item:{id:"minecraft:iron_ingot",Count:1b,tag:{CustomModelData:3}}}

execute if score @e[tag=switch1,limit=1] breaker = @e[tag=stage3number,limit=1,scores={breakernumber=1}] breaker run scoreboard players add progresslevel breakerprogress 1
execute if score @e[tag=switch2,limit=1] breaker = @e[tag=stage3number,limit=1,scores={breakernumber=2}] breaker run scoreboard players add progresslevel breakerprogress 1
execute if score @e[tag=switch3,limit=1] breaker = @e[tag=stage3number,limit=1,scores={breakernumber=3}] breaker run scoreboard players add progresslevel breakerprogress 1
execute if score @e[tag=switch4,limit=1] breaker = @e[tag=stage3number,limit=1,scores={breakernumber=4}] breaker run scoreboard players add progresslevel breakerprogress 1
execute if score @e[tag=switch5,limit=1] breaker = @e[tag=stage3number,limit=1,scores={breakernumber=5}] breaker run scoreboard players add progresslevel breakerprogress 1
execute if score @e[tag=switch6,limit=1] breaker = @e[tag=stage3number,limit=1,scores={breakernumber=6}] breaker run scoreboard players add progresslevel breakerprogress 1
execute if score @e[tag=switch7,limit=1] breaker = @e[tag=stage3number,limit=1,scores={breakernumber=7}] breaker run scoreboard players add progresslevel breakerprogress 1
execute if score @e[tag=switch8,limit=1] breaker = @e[tag=stage3number,limit=1,scores={breakernumber=8}] breaker run scoreboard players add progresslevel breakerprogress 1
execute if score @e[tag=switch9,limit=1] breaker = @e[tag=stage3number,limit=1,scores={breakernumber=9}] breaker run scoreboard players add progresslevel breakerprogress 1
execute if score @e[tag=switch10,limit=1] breaker = @e[tag=stage3number,limit=1,scores={breakernumber=10}] breaker run scoreboard players add progresslevel breakerprogress 1

execute if score progresslevel breakerprogress matches 0 run data merge entity @e[tag=screenprogress,limit=1] {item:{id:"minecraft:iron_ingot",Count:1b,tag:{CustomModelData:21}}}
execute if score progresslevel breakerprogress matches 1 run data merge entity @e[tag=screenprogress,limit=1] {item:{id:"minecraft:iron_ingot",Count:1b,tag:{CustomModelData:22}}}
execute if score progresslevel breakerprogress matches 2 run data merge entity @e[tag=screenprogress,limit=1] {item:{id:"minecraft:iron_ingot",Count:1b,tag:{CustomModelData:23}}}
execute if score progresslevel breakerprogress matches 3 run data merge entity @e[tag=screenprogress,limit=1] {item:{id:"minecraft:iron_ingot",Count:1b,tag:{CustomModelData:24}}}
execute if score progresslevel breakerprogress matches 4 run data merge entity @e[tag=screenprogress,limit=1] {item:{id:"minecraft:iron_ingot",Count:1b,tag:{CustomModelData:25}}}
execute if score progresslevel breakerprogress matches 5 run data merge entity @e[tag=screenprogress,limit=1] {item:{id:"minecraft:iron_ingot",Count:1b,tag:{CustomModelData:26}}}
execute if score progresslevel breakerprogress matches 6 run data merge entity @e[tag=screenprogress,limit=1] {item:{id:"minecraft:iron_ingot",Count:1b,tag:{CustomModelData:27}}}
execute if score progresslevel breakerprogress matches 7 run data merge entity @e[tag=screenprogress,limit=1] {item:{id:"minecraft:iron_ingot",Count:1b,tag:{CustomModelData:28}}}
execute if score progresslevel breakerprogress matches 8 run data merge entity @e[tag=screenprogress,limit=1] {item:{id:"minecraft:iron_ingot",Count:1b,tag:{CustomModelData:29}}}
execute if score progresslevel breakerprogress matches 9 run data merge entity @e[tag=screenprogress,limit=1] {item:{id:"minecraft:iron_ingot",Count:1b,tag:{CustomModelData:30}}}
execute if score progresslevel breakerprogress matches 10 run data merge entity @e[tag=screenprogress,limit=1] {item:{id:"minecraft:iron_ingot",Count:1b,tag:{CustomModelData:31}}}

execute if score progresslevel breakerprogress matches 0..9 at @e[tag=protectbreaker] run playsound doors:misc.progress_decrease master @a ~ ~2 ~
execute if score progresslevel breakerprogress matches 10 at @e[tag=protectbreaker] run playsound doors:misc.progress_increase master @a ~ ~2 ~
execute if score progresslevel breakerprogress matches 10 run data merge entity @e[tag=screenstage,limit=1] {item:{id:"minecraft:iron_ingot",Count:1b,tag:{CustomModelData:20}}}
execute if score progresslevel breakerprogress matches 10 as @e[scores={breakerpuzzle=890}] run scoreboard players set @s breakerpuzzle 1000
