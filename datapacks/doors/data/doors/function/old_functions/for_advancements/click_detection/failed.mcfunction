scoreboard players add @a[distance=..1] wardrobewarning 1
playsound doors:misc.heart_minigame_fail master @a[distance=..1]
scoreboard players add @s failedtoclick 1
advancement revoke @a[distance=..1] only doors:click_detection/left
advancement revoke @a[distance=..1] only doors:click_detection/right
