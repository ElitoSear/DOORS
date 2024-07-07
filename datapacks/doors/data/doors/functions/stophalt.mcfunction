stopsound @a * custom:entity.halt.ambience
stopsound @a * custom:entity.halt.whisper
stopsound @a * custom:entity.halt.whistlesf
stopsound @a * custom:entity.halt.whistlesdistorted
effect clear @a[tag=athalt] blindness
effect clear @a[tag=athalt] darkness
clear @a[tag=athalt] string{CustomModelData:36}
clear @a[tag=athalt] string{CustomModelData:37}
tag @a[tag=athalt] remove screechexemption
tag @a[tag=athalt] remove nooffhandwarning
tag @a[tag=athalt] remove athalt
kill @e[tag=halt,sort=nearest,limit=1]