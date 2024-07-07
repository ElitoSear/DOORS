
execute if score @s guiding_light_message matches 2 run playsound custom:music.guiding_light master @s[tag=!atrooms]
execute if score @s guiding_light_message matches 2 positioned 34.5 72.0 -50.5 rotated -90 0 run function doors:guiding_light/tp_loop
execute if score @s guiding_light_message matches 8.. at @s as @e[type=armor_stand,tag=guiding_light] if score @s guiding_light_id = @p guiding_light_id run spectate @s @p

execute if entity @s[tag=atrooms] if score @s guiding_light_message matches 2 run stopsound @s * custom:music.guiding_light
execute if entity @s[tag=atrooms] if score @s guiding_light_message matches 2 run playsound custom:music.curious_light master @s

#Executing while the player is reciving the guiding light message
execute if score @s guiding_light_message matches 2.. run stopsound @s * weather.rain
execute if score @s guiding_light_message matches 2.. run stopsound @s * weather.rain.above
execute if score @s guiding_light_message matches 2.. run stopsound @s * custom:entity.ambush.far
execute if score @s guiding_light_message matches 2.. run stopsound @s * custom:entity.rush.far

execute if score @s guiding_light_message matches 2 run title @s times 0t 0t 50t
execute if score @s guiding_light_message matches 2 run title @s title {"text": "\uE024"}

execute if score @s guiding_light_message matches 3 run function doors:tagremoval

execute if entity @s[tag=killed_by_rush,scores={guiding_light_message=1..}] run function doors:death/rush/messages
execute if entity @s[tag=killed_by_hide,scores={guiding_light_message=1..}] run function doors:death/hide/first
execute if entity @s[tag=killed_by_eyes,scores={guiding_light_message=1..}] run function doors:death/eyes/messages
execute if entity @s[tag=killed_by_screech,scores={guiding_light_message=1..}] run function doors:death/screech/messages
execute if entity @s[tag=killed_by_seek,scores={guiding_light_message=1..}] run function doors:death/seek/messages
execute if entity @s[tag=killed_by_halt,scores={guiding_light_message=1..}] run function doors:death/halt/messages
execute if entity @s[tag=killed_by_ambush,scores={guiding_light_message=1..}] run function doors:death/ambush/messages
execute if entity @s[tag=killed_by_figure,scores={guiding_light_message=1..}] run function doors:death/figure/messages
execute if entity @s[tag=killed_by_void,scores={guiding_light_message=1..}] run function doors:death/void/messages
execute if entity @s[tag=killed_by_dupe,scores={guiding_light_message=1..}] run function doors:death/dupe/messages
execute if entity @s[tag=killed_by_a_60,scores={guiding_light_message=1..}] run function doors:death/a_60/messages
execute if entity @s[tag=killed_by_a_90,scores={guiding_light_message=1..}] run function doors:death/a_90/messages
execute if entity @s[tag=killed_by_a_120,scores={guiding_light_message=1..}] run function doors:death/a_120/messages

scoreboard players add @s[scores={guiding_light_message=1..}] guiding_light_message 1
execute if score @s guiding_light_message matches 1400.. run function doors:death/untag