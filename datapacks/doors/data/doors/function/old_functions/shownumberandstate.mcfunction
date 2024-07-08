execute if score @s breaker matches 1 run data merge entity @e[tag=screenstate,limit=1] {item:{id:"minecraft:iron_ingot",Count:1b,tag:{CustomModelData:16}}}
execute if score @s breaker matches 0 run data merge entity @e[tag=screenstate,limit=1] {item:{id:"minecraft:iron_ingot",Count:1b,tag:{CustomModelData:15}}}
execute if score @s breakernumber matches 1 run data merge entity @e[tag=screennumber,limit=1] {item:{id:"minecraft:iron_ingot",Count:1b,tag:{CustomModelData:6}}}
execute if score @s breakernumber matches 2 run data merge entity @e[tag=screennumber,limit=1] {item:{id:"minecraft:iron_ingot",Count:1b,tag:{CustomModelData:7}}}
execute if score @s breakernumber matches 3 run data merge entity @e[tag=screennumber,limit=1] {item:{id:"minecraft:iron_ingot",Count:1b,tag:{CustomModelData:8}}}
execute if score @s breakernumber matches 4 run data merge entity @e[tag=screennumber,limit=1] {item:{id:"minecraft:iron_ingot",Count:1b,tag:{CustomModelData:9}}}
execute if score @s breakernumber matches 5 run data merge entity @e[tag=screennumber,limit=1] {item:{id:"minecraft:iron_ingot",Count:1b,tag:{CustomModelData:10}}}
execute if score @s breakernumber matches 6 run data merge entity @e[tag=screennumber,limit=1] {item:{id:"minecraft:iron_ingot",Count:1b,tag:{CustomModelData:11}}}
execute if score @s breakernumber matches 7 run data merge entity @e[tag=screennumber,limit=1] {item:{id:"minecraft:iron_ingot",Count:1b,tag:{CustomModelData:12}}}
execute if score @s breakernumber matches 8 run data merge entity @e[tag=screennumber,limit=1] {item:{id:"minecraft:iron_ingot",Count:1b,tag:{CustomModelData:13}}}
execute if score @s breakernumber matches 9 run data merge entity @e[tag=screennumber,limit=1] {item:{id:"minecraft:iron_ingot",Count:1b,tag:{CustomModelData:14}}}
execute if score @s breakernumber matches 10 run data merge entity @e[tag=screennumber,limit=1] {item:{id:"minecraft:iron_ingot",Count:1b,tag:{CustomModelData:5}}}
execute at @e[tag=protectbreaker] if score @s breaker matches 1 run playsound doors:misc.switch_on master @a ~ ~2 ~
execute at @e[tag=protectbreaker] if score @s breaker matches 0 run playsound doors:misc.switch_off master @a ~ ~2 ~