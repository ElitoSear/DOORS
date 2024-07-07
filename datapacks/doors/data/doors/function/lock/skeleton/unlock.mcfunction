data merge entity @e[tag=skeletonlockdisplay,sort=nearest,limit=1] {view_range:0}
playsound doors:misc.infirmary_room_open master @a
particle minecraft:dust 1 1 0 0.3 ~ ~ ~ 0.3 0.3 0.3 1 1000 normal
tag @e[tag=automaticdoor,sort=nearest,limit=1,distance=..3] remove closed
execute on target run clear @s minecraft:string{CustomModelData:96}
kill @s