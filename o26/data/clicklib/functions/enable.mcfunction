# ClickLib — Enable (run as player)
tag @s add clicklib.active

# Summon probe if not already present for this player
execute at @s unless entity @e[type=minecraft:interaction,tag=clicklib.left_probe,distance=..3,limit=1] run summon minecraft:interaction ~ ~ ~ {Tags:["clicklib.left_probe"],width:0.6f,height:0.6f,NoGravity:1b,Invulnerable:1b}

# Hook: fires for implementors on activation
function #clicklib:on_enable
