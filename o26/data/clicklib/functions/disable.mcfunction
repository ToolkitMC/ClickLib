# ClickLib — Disable (run as player)
tag @s remove clicklib.active
execute at @s run kill @e[type=minecraft:interaction,tag=clicklib.left_probe,distance=..3,limit=1,sort=nearest]

# Revoke any pending advancement triggers to prevent ghost fires on re-enable
advancement revoke @s only clicklib:left_click_entity
advancement revoke @s only clicklib:right_click_entity
advancement revoke @s only clicklib:right_click_block

# Hook: fires for implementors on deactivation
function #clicklib:on_disable
