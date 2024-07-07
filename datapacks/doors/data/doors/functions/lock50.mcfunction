execute if score @e[tag=slot1,limit=1] slotnumber = slot1 slotnumber if score @e[tag=slot2,limit=1] slotnumber = slot2 slotnumber if score @e[tag=slot3,limit=1] slotnumber = slot3 slotnumber if score @e[tag=slot4,limit=1] slotnumber = slot4 slotnumber if score @e[tag=slot5,limit=1] slotnumber = slot5 slotnumber run function doors:unlocklibrary
execute if entity @e[tag=closed,distance=..6] run playsound custom:misc.click master @a
execute if entity @e[tag=closed,distance=..5] run scoreboard players set @e[tag=slot] slotnumber 0
execute run data remove entity @s interaction