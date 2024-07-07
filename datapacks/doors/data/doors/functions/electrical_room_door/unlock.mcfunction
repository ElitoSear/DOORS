playsound block.iron_trapdoor.close master @a
tag @s remove closed
execute on target if entity @s[nbt={SelectedItem:{id:"minecraft:feather",tag:{CustomModelData:13}}}] run clear @s minecraft:feather{CustomModelData:13}
execute on target if entity @s[nbt={SelectedItem:{id:"minecraft:flint",tag:{CustomModelData:13}}}] run clear @s minecraft:flint{CustomModelData:13}