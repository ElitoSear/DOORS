#puzzle1
execute if entity @s[scores={fireplacetime=2}] at @s positioned ^ ^-1 ^-14.5 run execute as @a[distance=..35] at @s run playsound custom:misc.puzzle_success master @s
execute if entity @s[scores={fireplacetime=2}] at @s positioned ^ ^-1 ^-26 run execute as @e[tag=chimney,distance=..7] run data merge entity @s {transformation:{translation:[0f,-4.1f,0f]},start_interpolation:0,interpolation_duration:60}
execute if entity @s[scores={fireplacetime=2}] at @s align xyz positioned ^1 ^-2 ^-26 run fill ^ ^ ^ ^-2 ^4 ^-1 air replace barrier

#90
execute if entity @s[y_rotation=90] run function doors:structures/puzzle/1/90
#180
execute if entity @s[y_rotation=180] run function doors:structures/puzzle/1/180
#-90
execute if entity @s[y_rotation=-90] run function doors:structures/puzzle/1/-90
#0
execute if entity @s[y_rotation=0] run function doors:structures/puzzle/1/0


#Not rotated variable needed
execute at @s align xyz positioned ^ ^-2 ^-29 if score @s doornumber = max_score playercurrentdoor run tag @e[tag=rushorambush,dx=1.0,dz=1.0] add stop
execute if entity @s[tag=flickon] at @s align xyz positioned ^-7 ^-3 ^-1 run fill ^ ^ ^ ^15 ^8 ^-29 light[level=0] replace minecraft:wall_torch[facing=north]
execute if entity @s[tag=flickon] at @s align xyz positioned ^-7 ^-3 ^-1 run fill ^ ^ ^ ^15 ^8 ^-29 light[level=1] replace minecraft:wall_torch[facing=east]
execute if entity @s[tag=flickon] at @s align xyz positioned ^-7 ^-3 ^-1 run fill ^ ^ ^ ^15 ^8 ^-29 light[level=2] replace minecraft:wall_torch[facing=south]
execute if entity @s[tag=flickon] at @s align xyz positioned ^-7 ^-3 ^-1 run fill ^ ^ ^ ^15 ^8 ^-29 light[level=3] replace minecraft:wall_torch[facing=west]
execute if entity @s[tag=flickoff] at @s align xyz positioned ^-7 ^-3 ^-1 run fill ^ ^ ^ ^15 ^8 ^-29 minecraft:wall_torch[facing=north] replace light[level=0]
execute if entity @s[tag=flickoff] at @s align xyz positioned ^-7 ^-3 ^-1 run fill ^ ^ ^ ^15 ^8 ^-29 minecraft:wall_torch[facing=east] replace light[level=1]
execute if entity @s[tag=flickoff] at @s align xyz positioned ^-7 ^-3 ^-1 run fill ^ ^ ^ ^15 ^8 ^-29 minecraft:wall_torch[facing=south] replace light[level=2]
execute if entity @s[tag=flickoff] at @s align xyz positioned ^-7 ^-3 ^-1 run fill ^ ^ ^ ^15 ^8 ^-29 minecraft:wall_torch[facing=west] replace light[level=3]
execute if entity @s[tag=destroy] at @s align xyz positioned ^-7 ^-3 ^-1 run fill ^ ^ ^ ^15 ^8 ^-29 air
execute if entity @s[tag=destroy] run kill @s
#Room special

#Rain
execute if entity @s[scores={generating=10}] at @s align xyz positioned ^-7 ^-3 ^-1 run fillbiome ^ ^ ^ ^15 ^8 ^-29 plains