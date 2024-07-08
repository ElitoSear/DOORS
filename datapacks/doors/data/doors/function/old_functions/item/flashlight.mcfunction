execute store result score @s flashlight_use run data get entity @s SelectedItem.tag.use
execute unless score @s flashlight_use matches 0 run scoreboard players remove @s flashlight_use 1
loot replace entity @s weapon loot doors:item/flashlight
execute if score @s flashlight_use matches 0 run clear @s torch{CustomModelData:3}