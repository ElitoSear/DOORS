execute if entity @s[tag=crucifixforsale,tag=!sold] at @s run data merge entity @e[tag=itemforsaledisplay,limit=1,sort=nearest] {item:{id:"minecraft:string",Count:1b,tag:{CustomModelData:104}}}
execute if entity @s[tag=lockpickforsale,tag=!sold] at @s run data merge entity @e[tag=itemforsaledisplay,limit=1,sort=nearest] {item:{id:"minecraft:string",Count:1b,tag:{CustomModelData:105}}}
execute if entity @s[tag=skeletonkeyforsale,tag=!sold] at @s run data merge entity @e[tag=itemforsaledisplay,limit=1,sort=nearest] {item:{id:"minecraft:string",Count:1b,tag:{CustomModelData:106}}}
execute if entity @s[tag=vitaminsforsale,tag=!sold] at @s run data merge entity @e[tag=itemforsaledisplay,limit=1,sort=nearest] {item:{id:"minecraft:string",Count:1b,tag:{CustomModelData:107}}}
execute if entity @s[tag=crucifixforsale,tag=!sold] run data merge entity @s {CustomName:'{"text":"500","bold":true,"color":"yellow"}'}
execute if entity @s[tag=lockpickforsale,tag=!sold] run data merge entity @s {CustomName:'{"text":"150","bold":true,"color":"yellow"}'}
execute if entity @s[tag=skeletonkeyforsale,tag=!sold] run data merge entity @s {CustomName:'{"text":"400","bold":true,"color":"yellow"}'}
execute if entity @s[tag=vitaminsforsale,tag=!sold] run data merge entity @s {CustomName:'{"text":"100","bold":true,"color":"yellow"}'}
execute at @s if entity @a[distance=..4] run data merge entity @s {CustomNameVisible:1}
execute at @s unless entity @a[distance=..4] run data merge entity @s {CustomNameVisible:0}
execute if entity @s[tag=sold] run data merge entity @s {CustomName:''}
execute if entity @s[tag=sold] if entity @s[nbt={interaction:{}}] run data remove entity @s interaction
execute if entity @s[tag=sold,tag=crucifixforsale] at @s run data merge entity @e[tag=itemforsaledisplay,limit=1,sort=nearest] {item:{id:"minecraft:string",Count:1b,tag:{CustomModelData:110}}}
execute if entity @s[tag=sold,tag=skeletonkeyforsale] at @s run data merge entity @e[tag=itemforsaledisplay,limit=1,sort=nearest] {item:{id:"minecraft:string",Count:1b,tag:{CustomModelData:111}}}
execute if entity @s[tag=sold,tag=lockpickforsale] at @s run data merge entity @e[tag=itemforsaledisplay,limit=1,sort=nearest] {item:{id:"minecraft:string",Count:1b,tag:{CustomModelData:112}}}
execute if entity @s[tag=sold,tag=vitaminsforsale] at @s run data merge entity @e[tag=itemforsaledisplay,limit=1,sort=nearest] {item:{id:"minecraft:string",Count:1b,tag:{CustomModelData:112}}}