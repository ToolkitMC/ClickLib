# ClickLib enable
tag @s add clicklib.active
execute at @s unless entity @e[type=minecraft:interaction,tag=clicklib.left_probe,distance=..2,limit=1] run summon minecraft:interaction ~ ~ ~ {Tags:["clicklib.left_probe"],width:0.6f,height:0.6f,NoGravity:1b,Invulnerable:1b}
execute as @s at @s rotated as @s run tp @e[type=minecraft:interaction,tag=clicklib.left_probe,distance=..2,limit=1,sort=nearest] ^ ^1.2 ^0.8
