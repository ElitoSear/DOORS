execute store result score @s candle_use run data get entity @s SelectedItem.tag.use
execute unless score @s candle_use matches 0 run scoreboard players remove @s candle_use 1
loot replace entity @s weapon loot doors:item/candle
execute if score @s candle_use matches 0 run clear @s torch{CustomModelData:3}