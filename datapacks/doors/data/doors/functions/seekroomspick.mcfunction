execute if entity @e[tag=seekroom4] unless entity @e[tag=seekfinish] run tag @s add seekfinish
execute if entity @e[tag=seekroom3] unless entity @e[tag=seekroom4] run tag @s add seekroom4
execute if entity @e[tag=seekroom2] unless entity @e[tag=seekroom3] run tag @s add seekroom3
execute if entity @e[tag=seekroom1] unless entity @e[tag=seekroom2] run tag @s add seekroom2
execute if entity @e[tag=seekstart] unless entity @e[tag=seekroom1] run tag @s add seekroom1
execute if entity @e[tag=seekcrescendo3] unless entity @e[tag=seekstart] run tag @s add seekstart
execute if entity @e[tag=seekcrescendo2] unless entity @e[tag=seekcrescendo3] run tag @s add seekcrescendo3
execute if entity @e[tag=seekcrescendo1] unless entity @s[tag=seekcrescendo1] unless entity @e[tag=seekcrescendo2] run tag @s add seekcrescendo2