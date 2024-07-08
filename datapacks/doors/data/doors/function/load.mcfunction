#First Message
tellraw @a [{"text":"DOORS","bold":true},{"text":" built-in datapack has loaded correctly!"}]
#Set-Up world spawn for new players
setworldspawn 34 63 -50

        
        # Scoreboards

scoreboard objectives add ambience dummy
scoreboard objectives add ambience_random dummy
scoreboard objectives add crucifixed dummy
scoreboard objectives add guiding_light_id dummy
scoreboard objectives add guiding_light_message dummy
scoreboard objectives add joined minecraft.custom:minecraft.leave_game
scoreboard objectives add playerminimumdoor dummy
scoreboard objectives add playerminimumroomsdoor dummy
scoreboard objectives add max_door_reached dummy
scoreboard objectives add max_rooms_door_reached dummy
scoreboard objectives add return dummy
scoreboard objectives add knobs dummy
scoreboard objectives add revive trigger
scoreboard objectives add lighter_use dummy
scoreboard objectives add flashlight_use dummy
scoreboard objectives add candle_use dummy
        # Teams
team add players
team modify players collisionRule never

summon minecraft:item_display 18.50 64.50 -60.40 {Tags: ["lobby_camera"]}
summon marker 28.5 63 14.5 {Tags:["seekdamagesource"],CustomName:'{"text":"Seek","bold":true}'}
