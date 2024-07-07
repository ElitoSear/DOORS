execute if entity @s[y_rotation=0] run summon interaction ^-0.27 ^-0.5 ^ {response:1b,width:0.32f,Tags:["lock","locked"],height:0.55f}
execute if entity @s[y_rotation=90] run summon interaction ^-0.27 ^-0.5 ^ {response:1b,width:0.32f,Tags:["lock","locked"],height:0.55f,Rotation:[90f,0f]}
execute if entity @s[y_rotation=180] run summon interaction ^-0.27 ^-0.5 ^ {response:1b,width:0.32f,Tags:["lock","locked"],height:0.55f,Rotation:[180f,0f]}
execute if entity @s[y_rotation=-90] run summon interaction ^-0.27 ^-0.5 ^ {response:1b,width:0.32f,Tags:["lock","locked"],height:0.55f,Rotation:[-90f,0f]}

execute if entity @s[y_rotation=0] run summon item_display ^-0.25 ^ ^-0.05 {Tags:["lockdisplay"],item:{id:"minecraft:string",Count:1b,tag:{CustomModelData:14}}}
execute if entity @s[y_rotation=90] run summon item_display ^-0.25 ^ ^-0.05 {Tags:["lockdisplay"],item:{id:"minecraft:string",Count:1b,tag:{CustomModelData:14}},Rotation:[90f,0f]}
execute if entity @s[y_rotation=180] run summon item_display ^-0.25 ^ ^-0.05 {Tags:["lockdisplay"],item:{id:"minecraft:string",Count:1b,tag:{CustomModelData:14}},height:0.55f,Rotation:[180f,0f]}
execute if entity @s[y_rotation=-90] run summon item_display ^-0.25 ^ ^-0.05 {Tags:["lockdisplay"],item:{id:"minecraft:string",Count:1b,tag:{CustomModelData:14}},height:0.55f,Rotation:[-90f,0f]}

tag @e[type=interaction,tag=automaticdoor,limit=1,sort=nearest,distance=..2] add closed