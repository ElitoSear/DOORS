#Copy Text To Back Player Count
execute if entity @s[tag=back_playercount] at @s run data modify entity @s text set from entity @e[tag=front_playercount,sort=nearest,limit=1] text



execute run data merge entity @s[tag=front_playercount] {text:'["",{"score":{"name":"@s","objective":"elevatorplayercount"}},{"text":" / "},{"score":{"name":"player_count","objective":"playercount"}}]'}


execute if entity @s[tag=front_playercount,y_rotation=-90] at @s store result score @s elevatorplayercount run execute align xyz positioned ~-4 ~-1 ~-1 if entity @a[gamemode=adventure,dx=3,dy=3,dz=3]
execute if entity @s[tag=front_playercount,y_rotation=-90] at @s run execute align xyz positioned ~-4 ~-1 ~-1 run scoreboard players add @a[gamemode=adventure,dx=3,dy=3,dz=3] lobbyelevatortime 1


execute if entity @s[tag=front_playercount,y_rotation=90] at @s store result score @s elevatorplayercount run execute align xyz positioned ~2 ~-1 ~-1 if entity @a[gamemode=adventure,dx=3,dy=3,dz=3]
execute if entity @s[tag=front_playercount,y_rotation=90] at @s run execute align xyz positioned ~2 ~-1 ~-1 run scoreboard players add @a[gamemode=adventure,dx=3,dy=3,dz=3] lobbyelevatortime 1
