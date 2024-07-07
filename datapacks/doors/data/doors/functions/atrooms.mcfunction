execute as @e[type=armor_stand,tag=nvcs3000] unless entity @s[nbt={ArmorItems:[{},{},{},{id:"minecraft:soul_torch"}]}] run item replace entity @s armor.head with soul_torch{CustomModelData:2,display:{Name:'{"translate":"item.doors.nvcs_3000","italic":false}'}}

execute as @e[type=interaction,tag=optionalexit] run function doors:roomsoptionalexit

execute as @e[type=interaction,tag=roomsexit] run function doors:roomsexitinteraction

#A-60
function doors:a60

#A-90
function doors:a90

#A-120
function doors:a120