execute unless entity @s[tag=killed_by_ambush_kicked_out_by_hide] if score @s timeskilledbyambush matches 1 run function doors:death/ambush/first_death
execute unless entity @s[tag=killed_by_ambush_kicked_out_by_hide] if score @s timeskilledbyambush matches 2 run function doors:death/ambush/second_death
execute unless entity @s[tag=killed_by_ambush_kicked_out_by_hide] if score @s timeskilledbyambush matches 3.. run function doors:death/ambush/third_death

execute if entity @s[tag=killed_by_ambush_kicked_out_by_hide] if score @s timeskilledbyambushkickedoutbyhide matches 1 run function doors:death/ambush/first_time_kicked_out
execute if entity @s[tag=killed_by_ambush_kicked_out_by_hide] if score @s timeskilledbyambushkickedoutbyhide matches 2.. run function doors:death/ambush/second_time_kicked_out