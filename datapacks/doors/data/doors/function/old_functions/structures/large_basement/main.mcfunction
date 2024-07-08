#largebasement
#90
execute if entity @s[y_rotation=90] run function doors:structures/large_basement/90
#180
execute if entity @s[y_rotation=180] run function doors:structures/large_basement/180
#-90
execute if entity @s[y_rotation=-90] run function doors:structures/large_basement/-90
#0
execute if entity @s[y_rotation=0] run function doors:structures/large_basement/0

#Not rotated variable needed
execute if entity @s[scores={generating=13}] at @s positioned ^ ^-2 ^-12 run execute at @e[tag=lever,limit=1,sort=nearest] if entity @e[tag=correctlever,distance=..1] if block ~ ~ ~ lever[powered=true] run tag @s add leverpulled
execute if entity @s[tag=leverpulled] at @s run fill ^ ^-1 ^-18 ^ ^-2 ^-18 air
execute at @s align xyz positioned ^ ^-2 ^-25 if score @s doornumber = max_score playercurrentdoor run tag @e[tag=rushorambush,dx=1.0,dz=1.0] add stop
execute if entity @s[tag=destroy] at @s align xyz positioned ^-30 ^-7 ^-1 run fill ^ ^ ^ ^63 ^13 ^-25 air
execute if entity @s[tag=destroy] run kill @s