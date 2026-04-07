# ClickLib — Tick

# Enable: Initialize system for players holding the click item who are not yet active
execute as @a[tag=!clicklib.active,nbt={SelectedItem:{tag:{clicklib:{click_item:1b}}}}] run function clicklib:enable

# Disable: Terminate system for active players who are no longer holding the click item
execute as @a[tag=clicklib.active,nbt=!{SelectedItem:{tag:{clicklib:{click_item:1b}}}}] run function clicklib:disable

# Update probe position: Synchronize interaction entity position with the active player's view
execute as @a[tag=clicklib.active] at @s rotated as @s run tp @e[type=minecraft:interaction,tag=clicklib.left_probe,distance=..3,limit=1,sort=nearest] ^ ^1.2 ^0.8

# Hook: Executes every tick for all active players (API entry point)
execute as @a[tag=clicklib.active] run function #clicklib:tick_active