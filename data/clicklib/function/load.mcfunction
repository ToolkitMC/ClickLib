# ClickLib — Load
# Revoke all advancement states on reload to avoid ghost triggers
advancement revoke @a only clicklib:left_click_entity
advancement revoke @a only clicklib:right_click_entity
advancement revoke @a only clicklib:right_click_block

# Kill any orphaned probes from previous session
kill @e[type=minecraft:interaction,tag=clicklib.left_probe]
