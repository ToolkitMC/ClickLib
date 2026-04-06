# Example usage of clicklib:query/is_active
execute if function clicklib:query/is_active run tellraw @s {"text":"[ClickLib] You are active.","color":"green"}
execute unless function clicklib:query/is_active run tellraw @s {"text":"[ClickLib] You are not active.","color":"red"}
