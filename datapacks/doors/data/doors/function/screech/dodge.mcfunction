execute if score @s screechtime matches 200 at @s run playsound custom:entity.screech.dodge master @a
execute if score @s screechtime matches 200 run item replace entity @e[tag=screech,limit=1,sort=nearest,predicate=!doors:is_being_crucifixed] armor.head with string{CustomModelData:54}
execute if score @s screechtime matches 200 run advancement grant @s only doors:achievements/achievement16
execute if score @s screechtime matches 214 run kill @e[tag=screech,limit=1,sort=nearest,predicate=!doors:is_being_crucifixed]
tp @e[tag=screech,limit=1,sort=nearest,predicate=!doors:is_being_crucifixed] ~ ~ ~ facing entity @s
