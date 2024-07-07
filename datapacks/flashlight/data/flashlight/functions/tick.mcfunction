execute as @a[scores={flashlight=1..}] at @s run function flashlight:__generated__/block/0
tag @a[tag=wait] remove wait
execute as @a[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:1}}}] at @s positioned ^ ^1.5 ^.5 run function flashlight:ray_cast
execute as @e[type=marker,tag=flashlight] at @s run function flashlight:__generated__/block/3
execute as @a[nbt=!{SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:1}}}] run execute as @e[type=marker,tag=flashlight] at @s run function flashlight:__generated__/block/5