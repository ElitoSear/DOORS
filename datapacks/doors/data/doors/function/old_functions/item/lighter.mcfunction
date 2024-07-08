execute store result score @s lighter_use run data get entity @s SelectedItem.tag.use
execute unless score @s lighter_use matches 0 run scoreboard players remove @s lighter_use 1
loot replace entity @s weapon loot doors:item/lighter
execute if score @s lighter_use matches 0 run clear @s torch{CustomModelData:1}