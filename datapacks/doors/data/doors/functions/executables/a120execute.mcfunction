        #Killing Players
execute if entity @s[y_rotation=135..-135] at @s unless score @s stop matches 1.. align xyz positioned ^7 ^ ^-1 run execute as @a[tag=atrooms,dy=3,dx=15,dz=-5,scores={Hiding=0}] run damage @s 20 mob_attack by @e[tag=a120,limit=1]
execute if entity @s[y_rotation=45..134] at @s unless score @s stop matches 1.. align xyz positioned ^-7 ^ ^-1 run execute as @a[tag=atrooms,dy=3,dx=-5,dz=15,scores={Hiding=0}] run damage @s 20 mob_attack by @e[tag=a120,limit=1]
execute if entity @s[y_rotation=-45..44] at @s unless score @s stop matches 1.. align xyz positioned ^-7 ^ ^-1 run execute as @a[tag=atrooms,dy=3,dx=15,dz=5,scores={Hiding=0}] run damage @s 20 mob_attack by @e[tag=a120,limit=1]
execute if entity @s[y_rotation=-134..-46] at @s unless score @s stop matches 1.. align xyz positioned ^7 ^ ^-1 run execute as @a[tag=atrooms,dy=3,dx=5,dz=15,scores={Hiding=0}] run damage @s 20 mob_attack by @e[tag=a120,limit=1]
        #Checking his step
execute at @s run tag @e[tag=roomsentitypath,distance=..1.5] add a120checked
#Killing Itself
execute if entity @s[tag=stop] run scoreboard players reset @e[scores={a120=1..}] a120
execute if entity @s[tag=stop] run kill @s