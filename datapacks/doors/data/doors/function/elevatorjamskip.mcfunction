execute if entity @s[nbt={interaction:{}}] unless entity @e[tag=skipelevatorjamdisplay,nbt={block_state:{Properties:{powered:"true"}}}] run playsound minecraft:block.stone_button.click_on master @a ~ ~ ~
execute if entity @s[nbt={interaction:{}}] run data merge entity @e[tag=skipelevatorjamdisplay,limit=1] {block_state:{Properties:{powered:"true"}}}
execute if entity @s[nbt={interaction:{}}] if entity @e[tag=void,scores={reception=12..699}] run stopsound @a * custom:music.elevator_jam
execute if entity @s[nbt={interaction:{}}] run scoreboard players set @e[tag=void,scores={reception=12..699}] reception 700
execute if entity @s[nbt={interaction:{}}] run schedule function doors:skipelevator 20t
execute if entity @s[nbt={interaction:{}}] run data remove entity @s interaction