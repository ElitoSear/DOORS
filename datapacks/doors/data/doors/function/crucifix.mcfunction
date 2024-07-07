scoreboard players add @s crucifixing 1
execute if entity @s[scores={crucifixing=1}] at @s if entity @s[tag=failed] run playsound custom:item.crucifix_failed master @a ~ ~ ~ 2
execute if entity @s[scores={crucifixing=1}] at @s if entity @s[tag=!failed] run playsound custom:item.crucifix master @a ~ ~ ~ 2
execute if entity @s[scores={crucifixing=1}] at @s run tp @s ~ ~ ~ facing entity @a[sort=nearest,limit=1] feet
execute if entity @s[scores={crucifixing=1}] at @s run tp @s ~ ~ ~ ~ 0
execute if entity @s[scores={crucifixing=1}] at @s run fill ~ ~ ~ ~ ~ ~ light[level=15] replace air
execute if entity @s[scores={crucifixing=1}] at @s run data merge entity @s {transformation:{scale:[0.5f,0.5f,0.5f]}}
execute if entity @s[scores={crucifixing=1}] at @s run advancement grant @a[sort=nearest,limit=1] only doors:achievements/achievement19
execute if entity @s[scores={crucifixing=20..40}] at @s run tp @s ~ ~ ~ ~-18 ~
execute if entity @s[scores={crucifixing=41..56}] at @s run tp @s ~ ~ ~ ~-24 ~
execute if entity @s[scores={crucifixing=57..67}] at @s run tp @s ~ ~ ~ ~-36 ~
execute if entity @s[scores={crucifixing=68..73}] at @s run tp @s ~ ~ ~ ~-72 ~
execute if entity @s[scores={crucifixing=74..77}] at @s run tp @s ~ ~ ~ ~-120 ~
execute if entity @s[scores={crucifixing=78..81}] at @s run tp @s ~ ~ ~ ~-120 ~
execute if entity @s[scores={crucifixing=82..85}] at @s run tp @s ~ ~ ~ ~-120 ~
execute if entity @s[scores={crucifixing=80}] at @s if entity @s[tag=failed] run data merge entity @s {item:{id:"minecraft:torch",Count:1b,tag:{CustomModelData:3}}}
execute if entity @s[scores={crucifixing=86..89}] at @s run tp @s ~ ~ ~ ~-120 ~
execute if entity @s[scores={crucifixing=90..93}] at @s run tp @s ~ ~ ~ ~-120 ~
execute if entity @s[scores={crucifixing=94..99}] at @s run tp @s ~ ~ ~ ~-72 ~
execute if entity @s[scores={crucifixing=100..110}] at @s run tp @s ~ ~ ~ ~-36 ~
execute if entity @s[scores={crucifixing=111..126}] at @s run tp @s ~ ~ ~ ~-24 ~
execute if entity @s[scores={crucifixing=127..147}] at @s run tp @s ~ ~ ~ ~-18 ~
execute if entity @s[scores={crucifixing=147}] at @s run data merge entity @s {transformation:{scale:[0.65f,0.65f,0.65f]},start_interpolation:0,interpolation_duration:8}
execute if entity @s[scores={crucifixing=155}] at @s if entity @s[tag=failed] run particle dust 1 0.745 0.745 0.3 ~ ~ ~ 0.2 0.2 0.2 2 40 force @a
execute if entity @s[scores={crucifixing=155}] at @s if entity @s[tag=!failed] run particle dust 0.745 0.851 1 0.3 ~ ~ ~ 0.2 0.2 0.2 2 40 force @a
execute if entity @s[scores={crucifixing=155}] at @s run fill ~ ~ ~ ~ ~ ~ air replace light[level=15]
execute if entity @s[scores={crucifixing=155}] at @s run kill @s