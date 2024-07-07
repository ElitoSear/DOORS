        #Killing Players
execute if entity @s[y_rotation=135..-135] at @s unless entity @s[scores={stop=1..}] align xyz positioned ^7 ^ ^-1 run execute as @a[tag=atrooms,dy=3,dx=15,dz=-5,scores={Hiding=0}] run damage @s 20 mob_attack by @e[tag=a60,limit=1]
execute if entity @s[y_rotation=45..134] at @s unless entity @s[scores={stop=1..}] align xyz positioned ^-7 ^ ^-1 run execute as @a[tag=atrooms,dy=3,dx=-5,dz=15,scores={Hiding=0}] run damage @s 20 mob_attack by @e[tag=a60,limit=1]
execute if entity @s[y_rotation=-45..44] at @s unless entity @s[scores={stop=1..}] align xyz positioned ^-7 ^ ^-1 run execute as @a[tag=atrooms,dy=3,dx=15,dz=5,scores={Hiding=0}] run damage @s 20 mob_attack by @e[tag=a60,limit=1]
execute if entity @s[y_rotation=-134..-46] at @s unless entity @s[scores={stop=1..}] align xyz positioned ^7 ^ ^-1 run execute as @a[tag=atrooms,dy=3,dx=5,dz=15,scores={Hiding=0}] run damage @s 20 mob_attack by @e[tag=a60,limit=1]
        #Checking his step
execute at @s run tag @e[tag=roomsentitypath,distance=..1.5] add a60checked
        #Killing itself
execute if entity @s[tag=stop] run stopsound @a * custom:entity.a60.arrival
execute if entity @s[tag=stop] run scoreboard players reset @e[scores={a60=1..}] a60
execute if entity @s[tag=stop] run kill @s
        #Displaying Particles
execute at @s if entity @s[y_rotation=46..134] run particle dust 0.9 0 0 3 ^ ^1.7 ^-0.2 0 0.5 0.5 1 15 normal
execute at @s if entity @s[y_rotation=-135..-46] run particle dust 0.9 0 0 3 ^ ^1.7 ^-0.2 0 0.5 0.5 1 15 normal
execute at @s if entity @s[y_rotation=-45..45] run particle dust 0.9 0 0 3 ^ ^1.7 ^-0.2 0.5 0.5 0 1 15 normal
execute at @s if entity @s[y_rotation=135..-136] run particle dust 0.9 0 0 3 ^ ^1.7 ^-0.2 0.5 0.5 0 1 15 normal