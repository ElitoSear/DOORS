        #Checking his step
execute at @s run tag @e[tag=entitypath,distance=..1.5] add rushchecked
        #Killing itself
execute if entity @s[tag=stop] run scoreboard players reset @e[scores={rush=1..}] rush
execute if entity @s[tag=stop] run execute as @a[scores={muerte=0}] unless score @s killedbyrush matches 1.. run advancement grant @s only doors:achievements/achievement8
execute if entity @s[tag=stop] run kill @s
        #Displaying Particles
execute at @s if entity @s[y_rotation=46..134] unless entity @s[scores={crucifixed=70..}] run particle dust 0 0 0 3 ^ ^1.7 ^-0.1 0 0.5 0.5 1 15 normal
execute at @s if entity @s[y_rotation=-135..-46] unless entity @s[scores={crucifixed=70..}] run particle dust 0 0 0 3 ^ ^1.7 ^-0.1 0 0.5 0.5 1 15 normal
execute at @s if entity @s[y_rotation=-45..45] unless entity @s[scores={crucifixed=70..}] run particle dust 0 0 0 3 ^ ^1.7 ^-0.1 0.5 0.5 0 1 15 normal
execute at @s if entity @s[y_rotation=135..-136] unless entity @s[scores={crucifixed=70..}] run particle dust 0 0 0 3 ^ ^1.7 ^-0.1 0.5 0.5 0 1 15 normal
        #Killing Players
execute if entity @s[y_rotation=135..-135] at @s unless entity @s[tag=stop] unless entity @s[scores={crucifixed=1..}] align xyz positioned ^7 ^ ^-1 run execute as @a[gamemode=adventure,dy=3,dx=15,dz=-5,scores={Hiding=0}] unless entity @s[scores={killedbyrush=1..}] run scoreboard players add @s killedbyrush 1
execute if entity @s[y_rotation=45..134] at @s unless entity @s[tag=stop] unless entity @s[scores={crucifixed=1..}] align xyz positioned ^-7 ^ ^-1 run execute as @a[gamemode=adventure,dy=3,dx=-5,dz=15,scores={Hiding=0}] unless entity @s[scores={killedbyrush=1..}] run scoreboard players add @s killedbyrush 1
execute if entity @s[y_rotation=-45..44] at @s unless entity @s[tag=stop] unless entity @s[scores={crucifixed=1..}] align xyz positioned ^-7 ^ ^-1 run execute as @a[gamemode=adventure,dy=3,dx=15,dz=5,scores={Hiding=0}] unless entity @s[scores={killedbyrush=1..}] run scoreboard players add @s killedbyrush 1
execute if entity @s[y_rotation=-134..-46] at @s unless entity @s[tag=stop] unless entity @s[scores={crucifixed=1..}] align xyz positioned ^7 ^ ^-1 run execute as @a[gamemode=adventure,dy=3,dx=5,dz=15,scores={Hiding=0}] unless entity @s[scores={killedbyrush=1..}] run scoreboard players add @s killedbyrush 1
        #Breaking Light Sources
execute at @s run fill ^12 ^ ^-1 ^-25 ^7 ^-1 air replace #doors:brokenbyrush