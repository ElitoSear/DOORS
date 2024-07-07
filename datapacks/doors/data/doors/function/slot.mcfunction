execute if entity @s[nbt={interaction:{}}] run playsound doors:misc.giant_lock_flick master @a
execute if entity @s[nbt={interaction:{}}] run scoreboard players add @s slotnumber 1
execute if entity @s[nbt={interaction:{}}] run data remove entity @s interaction