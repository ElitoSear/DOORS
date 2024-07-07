execute as @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:1}}},tag=!wait] run function flashlight:__generated__/block/1
execute as @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:2}}},tag=!wait] run function flashlight:__generated__/block/2
scoreboard players reset @s flashlight