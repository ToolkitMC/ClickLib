execute as @a if items entity @s weapon.mainhand *[custom_data={clicklib:{click_item:1b}}] run function clicklib:enable
execute as @a unless items entity @s weapon.mainhand *[custom_data={clicklib:{click_item:1b}}] run function clicklib:disable
execute as @a[tag=clicklib.active] at @s rotated as @s run tp @e[type=minecraft:interaction,tag=clicklib.left_probe,distance=..2,limit=1,sort=nearest] ^ ^1.2 ^0.8
