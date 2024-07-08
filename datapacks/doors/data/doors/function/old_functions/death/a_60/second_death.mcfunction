execute at @s if score @s guiding_light_message matches 2 positioned ~2.75 ~3.4 ~ run data merge entity @e[tag=guiding_light_message_background,limit=1,sort=nearest] {item:{id:"minecraft:string",Count:1b,tag:{CustomModelData:156}}}

execute at @s if score @s guiding_light_message matches 50 positioned ~2.15 ~1.5 ~ run data merge entity @e[tag=guiding_light_message,limit=1,sort=nearest] {text:'{"color":"#EDE5AA","translate": "death.rooms.second_1"}'}
execute at @s if score @s guiding_light_message matches 170 positioned ~2.15 ~1.5 ~ run data merge entity @e[tag=guiding_light_message,limit=1,sort=nearest] {text:'{"color":"#EDE5AA","text": ""}'}

execute at @s if score @s guiding_light_message matches 180 positioned ~2.15 ~1.5 ~ run data merge entity @e[tag=guiding_light_message,limit=1,sort=nearest] {text:'{"color":"#EDE5AA","translate": "death.rooms.second_2"}'}
execute at @s if score @s guiding_light_message matches 310 positioned ~2.15 ~1.5 ~ run data merge entity @e[tag=guiding_light_message,limit=1,sort=nearest] {text:'{"color":"#EDE5AA","text": ""}'}

execute at @s if score @s guiding_light_message matches 320 positioned ~2.15 ~1.5 ~ run data merge entity @e[tag=guiding_light_message,limit=1,sort=nearest] {text:'{"color":"#EDE5AA","translate": "death.rooms.second_3"}'}
execute at @s if score @s guiding_light_message matches 440 positioned ~2.15 ~1.5 ~ run data merge entity @e[tag=guiding_light_message,limit=1,sort=nearest] {text:'{"color":"#EDE5AA","text": ""}'}

execute at @s if score @s guiding_light_message matches 450 positioned ~2.15 ~1.5 ~ run data merge entity @e[tag=guiding_light_message,limit=1,sort=nearest] {text:'{"color":"#EDE5AA","translate": "death.a60.second_1"}'}
execute at @s if score @s guiding_light_message matches 570 positioned ~2.15 ~1.5 ~ run data merge entity @e[tag=guiding_light_message,limit=1,sort=nearest] {text:'{"color":"#EDE5AA","text": ""}'}

execute at @s if score @s guiding_light_message matches 580 positioned ~2.15 ~1.5 ~ run data merge entity @e[tag=guiding_light_message,limit=1,sort=nearest] {text:'{"color":"#EDE5AA","translate": "death.a60.second_2"}'}
execute at @s if score @s guiding_light_message matches 700 positioned ~2.15 ~1.5 ~ run data merge entity @e[tag=guiding_light_message,limit=1,sort=nearest] {text:'{"color":"#EDE5AA","text": ""}'}

execute at @s if score @s guiding_light_message matches 710 positioned ~2.15 ~1.5 ~ run data merge entity @e[tag=guiding_light_message,limit=1,sort=nearest] {text:'{"color":"#EDE5AA","translate": "death.a60.second_3"}'}
execute at @s if score @s guiding_light_message matches 830 positioned ~2.15 ~1.5 ~ run data merge entity @e[tag=guiding_light_message,limit=1,sort=nearest] {text:'{"color":"#EDE5AA","text": ""}'}

execute if score @s guiding_light_message matches 830 run stopsound @s * doors:music.curious_light
execute if score @s guiding_light_message matches 830 at @s run playsound doors:music.curious_light_end master @s ~ ~ ~ 0.6

execute if score @s guiding_light_message matches 830 run title @s times 80t 0t 0t
execute if score @s guiding_light_message matches 830 run title @s title {"text": "\uE024"}

execute if score @s guiding_light_message matches 910 run function doors:death/untag