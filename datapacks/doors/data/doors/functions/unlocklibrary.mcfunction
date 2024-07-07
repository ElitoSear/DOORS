tag @e[tag=automaticdoorlibrary,distance=..5] remove closed
playsound custom:librarydoor master @a
data merge entity @e[tag=lock50display,limit=1] {item:{id:"minecraft:string",Count:1b,tag:{CustomModelData:33}}}
data remove entity @s interaction