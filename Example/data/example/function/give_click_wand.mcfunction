# Example: give the player a click wand item
give @s minecraft:stick[custom_data={clicklib:{click_item:true}},item_name='']

item modify entity @s weapon.mainhand {function:"minecraft:set_name",entity:"this",name:{text:"Click Wand",italic:0b,color:"aqua"},target:"item_name"}
