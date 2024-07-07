data merge entity @e[tag=heartminigameright,limit=1,sort=nearest] {view_range:0.0f}
data merge entity @e[tag=heartminigameright,limit=1] {transformation:{translation:[0.5f,0f,0f]}}
execute unless entity @a[distance=..1,advancements={doors:click_detection/right=true}] at @s run function doors:for_advancements/click_detection/failed
advancement revoke @a[distance=..1] only doors:click_detection/right