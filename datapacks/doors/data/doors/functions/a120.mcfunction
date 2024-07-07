execute as @e[tag=a120] run function doors:executables/a120execute
 
        #Entity Sound

execute unless entity @e[type=armor_stand,tag=a120] run stopsound @a[tag=atrooms] * custom:entity.a120.far
execute unless entity @e[type=armor_stand,tag=a120] run stopsound @a[tag=atrooms] * custom:entity.a120.near

execute unless entity @e[type=armor_stand,tag=a120] run scoreboard players reset @a[tag=atrooms] a120far
execute unless entity @e[type=armor_stand,tag=a120] run scoreboard players reset @a[tag=atrooms] a120near

execute if entity @e[type=text_display,tag=roomsdoor,scores={a120=1200..}] run kill @e[tag=a120]