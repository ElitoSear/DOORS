execute as @e[tag=a60] run function doors:executables/a60execute

        #Entity Sound

execute unless entity @e[type=armor_stand,tag=a60] run stopsound @a[tag=atrooms] * custom:entity.a60.far
execute unless entity @e[type=armor_stand,tag=a60] run stopsound @a[tag=atrooms] * custom:entity.a60.near

execute unless entity @e[type=armor_stand,tag=a60] run scoreboard players reset @a[tag=atrooms] a60far
execute unless entity @e[type=armor_stand,tag=a60] run scoreboard players reset @a[tag=atrooms] a60near

execute if entity @e[type=text_display,tag=roomsdoor,scores={a60=1200..}] run kill @e[tag=a60]
