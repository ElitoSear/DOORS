tag @e[tag=automaticdoor,limit=1,sort=nearest,distance=..3] add closed

execute on target unless entity @s[predicate=doors:is_holding_key_or_lockpick] at @s run function doors:lock/need_key
execute on target if entity @s[predicate=doors:is_holding_key_or_lockpick] as @e[tag=lock,limit=1,sort=nearest] run function doors:lock/unlock