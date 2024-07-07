execute if score @s breakerpuzzle matches 2 run scoreboard players set @a[gamemode=adventure] expert_technician 1200

execute if score @s breakerpuzzle matches 2 run scoreboard players set @e[tag=stage1number] breakernumber 0
execute if score @s breakerpuzzle matches 2 run scoreboard players set @e[tag=stage2number] breakernumber 0
execute if score @s breakerpuzzle matches 2 run scoreboard players set @e[tag=stage3number] breakernumber 0

execute if score @s breakerpuzzle matches 2 run scoreboard players set @e[type=marker,tag=stage1number,scores={breakernumber=0},limit=1,sort=random] breakernumber 1
execute if score @s breakerpuzzle matches 3 run scoreboard players set @e[type=marker,tag=stage1number,scores={breakernumber=0},limit=1,sort=random] breakernumber 2
execute if score @s breakerpuzzle matches 4 run scoreboard players set @e[type=marker,tag=stage1number,scores={breakernumber=0},limit=1,sort=random] breakernumber 3
execute if score @s breakerpuzzle matches 5 run scoreboard players set @e[type=marker,tag=stage1number,scores={breakernumber=0},limit=1,sort=random] breakernumber 4
execute if score @s breakerpuzzle matches 6 run scoreboard players set @e[type=marker,tag=stage1number,scores={breakernumber=0},limit=1,sort=random] breakernumber 5
execute if score @s breakerpuzzle matches 7 run scoreboard players set @e[type=marker,tag=stage1number,scores={breakernumber=0},limit=1,sort=random] breakernumber 6
execute if score @s breakerpuzzle matches 8 run scoreboard players set @e[type=marker,tag=stage1number,scores={breakernumber=0},limit=1,sort=random] breakernumber 7
execute if score @s breakerpuzzle matches 9 run scoreboard players set @e[type=marker,tag=stage1number,scores={breakernumber=0},limit=1,sort=random] breakernumber 8
execute if score @s breakerpuzzle matches 10 run scoreboard players set @e[type=marker,tag=stage1number,scores={breakernumber=0},limit=1,sort=random] breakernumber 9
execute if score @s breakerpuzzle matches 11 run scoreboard players set @e[type=marker,tag=stage1number,scores={breakernumber=0},limit=1,sort=random] breakernumber 10

execute if score @s breakerpuzzle matches 2 run scoreboard players set @e[type=marker,tag=stage2number,scores={breakernumber=0},limit=1,sort=random] breakernumber 1
execute if score @s breakerpuzzle matches 3 run scoreboard players set @e[type=marker,tag=stage2number,scores={breakernumber=0},limit=1,sort=random] breakernumber 2
execute if score @s breakerpuzzle matches 4 run scoreboard players set @e[type=marker,tag=stage2number,scores={breakernumber=0},limit=1,sort=random] breakernumber 3
execute if score @s breakerpuzzle matches 5 run scoreboard players set @e[type=marker,tag=stage2number,scores={breakernumber=0},limit=1,sort=random] breakernumber 4
execute if score @s breakerpuzzle matches 6 run scoreboard players set @e[type=marker,tag=stage2number,scores={breakernumber=0},limit=1,sort=random] breakernumber 5
execute if score @s breakerpuzzle matches 7 run scoreboard players set @e[type=marker,tag=stage2number,scores={breakernumber=0},limit=1,sort=random] breakernumber 6
execute if score @s breakerpuzzle matches 8 run scoreboard players set @e[type=marker,tag=stage2number,scores={breakernumber=0},limit=1,sort=random] breakernumber 7
execute if score @s breakerpuzzle matches 9 run scoreboard players set @e[type=marker,tag=stage2number,scores={breakernumber=0},limit=1,sort=random] breakernumber 8
execute if score @s breakerpuzzle matches 10 run scoreboard players set @e[type=marker,tag=stage2number,scores={breakernumber=0},limit=1,sort=random] breakernumber 9
execute if score @s breakerpuzzle matches 11 run scoreboard players set @e[type=marker,tag=stage2number,scores={breakernumber=0},limit=1,sort=random] breakernumber 10

