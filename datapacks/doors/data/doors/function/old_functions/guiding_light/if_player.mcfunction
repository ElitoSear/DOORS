execute positioned ~-1 ~-2 ~-5 run place template minecraft:guiding_light

scoreboard players add global guiding_light_id 1
scoreboard players operation @e[tag=guiding_light,sort=nearest,limit=1] guiding_light_id = global guiding_light_id
scoreboard players operation @s guiding_light_id = global guiding_light_id

scoreboard players add @e[tag=guiding_light,sort=nearest,limit=1] guiding_light_id 1
scoreboard players add @s guiding_light_id 1