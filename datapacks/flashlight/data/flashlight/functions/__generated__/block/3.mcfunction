fill ~.5 ~.5 ~.5 ~-.5 ~-.5 ~-.5 light[level=13] replace #flashlight:flashlight_through_blocks
execute if entity @e[type=marker,tag=flashlight,distance=1.1..] run scoreboard players add @s flashlighttimer 1
execute as @s[scores={flashlighttimer=5..}] run function flashlight:__generated__/block/4