# ClickLib — Query: is @s active?
# Returns 1 if active, 0 if not.
# Usage: execute if function clicklib:query/is_active run ...
execute if entity @s[tag=clicklib.active] run return 1
return 0
