execute run scoreboard players add @e[tag=rush,distance=..6] crucifixed 1
execute if entity @e[tag=rush,distance=..6] run execute align y run summon item_display ^ ^1.75 ^1 {Tags:["crucifix"],item:{id:"minecraft:torch",Count:1b,tag:{CustomModelData:2}}}
execute if entity @e[tag=rush,distance=..6] run advancement grant @s only doors:achievements/achievement20
execute if entity @e[tag=rush,distance=..6] run clear @s string{CustomModelData:94}
  #Ambush
execute run scoreboard players add @e[tag=ambush,distance=..6] crucifixed 1
execute if entity @e[tag=ambush,distance=..6] run execute align y run summon item_display ^ ^1.75 ^1 {Tags:["crucifix"],item:{id:"minecraft:torch",Count:1b,tag:{CustomModelData:2}}}
execute if entity @e[tag=ambush,distance=..6] run advancement grant @s only doors:achievements/achievement21
execute if entity @e[tag=ambush,distance=..6] run clear @s string{CustomModelData:94}
   #Halt
execute run scoreboard players add @e[tag=halt,distance=..7] crucifixed 1
execute if entity @e[tag=halt,distance=..7] run execute align y run summon item_display ^ ^1.75 ^1 {Tags:["crucifix"],item:{id:"minecraft:torch",Count:1b,tag:{CustomModelData:2}}}
execute if entity @e[tag=halt,distance=..7] run advancement grant @s only doors:achievements/achievement26
execute if entity @e[tag=halt,distance=..7] run clear @s string{CustomModelData:94}
  #Seek
execute unless entity @s[gamemode=spectator] run scoreboard players add @e[tag=seek,distance=..6] crucifixfailed 1
execute unless entity @s[gamemode=spectator] if entity @e[tag=seek,distance=..6] run execute align y run summon item_display ^ ^1.75 ^1 {Tags:["crucifix","failed"],item:{id:"minecraft:torch",Count:1b,tag:{CustomModelData:2}}}
execute unless entity @s[gamemode=spectator] if entity @e[tag=seek,distance=..6] run advancement grant @s only doors:achievements/achievement22
execute unless entity @s[gamemode=spectator] if entity @e[tag=seek,distance=..6] run clear @s string{CustomModelData:94}
  #Figure
execute unless entity @s[gamemode=spectator] run scoreboard players add @e[tag=figure,distance=..3] crucifixfailed 1
execute unless entity @s[gamemode=spectator] if entity @e[tag=figure,distance=..3] run execute align y run summon item_display ^ ^1.75 ^1 {Tags:["crucifix","failed"],item:{id:"minecraft:torch",Count:1b,tag:{CustomModelData:2}}}
execute unless entity @s[gamemode=spectator] if entity @e[tag=figure,distance=..3] run advancement grant @s only doors:achievements/achievement23
execute unless entity @s[gamemode=spectator] if entity @e[tag=figure,distance=..3] run clear @s string{CustomModelData:94}