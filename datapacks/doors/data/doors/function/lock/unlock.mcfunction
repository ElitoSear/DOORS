playsound block.iron_trapdoor.close master @a
data merge entity @e[tag=lockdisplay,limit=1,sort=nearest] {view_range:1f,transformation:{translation:[0f,-0.87f,0.7f],right_rotation:[0.7f,-0f,0f,0.7f]},interpolation_duration:8,start_interpolation:1}
execute on target if entity @s[nbt={SelectedItem:{id:"minecraft:flint",tag:{CustomModelData:13}}}] run clear @s minecraft:flint{CustomModelData:13} 1
execute on target if entity @s[nbt={SelectedItem:{id:"minecraft:string",tag:{CustomModelData:13}}}] run clear @s minecraft:string{CustomModelData:13}
tag @s remove locked
execute if entity @e[tag=dupe,distance=..1.5] run kill @s