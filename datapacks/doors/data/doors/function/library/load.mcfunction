execute store result score slot1 slotnumber run random value 0..9
execute store result score slot2 slotnumber run random value 0..9
execute store result score slot3 slotnumber run random value 0..9
execute store result score slot4 slotnumber run random value 0..9
execute store result score slot5 slotnumber run random value 0..9
execute as @e[tag=itemforsale,sort=random,tag=!crucifixforsale,tag=!lockpickforsale,tag=!vitaminsforsale,limit=1] run tag @s add skeletonkeyforsale
execute as @e[tag=itemforsale,sort=random,tag=!skeletonkeyforsale,tag=!lockpickforsale,tag=!vitaminsforsale,limit=1] run tag @s add crucifixforsale
execute as @e[tag=itemforsale,sort=random,tag=!skeletonkeyforsale,tag=!lockpickforsale,tag=!crucifixforsale,limit=1] run tag @s add vitaminsforsale
execute as @e[tag=itemforsale,sort=random,tag=!skeletonkeyforsale,tag=!vitaminsforsale,tag=!crucifixforsale,limit=1] run tag @s add lockpickforsale
execute as @e[tag=solutionpaper] run item replace entity @s armor.head from entity @e[tag=solutionpaperpick,limit=1,sort=random] armor.head
execute as @e[tag=hiddenbook,sort=random,limit=1,tag=!book1,tag=!book2,tag=!book3,tag=!book4,tag=!book5] run tag @s add book1
execute as @e[tag=hiddenbook,sort=random,limit=1,tag=!book1,tag=!book2,tag=!book3,tag=!book4,tag=!book5] run tag @s add book2
execute as @e[tag=hiddenbook,sort=random,limit=1,tag=!book1,tag=!book2,tag=!book3,tag=!book4,tag=!book5] run tag @s add book3
execute as @e[tag=hiddenbook,sort=random,limit=1,tag=!book1,tag=!book2,tag=!book3,tag=!book4,tag=!book5] run tag @s add book4
execute as @e[tag=hiddenbook,sort=random,limit=1,tag=!book1,tag=!book2,tag=!book3,tag=!book4,tag=!book5] run tag @s add book5
tag @e[tag=book1] add glints
tag @e[tag=book2] add glints
tag @e[tag=book3] add glints
tag @e[tag=book4] add glints
tag @e[tag=book5] add glints