
execute if entity @s[scores={turnaroundwarning=1}] at @s run title @s times 2t 6t 2t
execute if entity @s[scores={turnaroundwarning=1}] at @s run title @s title {"text":"\uE021"}
execute if entity @s[scores={turnaroundwarning=1}] at @s run playsound custom:entity.halt.turn_around master @s
scoreboard players add @s[scores={turnaroundwarning=1..11}] turnaroundwarning 1
scoreboard players reset @s[scores={turnaroundwarning=12}] turnaroundwarning

execute if entity @s[scores={damagedbyhalt=1}] at @s run title @s times 2t 6t 2t
execute if entity @s[scores={damagedbyhalt=1}] at @s run title @s title {"text":"\uE022"}
execute if entity @s[scores={damagedbyhalt=1}] at @s run playsound custom:entity.halt.damage master @s
execute if entity @s[scores={damagedbyhalt=1}] at @s run damage @s 12 mob_attack by @e[tag=halt,limit=1,sort=nearest]
scoreboard players add @s[scores={damagedbyhalt=1..11}] damagedbyhalt 1
scoreboard players reset @s[scores={damagedbyhalt=12}] damagedbyhalt