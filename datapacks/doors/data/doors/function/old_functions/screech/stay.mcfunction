execute if score @s screechtime matches 2..132 run tp @e[tag=screech,limit=1,sort=nearest,predicate=!doors:is_being_crucifixed] ~ ~ ~ facing ^ ^ ^-2
execute if score @s screechtime matches 2 run summon armor_stand ~ ~ ~ {Invisible:1,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"string",Count:1b,tag:{CustomModelData:53}}],HandItems:[{},{}],Tags:["screech"],DisabledSlots:4132880,Marker:1b,CustomName:'{"text":"Screech","bold":true}'}
execute if score @s screechtime matches 52 run playsound doors:entity.screech.psst master @s
execute if score @s screechtime matches 132 run item replace entity @e[tag=screech,limit=1,sort=nearest,predicate=!doors:is_being_crucifixed] armor.head with string{CustomModelData:54}
execute if score @s screechtime matches 132 unless predicate doors:is_holding_crucifix run function doors:screech/damage_player
execute if score @s screechtime matches 132 if predicate doors:is_holding_crucifix run function doors:crucifix/screech
execute if score @s screechtime matches 132 as @e[tag=screech,limit=1,sort=nearest,predicate=!doors:is_being_crucifixed] at @a[scores={screechtime=132},sort=nearest,limit=1] anchored eyes run tp @s ^ ^ ^1 facing ~ ~ ~


execute if score @s screechtime matches 200 as @e[tag=screech,limit=1,sort=nearest,predicate=!doors:is_being_crucifixed] at @a[scores={screechtime=200},sort=nearest,limit=1] anchored eyes run tp @s ^ ^ ^1 facing ~ ~ ~