execute if score @s breakerpuzzle matches 2 run scoreboard players set @e[type=marker,tag=stage3number,scores={breakernumber=0},limit=1,sort=random] breakernumber 1
execute if score @s breakerpuzzle matches 3 run scoreboard players set @e[type=marker,tag=stage3number,scores={breakernumber=0},limit=1,sort=random] breakernumber 2
execute if score @s breakerpuzzle matches 4 run scoreboard players set @e[type=marker,tag=stage3number,scores={breakernumber=0},limit=1,sort=random] breakernumber 3
execute if score @s breakerpuzzle matches 5 run scoreboard players set @e[type=marker,tag=stage3number,scores={breakernumber=0},limit=1,sort=random] breakernumber 4
execute if score @s breakerpuzzle matches 6 run scoreboard players set @e[type=marker,tag=stage3number,scores={breakernumber=0},limit=1,sort=random] breakernumber 5
execute if score @s breakerpuzzle matches 7 run scoreboard players set @e[type=marker,tag=stage3number,scores={breakernumber=0},limit=1,sort=random] breakernumber 6
execute if score @s breakerpuzzle matches 8 run scoreboard players set @e[type=marker,tag=stage3number,scores={breakernumber=0},limit=1,sort=random] breakernumber 7
execute if score @s breakerpuzzle matches 9 run scoreboard players set @e[type=marker,tag=stage3number,scores={breakernumber=0},limit=1,sort=random] breakernumber 8
execute if score @s breakerpuzzle matches 10 run scoreboard players set @e[type=marker,tag=stage3number,scores={breakernumber=0},limit=1,sort=random] breakernumber 9
execute if score @s breakerpuzzle matches 11 run scoreboard players set @e[type=marker,tag=stage3number,scores={breakernumber=0},limit=1,sort=random] breakernumber 10

execute if score @s breakerpuzzle matches 12 run function doors:breaker/assign_state_values

execute if entity @s[scores={breakerpuzzle=52}] run scoreboard players reset progresslevel breakerprogress
execute if entity @s[scores={breakerpuzzle=80}] as @e[tag=stage1number1] run function doors:shownumberandstate
execute if entity @s[scores={breakerpuzzle=100}] as @e[tag=stage1number2] run function doors:shownumberandstate
execute if entity @s[scores={breakerpuzzle=120}] as @e[tag=stage1number3] run function doors:shownumberandstate
execute if entity @s[scores={breakerpuzzle=140}] as @e[tag=stage1number4] run function doors:shownumberandstate
execute if entity @s[scores={breakerpuzzle=160}] as @e[tag=stage1number5] run function doors:shownumberandstate
execute if entity @s[scores={breakerpuzzle=180}] as @e[tag=stage1number6] run function doors:shownumberandstate
execute if entity @s[scores={breakerpuzzle=200}] as @e[tag=stage1number7] run function doors:shownumberandstate
execute if entity @s[scores={breakerpuzzle=220}] as @e[tag=stage1number8] run function doors:shownumberandstate
execute if entity @s[scores={breakerpuzzle=240}] as @e[tag=stage1number9] run function doors:shownumberandstate
execute if entity @s[scores={breakerpuzzle=260}] as @e[tag=stage1number10] run function doors:shownumberandstate
execute if entity @s[scores={breakerpuzzle=320}] run function doors:stage1check
execute if entity @s[scores={breakerpuzzle=350}] run scoreboard players set @s breakerpuzzle 50

execute if entity @s[scores={breakerpuzzle=430}] at @e[tag=protectbreaker] run playsound custom:misc.switches_flick master @a ~ ~1 ~
execute if entity @s[scores={breakerpuzzle=430}] run tag @e[tag=powered] remove powered
execute if entity @s[scores={breakerpuzzle=430}] run data merge entity @e[tag=screenprogress,limit=1] {item:{id:"minecraft:iron_ingot",Count:1b,tag:{CustomModelData:21}}}
execute if entity @s[scores={breakerpuzzle=432}] run scoreboard players reset progresslevel breakerprogress
execute if entity @s[scores={breakerpuzzle=445}] as @e[tag=stage2number1] run function doors:shownumberandstate
execute if entity @s[scores={breakerpuzzle=460}] as @e[tag=stage2number2] run function doors:shownumberandstate
execute if entity @s[scores={breakerpuzzle=475}] as @e[tag=stage2number3] run function doors:shownumberandstate
execute if entity @s[scores={breakerpuzzle=490}] as @e[tag=stage2number4] run function doors:shownumberandstate
execute if entity @s[scores={breakerpuzzle=505}] as @e[tag=stage2number5] run function doors:shownumberandstate
execute if entity @s[scores={breakerpuzzle=520}] as @e[tag=stage2number6] run function doors:shownumberandstate
execute if entity @s[scores={breakerpuzzle=535}] as @e[tag=stage2number7] run function doors:shownumberandstate
execute if entity @s[scores={breakerpuzzle=550}] as @e[tag=stage2number8] run function doors:shownumberandstate
execute if entity @s[scores={breakerpuzzle=565}] as @e[tag=stage2number9] run function doors:shownumberandstate
execute if entity @s[scores={breakerpuzzle=580}] as @e[tag=stage2number10] run function doors:shownumberandstate
execute if entity @s[scores={breakerpuzzle=640}] run function doors:stage2check
execute if entity @s[scores={breakerpuzzle=670}] run scoreboard players set @s breakerpuzzle 431

