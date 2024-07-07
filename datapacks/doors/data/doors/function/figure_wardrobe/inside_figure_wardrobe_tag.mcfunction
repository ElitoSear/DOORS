execute unless entity @s[nbt={RootVehicle:{Entity:{Tags:["figurewardrobe"]}}}] run tag @s remove inside_figure_wardrobe
execute if entity @s[nbt={RootVehicle:{Entity:{Tags:["figurewardrobe"]}}}] run tag @s add inside_figure_wardrobe
execute if score @s wardrobewarning matches 1 unless entity @s[nbt={RootVehicle:{Entity:{Tags:["figurewardrobe"]}}}] run scoreboard players reset @s wardrobewarning