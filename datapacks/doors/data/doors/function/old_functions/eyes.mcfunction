execute if score @s crucifixed matches 1.. run scoreboard players reset @a eyesspawn
execute if score @s crucifixed matches 1.. run scoreboard players reset @a eyesdamagesound
execute at @s if entity @s[y_rotation=90] run particle dust_color_transition 0.25 0.13 0.44 1.5 0.54 0.32 0.85 ^ ^1.6 ^0.1 0 0.4 0.4 1 25 normal
execute at @s if entity @s[y_rotation=270] run particle dust_color_transition 0.25 0.13 0.44 1.5 0.54 0.32 0.85 ^ ^1.6 ^0.1 0 0.4 0.4 1 25 normal
execute at @s if entity @s[y_rotation=0] run particle dust_color_transition 0.25 0.13 0.44 1.5 0.54 0.32 0.85 ^ ^1.6 ^0.1 0.4 0.4 0 1 25 normal
execute at @s if entity @s[y_rotation=180] run particle dust_color_transition 0.25 0.13 0.44 1.5 0.54 0.32 0.85 ^ ^1.6 ^0.1 0.4 0.4 0 1 25 normal

execute at @s anchored eyes positioned ^ ^ ^ anchored feet rotated ~180 ~ run function doors:eyes/raycast_reset_player
execute at @s anchored eyes positioned ^ ^ ^ anchored feet run function doors:eyes/raycast_player