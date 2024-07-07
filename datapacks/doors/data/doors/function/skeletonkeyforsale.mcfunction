execute if entity @s[tag=!sold,nbt={interaction:{}}] on target if entity @s[scores={gold=..399}] run title @s actionbar {"translate":"text.doors.not_enough_gold"}
execute if entity @s[tag=!sold,nbt={interaction:{}}] at @s on target if entity @s[scores={gold=..399}] run playsound custom:misc.click master @s

execute if entity @s[nbt={interaction:{}},tag=!sold] on target if entity @s[scores={gold=400..}] run give @s string{CustomModelData:96,display:{Name:'[{"translate":"item.doors.skeleton_key","italic":false}]'}}
execute if entity @s[nbt={interaction:{}},tag=!sold] on target if entity @s[scores={gold=400..}] run tag @s add boughtskeletonkey
execute if entity @s[nbt={interaction:{}},tag=!sold] on target if entity @s[tag=boughtskeletonkey] run scoreboard players remove @s gold 400
execute if entity @s[nbt={interaction:{}},tag=!sold] on target if entity @s[tag=boughtskeletonkey] run advancement grant @s only doors:achievements/achievement6
execute if entity @s[nbt={interaction:{}},tag=!sold] at @s on target if entity @s[tag=boughtskeletonkey] run playsound custom:misc.gold_decrease master @s
execute if entity @s[nbt={interaction:{}},tag=!sold] if entity @a[tag=boughtskeletonkey] run tag @s add sold
execute if entity @s[tag=sold] run tag @a remove boughtskeletonkey

execute if entity @s[nbt={interaction:{}}] run data remove entity @s interaction