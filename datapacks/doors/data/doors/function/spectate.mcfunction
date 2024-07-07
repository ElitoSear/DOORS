execute if entity @a[scores={muerte=0}] run spectate @a[gamemode=adventure,sort=nearest,limit=1]
execute unless entity @a[scores={muerte=0}] run spectate @e[type=item_display,tag=lobby_camera,limit=1]