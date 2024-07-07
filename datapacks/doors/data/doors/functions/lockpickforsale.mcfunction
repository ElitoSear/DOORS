execute if entity @s[tag=!sold,nbt={interaction:{}}] on target if entity @s[scores={gold=..149}] run title @s actionbar {"translate":"text.doors.not_enough_gold"}
execute if entity @s[tag=!sold,nbt={interaction:{}}] at @s on target if entity @s[scores={gold=..149}] run playsound custom:misc.click master @s

execute if entity @s[nbt={interaction:{}},tag=!sold] on target if entity @s[scores={gold=150..}] run give @s flint{CustomModelData:13,display:{Name:'[{"translate":"item.doors.lockpick","italic":false}]'}}
execute if entity @s[nbt={interaction:{}},tag=!sold] on target if entity @s[scores={gold=150..}] run tag @s add boughtlockpick
execute if entity @s[nbt={interaction:{}},tag=!sold] on target if entity @a[tag=boughtlockpick] run scoreboard players remove @s gold 150
execute if entity @s[nbt={interaction:{}},tag=!sold] on target if entity @s[tag=boughtlockpick] run advancement grant @s only doors:achievements/achievement6
execute if entity @s[nbt={interaction:{}},tag=!sold] at @s on target if entity @s[tag=boughtlockpick] run playsound custom:misc.gold_decrease master @s
execute if entity @s[nbt={interaction:{}},tag=!sold] if entity @a[tag=boughtlockpick] run tag @s add sold
execute if entity @s[tag=sold] run tag @a remove boughtlockpick

execute if entity @s[nbt={interaction:{}}] run data remove entity @s interaction
