tag @s[nbt={SelectedItem:{Count:1b}}] add riftedvitamins
tag @s[nbt={SelectedItem:{Count:2b}}] add rifted2vitamins
tag @s[nbt={SelectedItem:{Count:3b}}] add rifted3vitamins
tag @s add rifted
clear @s snowball{CustomModelData:1}
execute as @e[tag=rift,nbt={interaction:{}}] run data remove entity @s interaction