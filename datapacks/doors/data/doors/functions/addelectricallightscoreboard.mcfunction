scoreboard players add @e[tag=electricalroomlight,scores={electricallight=0},sort=random,limit=1] electricallight 1
execute if entity @e[tag=electricalroomlight,scores={electricallight=0}] run schedule function doors:addelectricallightscoreboard 200t