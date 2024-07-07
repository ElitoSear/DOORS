scoreboard players operation max_score playercurrentdoor > @a[gamemode=adventure] playercurrentdoor
scoreboard players operation @a[gamemode=adventure] max_door_reached > @a[gamemode=adventure] playercurrentdoor

scoreboard players set max_score playermaxdoor -2147483647
scoreboard players operation max_score playermaxdoor > @a[gamemode=adventure] playercurrentdoor

scoreboard players set min_score playerminimumdoor 2147483647
scoreboard players operation min_score playerminimumdoor < @a[gamemode=adventure] playercurrentdoor

scoreboard players operation max_score playercurrentroomsdoor > @a[gamemode=adventure,tag=atrooms] playercurrentroomsdoor
scoreboard players operation @a[gamemode=adventure,tag=atrooms] max_rooms_door_reached > @a[gamemode=adventure,tag=atrooms] playercurrentroomsdoor

scoreboard players set max_score playermaxroomsdoor -2147483647
scoreboard players operation max_score playermaxroomsdoor > @a[gamemode=adventure,tag=atrooms] playercurrentroomsdoor

scoreboard players set min_score playerminimumroomsdoor 2147483647
scoreboard players operation min_score playerminimumroomsdoor < @a[gamemode=adventure,tag=atrooms] playercurrentroomsdoor