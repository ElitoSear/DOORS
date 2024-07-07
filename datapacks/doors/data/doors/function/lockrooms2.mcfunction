execute if entity @s[tag=unlocked] run data remove entity @s interaction
execute on target if entity @s[nbt={SelectedItem:{id:"minecraft:flint",tag:{CustomModelData:13}}}] run data merge entity @e[tag=lockrooms2display,sort=nearest,limit=1] {view_range:0}
execute on target if entity @s[nbt={SelectedItem:{id:"minecraft:flint",tag:{CustomModelData:13}}}] run playsound block.iron_trapdoor.close master @s
execute on target if entity @s[nbt={SelectedItem:{id:"minecraft:flint",tag:{CustomModelData:13}}}] run tag @e[tag=lockrooms2,sort=nearest,limit=1] add unlocked
execute on target if entity @s[nbt={SelectedItem:{id:"minecraft:flint",tag:{CustomModelData:13}}}] run clear @s flint{CustomModelData:13} 1
execute on target unless entity @s[tag=unlocked] unless entity @s[nbt={SelectedItem:{id:"minecraft:flint",tag:{CustomModelData:13}}}] run title @s actionbar {"text":"\uE011"}
execute on target unless entity @s[tag=unlocked] unless entity @s[nbt={SelectedItem:{id:"minecraft:flint",tag:{CustomModelData:13}}}] run playsound doors:misc.click master @s
execute on target unless entity @s[tag=unlocked] unless entity @s[nbt={SelectedItem:{id:"minecraft:flint",tag:{CustomModelData:13}}}] run data remove entity @e[tag=lockrooms2,sort=nearest,limit=1] interaction
data remove entity @s interaction