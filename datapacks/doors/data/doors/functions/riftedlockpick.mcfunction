tag @s[nbt={SelectedItem:{Count:1b}}] add riftedlockpick
tag @s[nbt={SelectedItem:{Count:2b}}] add rifted2lockpick
tag @s[nbt={SelectedItem:{Count:3b}}] add rifted3lockpick
tag @s add rifted
clear @s flint{CustomModelData:13}
execute as @e[tag=rift,nbt={interaction:{}}] run data remove entity @s interaction