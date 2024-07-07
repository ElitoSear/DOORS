tag @e[tag=hiddenelectricalkey,sort=random,limit=1] add electricalkey
tag @e[tag=electricalkey] add glintstag
item replace entity @e[tag=hiddenswitch,sort=random,limit=10] armor.head with iron_ingot{CustomModelData:32,display:{Name:'{"translate":"item.doors.switch","italic":false}'}}
tag @e[tag=hiddenswitch,nbt={ArmorItems:[{},{},{},{id:"minecraft:iron_ingot"}]}] add glints