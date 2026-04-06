# ClickLib — Tick
# Enable: players holding the click item but not yet active
execute as @a[tag=!clicklib.active] if items entity @s weapon.mainhand *[custom_data~{clicklib:{click_item:true}}] run function clicklib:enable

# Disable: active players who no longer hold the click item
execute as @a[tag=clicklib.active] unless items entity @s weapon.mainhand *[custom_data~{clicklib:{click_item:true}}] run function clicklib:disable

# Update probe position for all active players
execute as @a[tag=clicklib.active] at @s rotated as @s run tp @e[type=minecraft:interaction,tag=clicklib.left_probe,distance=..3,limit=1,sort=nearest] ^ ^1.2 ^0.8

# Hook: fires every tick for each active player (as player)
execute as @a[tag=clicklib.active] run function #clicklib:tick_active
