execute as @e[tag=skeletonlockinfirmarydisplay] run data merge entity @s {view_range:1}
tag @e[tag=infirmarydoor] add closed

execute as @e[tag=skeletonlockroomsdisplay] run data merge entity @s {view_range:1}
tag @e[tag=a000] add closed

execute as @e[tag=lockrooms1display] run data merge entity @s {view_range:1}
tag @e[tag=lockrooms1] remove unlocked

execute as @e[tag=lockrooms2display] run data merge entity @s {view_range:1}
tag @e[tag=lockrooms2] remove unlocked

tag @e[tag=atrooms] remove atrooms