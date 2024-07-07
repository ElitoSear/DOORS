clear @a[distance=..1] sunflower
clear @a[distance=..1] string{CustomModelData:101}
clear @a[distance=..1] string{CustomModelData:102}
clear @a[distance=..1] string{CustomModelData:103}
execute as @a[distance=..1,tag=atlibrary] at @s run playsound custom:music.unhinged_end voice @s
execute as @a[distance=..1,tag=atlibrary] at @s run scoreboard players reset @s librarymusic
execute as @a[distance=..1,tag=atlibrary] at @s run stopsound @s * custom:music.unhinged
execute as @a[distance=..1,tag=atlibrary] at @s run advancement grant @s only doors:achievements/achievement28
execute as @a[distance=..1,tag=atlibrary] at @s run tag @s remove atfigure
execute as @a[distance=..1,tag=atlibrary] at @s run tag @s remove atlibrary
execute as @a[distance=..1,tag=!atlibrary] at @e[tag=door,scores={doornumber=51}] run tp @s ^0.01 ^-2 ^-3.201 facing ^0.01 ^-2 ^-4.201
execute as @a[distance=..1,tag=!atlibrary] at @e[tag=door,scores={doornumber=51}] run tp @s ^0.01 ^-2 ^-3.201 facing ^0.01 ^-2 ^-4.201