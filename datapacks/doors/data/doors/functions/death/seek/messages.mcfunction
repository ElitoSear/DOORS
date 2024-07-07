
execute if entity @s[tag=killed_by_seek_fallen_chandelier] run function doors:death/seek/fallen_chandelier
execute if entity @s[tag=killed_by_seek_hand] run function doors:death/seek/hand
execute if entity @s[tag=killed_by_seek_hallway,tag=!killed_by_seek_hand,tag=!killed_by_seek_fallen_chandelier] run function doors:death/seek/hallway
execute unless entity @s[tag=killed_by_seek_other_means] if score @s timeskilledbyseek matches 1 run function doors:death/seek/first_death
execute unless entity @s[tag=killed_by_seek_other_means] if score @s timeskilledbyseek matches 2 run function doors:death/seek/second_death
execute unless entity @s[tag=killed_by_seek_other_means] if score @s timeskilledbyseek matches 3.. run function doors:death/seek/third_death