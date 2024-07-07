
execute if entity @s[tag=killed_by_figure_after_door_51_is_open] run function doors:death/figure/after_door_51_is_open
execute if entity @s[tag=killed_by_figure_heart_minigame] run function doors:death/figure/heart_minigame
execute if entity @s[tag=killed_by_figure_pursuit] run function doors:death/figure/pursuit
execute unless entity @s[tag=killed_by_figure_other_means] if score @s timeskilledbyfigure matches 1 run function doors:death/figure/first_death
execute unless entity @s[tag=killed_by_figure_other_means] if score @s timeskilledbyfigure matches 2 run function doors:death/figure/second_death
execute unless entity @s[tag=killed_by_figure_other_means] if score @s timeskilledbyfigure matches 3.. run function doors:death/figure/third_death