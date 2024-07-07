execute if entity @s[tag=riftedcrucifix] run give @s string{CustomModelData:94,display:{Name:'{"translate":"item.doors.crucifix","italic":false}'}}
execute if entity @s[tag=riftedcrucifix] run tag @s remove rifted
execute if entity @s[tag=riftedcrucifix] run tag @s remove riftedcrucifix

execute if entity @s[tag=riftedcandle] run give @s soul_torch{CustomModelData:3,display:{Name:'{"translate":"item.doors.candle","italic":false}'}}
execute if entity @s[tag=riftedcandle] run tag @s remove rifted
execute if entity @s[tag=riftedcandle] run tag @s remove riftedcandle

execute if entity @s[tag=riftedflashlight] run give @s warped_fungus_on_a_stick{CustomModelData:2,display:{Name:'{"translate":"item.doors.flashlight","italic":false}'}}
execute if entity @s[tag=riftedflashlight] run tag @s remove rifted
execute if entity @s[tag=riftedflashlight] run tag @s remove riftedflashlight

execute if entity @s[tag=riftedskeletonkey] run give @s string{CustomModelData:96,display:{Name:'{"translate":"item.doors.skeleton_key","italic":false}'}}
execute if entity @s[tag=riftedskeletonkey] run tag @s remove rifted
execute if entity @s[tag=riftedskeletonkey] run tag @s remove riftedskeletonkey

execute if entity @s[tag=riftedlighter] run give @s torch{CustomModelData:1,display:{Name:'{"translate":"item.doors.lighter","italic":false}'}}
execute if entity @s[tag=riftedlighter] run tag @s remove rifted
execute if entity @s[tag=riftedlighter] run tag @s remove riftedlighter

execute if entity @s[tag=riftedlockpick] run give @s flint{CustomModelData:13,display:{Name:'{"translate":"item.doors.lockpick","italic":false}'}}
execute if entity @s[tag=riftedlockpick] run tag @s remove rifted
execute if entity @s[tag=riftedlockpick] run tag @s remove riftedlockpick

execute if entity @s[tag=rifted2lockpick] run give @s flint{CustomModelData:13,display:{Name:'{"translate":"item.doors.lockpick","italic":false}'}} 2
execute if entity @s[tag=rifted2lockpick] run tag @s remove rifted
execute if entity @s[tag=rifted2lockpick] run tag @s remove rifted2lockpick

execute if entity @s[tag=rifted3lockpick] run give @s flint{CustomModelData:13,display:{Name:'{"translate":"item.doors.lockpick","italic":false}'}} 3
execute if entity @s[tag=rifted3lockpick] run tag @s remove rifted
execute if entity @s[tag=rifted3lockpick] run tag @s remove rifted3lockpick

execute if entity @s[tag=riftedvitamins] run give @s snowball{CustomModelData:1,display:{Name:'{"translate":"item.doors.vitamins","italic":false}'}}
execute if entity @s[tag=riftedvitamins] run tag @s remove rifted
execute if entity @s[tag=riftedvitamins] run tag @s remove riftedvitamins

execute if entity @s[tag=rifted2vitamins] run give @s snowball{CustomModelData:1,display:{Name:'{"translate":"item.doors.vitamins","italic":false}'}} 2
execute if entity @s[tag=rifted2vitamins] run tag @s remove rifted
execute if entity @s[tag=rifted2vitamins] run tag @s remove rifted2vitamins

execute if entity @s[tag=rifted3vitamins] run give @s snowball{CustomModelData:1,display:{Name:'{"translate":"item.doors.vitamins","italic":false}'}} 3
execute if entity @s[tag=rifted3vitamins] run tag @s remove rifted
execute if entity @s[tag=rifted3vitamins] run tag @s remove rifted3vitamins

execute if entity @s[tag=riftednvcs3000] run give @s soul_torch{CustomModelData:2,display:{Name:'{"text":"NVCS-3000","italic":false}'}}
execute if entity @s[tag=riftednvcs3000] run tag @s remove rifted
execute if entity @s[tag=riftednvcs3000] run tag @s remove riftednvcs3000

stopsound @s * doors:misc.rift