 #Turning around
execute if entity @s[tag=stop] at @s if entity @e[tag=ambushsummonpos,distance=..1] run tag @s remove stop

execute if entity @s[tag=!stop] at @s run tag @e[tag=entitypath,distance=..1] add ambushchecked
execute if entity @s[tag=stop] at @s run tag @e[tag=entitypath,distance=..1] remove ambushchecked
         #Displaying Particles
execute at @s if entity @s[y_rotation=46..134] unless entity @s[scores={crucifixed=70..}] run particle dust 0 0.502 0 3 ^ ^1.7 ^-0.1 0 0.5 0.5 1 15 normal
execute at @s if entity @s[y_rotation=-135..-46] unless entity @s[scores={crucifixed=70..}] run particle dust 0 0.502 0 3 ^ ^1.7 ^-0.1 0 0.5 0.5 1 15 normal
execute at @s if entity @s[y_rotation=-45..45] unless entity @s[scores={crucifixed=70..}] run particle dust 0 0.502 0 3 ^ ^1.7 ^-0.1 0.5 0.5 0 1 15 normal
execute at @s if entity @s[y_rotation=135..-136] unless entity @s[scores={crucifixed=70..}] run particle dust 0 0.502 0 3 ^ ^1.7 ^-0.1 0.5 0.5 0 1 15 normal
          #Killing Players
execute if entity @s[y_rotation=135..-135] at @s unless entity @s[scores={crucifixed=1..}] align xyz positioned ^7 ^ ^-1 run execute as @a[gamemode=adventure,dy=3,dx=15,dz=-5,scores={Hiding=0}] unless entity @s[scores={killedbyambush=1..}] run scoreboard players add @s killedbyambush 1
execute if entity @s[y_rotation=45..134] at @s unless entity @s[scores={crucifixed=1..}] align xyz positioned ^-7 ^ ^-1 run execute as @a[gamemode=adventure,dy=3,dx=-5,dz=15,scores={Hiding=0}] unless entity @s[scores={killedbyambush=1..}] run scoreboard players add @s killedbyambush 1
execute if entity @s[y_rotation=-45..44] at @s unless entity @s[scores={crucifixed=1..}] align xyz positioned ^-7 ^ ^-1 run execute as @a[gamemode=adventure,dy=3,dx=15,dz=5,scores={Hiding=0}] unless entity @s[scores={killedbyambush=1..}] run scoreboard players add @s killedbyambush 1
execute if entity @s[y_rotation=-134..-46] at @s unless entity @s[scores={crucifixed=1..}] align xyz positioned ^7 ^ ^-1 run execute as @a[gamemode=adventure,dy=3,dx=5,dz=15,scores={Hiding=0}] unless entity @s[scores={killedbyambush=1..}] run scoreboard players add @s killedbyambush 1
