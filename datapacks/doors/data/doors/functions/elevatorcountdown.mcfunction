#Copy Text To Back Countdown
execute if entity @s[tag=back_countdown] at @s run data modify entity @s text set from entity @e[tag=front_countdown,sort=nearest,limit=1] text


#Player Detection
execute if entity @s[tag=front_countdown,y_rotation=-90] at @s align xyz positioned ~-4 ~-1 ~-1 unless entity @a[gamemode=adventure,dx=3,dy=3,dz=3] run scoreboard players reset @s elevatorcountdown
execute if entity @s[tag=front_countdown,y_rotation=-90] at @s align xyz positioned ~-4 ~-1 ~-1 unless entity @a[gamemode=adventure,dx=3,dy=3,dz=3] run data merge entity @s {text:'{"text":""}',}
execute if entity @s[tag=front_countdown,y_rotation=-90] at @s align xyz positioned ~-4 ~-1 ~-1 if score @e[tag=front_playercount,sort=nearest,limit=1] elevatorplayercount = player_count playercount run scoreboard players add @s elevatorcountdown 1
execute if entity @s[tag=front_countdown,y_rotation=90] at @s align xyz positioned ~2 ~-1 ~-1 unless entity @a[gamemode=adventure,dx=3,dy=3,dz=3] run scoreboard players reset @s elevatorcountdown
execute if entity @s[tag=front_countdown,y_rotation=90] at @s align xyz positioned ~2 ~-1 ~-1 unless entity @a[gamemode=adventure,dx=3,dy=3,dz=3] run data merge entity @s {text:'{"text":""}',}
execute if entity @s[tag=front_countdown,y_rotation=90] at @s align xyz positioned ~2 ~-1 ~-1 if score @e[tag=front_playercount,sort=nearest,limit=1] elevatorplayercount = player_count playercount run scoreboard players add @s elevatorcountdown 1
#Countdown
execute at @s if entity @s[tag=front_countdown,scores={elevatorcountdown=2}] run data merge entity @s {text:'{"text":"5"}'}
execute at @s if entity @s[tag=front_countdown,scores={elevatorcountdown=20}] run data merge entity @s {text:'{"text":"4"}'}
execute at @s if entity @s[tag=front_countdown,scores={elevatorcountdown=20}] run playsound custom:misc.elevator_countdown master @a
execute at @s if entity @s[tag=front_countdown,scores={elevatorcountdown=40}] run data merge entity @s {text:'{"text":"3"}'}
execute at @s if entity @s[tag=front_countdown,scores={elevatorcountdown=40}] run playsound custom:misc.elevator_countdown master @a
execute at @s if entity @s[tag=front_countdown,scores={elevatorcountdown=60}] run data merge entity @s {text:'{"text":"2"}'}
execute at @s if entity @s[tag=front_countdown,scores={elevatorcountdown=60}] run playsound custom:misc.elevator_countdown master @a
execute at @s if entity @s[tag=front_countdown,scores={elevatorcountdown=80}] run data merge entity @s {text:'{"text":"1"}'}
execute at @s if entity @s[tag=front_countdown,scores={elevatorcountdown=80}] run playsound custom:misc.elevator_countdown master @a
execute at @s if entity @s[tag=front_countdown,scores={elevatorcountdown=100}] run data merge entity @s {text:'{"text":"..."}'}


#Elevator Sound

execute if entity @s[tag=front_countdown] at @s align xyz positioned ~ ~-1 ~ run scoreboard players reset @a[gamemode=adventure,dx=1] lobbyelevatortime