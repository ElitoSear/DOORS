execute at @s run execute as @a[gamemode=!spectator,distance=..0.65] unless entity @s[nbt={RootVehicle:{Entity:{Tags:["wardrobe"]}}}] run playsound custom:misc.wardrobe_close master @s ~ ~ ~ 0.6
execute at @s run execute as @a[gamemode=!spectator,distance=..0.65] unless entity @s[nbt={RootVehicle:{Entity:{Tags:["wardrobe"]}}}] run tp @s ^ ^0.1 ^1.5