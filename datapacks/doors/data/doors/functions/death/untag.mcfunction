#Rush
tag @s remove killed_by_rush_other_means
tag @s remove killed_by_rush_greenhouse
tag @s remove killed_by_rush_kicked_out_by_hide
tag @s remove killed_by_rush_trapped_by_snare
tag @s remove killed_by_rush
#Hide
tag @s remove killed_by_hide
#Eyes
tag @s remove killed_by_eyes
#Screech
tag @s remove killed_by_screech
#Seek
tag @s remove killed_by_seek_other_means
tag @s remove killed_by_seek_hand
tag @s remove killed_by_seek_fallen_chandelier
tag @s remove killed_by_seek_hallway
tag @s remove killed_by_seek
#Halt
tag @s remove killed_by_halt
#Ambush
tag @s remove killed_by_ambush_kicked_out_by_hide
tag @s remove killed_by_ambush
#Figure
tag @s remove killed_by_figure_other_means
tag @s remove killed_by_figure_heart_minigame
tag @s remove killed_by_figure_after_door_51_is_open
tag @s remove killed_by_figure_pursuit
tag @s remove killed_by_figure
#Void
tag @s remove killed_by_void
#Dupe
tag @s remove killed_by_dupe
#A-60
tag @s remove killed_by_a_60
#A-90
tag @s remove killed_by_a_90
#A-120
tag @s remove killed_by_a_120
#Other
execute at @s run function doors:death/kill
stopsound @s * custom:music.guiding_light
stopsound @s * custom:music.guiding_light_end
stopsound @s * custom:music.curious_light
stopsound @s * custom:music.curious_light_end
scoreboard players reset @s guiding_light_message
gamemode spectator @s
tag @s add spectates