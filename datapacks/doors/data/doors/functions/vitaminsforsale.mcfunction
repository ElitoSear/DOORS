

execute if entity @s[tag=!sold,nbt={interaction:{}}] on target if entity @s[scores={gold=..99}] run title @s actionbar {"translate":"text.doors.not_enough_gold"}
execute if entity @s[tag=!sold,nbt={interaction:{}}] at @s on target if entity @s[scores={gold=..99}] run playsound custom:misc.click master @s

execute if entity @s[nbt={interaction:{}},tag=!sold] on target if entity @s[scores={gold=100..}] run give @s snowball{CustomModelData:1,display:{Name:'[{"translate":"item.doors.vitamins","italic":false}]'}}
execute if entity @s[nbt={interaction:{}},tag=!sold] on target if entity @s[scores={gold=100..}] run tag @s add boughtvitamins
execute if entity @s[nbt={interaction:{}},tag=!sold] on target if entity @s[tag=boughtvitamins] run scoreboard players remove @s gold 100
execute if entity @s[nbt={interaction:{}},tag=!sold] on target if entity @s[tag=boughtvitamins] run advancement grant @s only doors:achievements/achievement6
execute if entity @s[nbt={interaction:{}},tag=!sold] at @s on target if entity @s[tag=boughtvitamins] run playsound custom:misc.gold_decrease master @s
execute if entity @s[nbt={interaction:{}},tag=!sold] if entity @a[tag=boughtvitamins] run tag @s add sold
execute if entity @s[tag=sold] run tag @a remove boughtvitamins

execute if entity @s[nbt={interaction:{}}] run data remove entity @s interaction