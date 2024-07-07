execute if entity @s[tag=!sold,nbt={interaction:{}}] on target if entity @s[scores={gold=..499}] run title @s actionbar {"translate":"text.doors.not_enough_gold"}
execute if entity @s[tag=!sold,nbt={interaction:{}}] at @s on target if entity @s[scores={gold=..499}] run playsound custom:misc.click master @s

execute if entity @s[nbt={interaction:{}},tag=!sold] on target if entity @s[scores={gold=500..}] run give @s string{CustomModelData:94,display:{Name:'[{"translate":"item.doors.crucifix","italic":false}]'}}
execute if entity @s[nbt={interaction:{}},tag=!sold] on target if entity @s[scores={gold=500..}] run tag @s add boughtcrucifix
execute if entity @s[nbt={interaction:{}},tag=!sold] on target if entity @s[tag=boughtcrucifix] run scoreboard players remove @s gold 500
execute if entity @s[nbt={interaction:{}},tag=!sold] on target if entity @s[tag=boughtcrucifix] run advancement grant @s only doors:achievements/achievement6
execute if entity @s[nbt={interaction:{}},tag=!sold] at @s on target if entity @s[tag=boughtcrucifix] run playsound custom:misc.gold_decrease master @s
execute if entity @s[nbt={interaction:{}},tag=!sold] if entity @a[tag=boughtcrucifix] run tag @s add sold
execute if entity @s[tag=sold] run tag @a remove boughtcrucifix

execute if entity @s[nbt={interaction:{}}] run data remove entity @s interaction