execute if entity @s[scores={breakerpuzzle=730}] at @e[tag=protectbreaker] run playsound custom:misc.switches_flick master @a ~ ~1 ~
execute if entity @s[scores={breakerpuzzle=730}] run tag @e[tag=powered] remove powered
execute if entity @s[scores={breakerpuzzle=730}] run data merge entity @e[tag=screenprogress,limit=1] {item:{id:"minecraft:iron_ingot",Count:1b,tag:{CustomModelData:21}}}
execute if entity @s[scores={breakerpuzzle=732}] run scoreboard players reset progresslevel breakerprogress
execute if entity @s[scores={breakerpuzzle=740}] as @e[tag=stage3number1] run function doors:shownumberandstate
execute if entity @s[scores={breakerpuzzle=750}] as @e[tag=stage3number2] run function doors:shownumberandstate
execute if entity @s[scores={breakerpuzzle=760}] as @e[tag=stage3number3] run function doors:shownumberandstate
execute if entity @s[scores={breakerpuzzle=770}] as @e[tag=stage3number4] run function doors:shownumberandstate
execute if entity @s[scores={breakerpuzzle=780}] as @e[tag=stage3number5] run function doors:shownumberandstate
execute if entity @s[scores={breakerpuzzle=790}] as @e[tag=stage3number6] run function doors:shownumberandstate
execute if entity @s[scores={breakerpuzzle=800}] as @e[tag=stage3number7] run function doors:shownumberandstate
execute if entity @s[scores={breakerpuzzle=810}] as @e[tag=stage3number8] run function doors:shownumberandstate
execute if entity @s[scores={breakerpuzzle=820}] as @e[tag=stage3number9] run function doors:shownumberandstate
execute if entity @s[scores={breakerpuzzle=830}] as @e[tag=stage3number10] run function doors:shownumberandstate
execute if entity @s[scores={breakerpuzzle=890}] run function doors:stage3check
execute if entity @s[scores={breakerpuzzle=920}] run scoreboard players set @s breakerpuzzle 731

execute if entity @s[scores={breakerpuzzle=1029}] at @e[tag=protectbreaker] run playsound custom:misc.switches_flick master @a ~ ~1 ~
execute if entity @s[scores={breakerpuzzle=1029}] run tag @e[tag=powered] remove powered
execute if entity @s[scores={breakerpuzzle=1029}] run scoreboard players reset progresslevel breakerprogress
execute if entity @s[scores={breakerpuzzle=1029}] run data merge entity @e[tag=screenprogress,limit=1] {item:{id:"minecraft:iron_ingot",Count:1b,tag:{CustomModelData:21}}}
execute if entity @s[scores={breakerpuzzle=1029}] run data merge entity @e[tag=screennumber,limit=1] {item:{id:"minecraft:iron_ingot",Count:1b,tag:{CustomModelData:3}}}
execute if entity @s[scores={breakerpuzzle=1029}] run data merge entity @e[tag=screenstage,limit=1] {item:{id:"minecraft:iron_ingot",Count:1b,tag:{CustomModelData:17}}}
execute if entity @s[scores={breakerpuzzle=1029}] run data merge entity @e[tag=screenstate,limit=1] {item:{id:"minecraft:iron_ingot",Count:1b,tag:{CustomModelData:15}}}
execute if entity @s[scores={breakerpuzzle=1029}] run advancement grant @a[scores={expert_technician=1..},gamemode=adventure] only doors:achievements/achievement37
scoreboard players add @e[scores={breakerpuzzle=1..}] breakerpuzzle 1
scoreboard players remove @a[predicate=doors:expert_technician_timer_started] expert_technician 1