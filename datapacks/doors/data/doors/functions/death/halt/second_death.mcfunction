execute at @s if score @s guiding_light_message matches 50 positioned ~2.15 ~1.5 ~ run data merge entity @e[tag=guiding_light_message,limit=1,sort=nearest] {text:'{"color":"#9EEFFF","translate": "death.halt.second_1"}'}
execute at @s if score @s guiding_light_message matches 170 positioned ~2.15 ~1.5 ~ run data merge entity @e[tag=guiding_light_message,limit=1,sort=nearest] {text:'{"color":"#9EEFFF","text": ""}'}

execute at @s if score @s guiding_light_message matches 180 positioned ~2.15 ~1.5 ~ run data merge entity @e[tag=guiding_light_message,limit=1,sort=nearest] {text:'{"color":"#9EEFFF","translate": "death.halt.second_2"}'}
execute at @s if score @s guiding_light_message matches 310 positioned ~2.15 ~1.5 ~ run data merge entity @e[tag=guiding_light_message,limit=1,sort=nearest] {text:'{"color":"#9EEFFF","text": ""}'}

execute at @s if score @s guiding_light_message matches 320 positioned ~2.15 ~1.5 ~ run data merge entity @e[tag=guiding_light_message,limit=1,sort=nearest] {text:'{"color":"#9EEFFF","translate": "death.halt.second_3"}'}
execute at @s if score @s guiding_light_message matches 440 positioned ~2.15 ~1.5 ~ run data merge entity @e[tag=guiding_light_message,limit=1,sort=nearest] {text:'{"color":"#9EEFFF","text": ""}'}

execute at @s if score @s guiding_light_message matches 450 positioned ~2.15 ~1.5 ~ run data merge entity @e[tag=guiding_light_message,limit=1,sort=nearest] {text:'{"color":"#9EEFFF","translate": "death.halt.second_4"}'}
execute at @s if score @s guiding_light_message matches 570 positioned ~2.15 ~1.5 ~ run data merge entity @e[tag=guiding_light_message,limit=1,sort=nearest] {text:'{"color":"#9EEFFF","text": ""}'}


execute if score @s guiding_light_message matches 570 run stopsound @s * custom:music.guiding_light
execute if score @s guiding_light_message matches 570 at @s run playsound custom:music.guiding_light_end master @s ~ ~ ~ 0.6

execute if score @s guiding_light_message matches 570 run title @s times 80t 0t 0t
execute if score @s guiding_light_message matches 570 run title @s title {"text": "\uE024"}

execute if score @s guiding_light_message matches 650 run function doors:death/untag