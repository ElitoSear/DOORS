
execute if entity @s[tag=killed_by_rush_kicked_out_by_hide] run function doors:death/rush/kicked_out_by_hide
execute if entity @s[tag=killed_by_rush_greenhouse] run function doors:death/rush/greenhouse
execute if entity @s[tag=killed_by_rush_trapped_by_snare] run function doors:death/rush/trapped_by_snare
execute unless entity @s[tag=killed_by_rush_other_means] if score @s timeskilledbyrush matches 1 run function doors:death/rush/first_death
execute unless entity @s[tag=killed_by_rush_other_means] if score @s timeskilledbyrush matches 2 run function doors:death/rush/second_death
execute unless entity @s[tag=killed_by_rush_other_means] if score @s timeskilledbyrush matches 3.. run function doors:death/rush/third_death