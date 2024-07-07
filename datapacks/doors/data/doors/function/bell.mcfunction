execute at @s if entity @s[nbt={interaction:{}}] run playsound doors:misc.bell master @a ~ ~ ~ 0.5
execute if entity @s[nbt={interaction:{}}] run data merge entity @e[tag=belldisplay,limit=1] {item:{id:"minecraft:string",Count:1b,tag:{CustomModelData:17}}}
execute at @s if entity @s[nbt={interaction:{}}] run schedule function doors:belldisplayreset 2t
execute if entity @s[nbt={interaction:{}}] run data remove entity @s interaction