execute on target unless entity @s[predicate=doors:is_holding_electrical_key_or_lockpick] at @s run function doors:lock/need_key
execute on target if entity @s[predicate=doors:is_holding_electrical_key_or_lockpick] as @e[tag=electricalroomdoor,limit=1,sort=nearest] run function doors:electrical_room_door/unlock