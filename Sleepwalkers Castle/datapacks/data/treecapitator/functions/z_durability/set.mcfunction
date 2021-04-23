#Wooden axe = 59
#Stone axe = 131
#Iron axe = 250
#Golden axe = 31
#Diamond axe = 1561
execute store result score Durability tc.value run data get entity @s SelectedItem.tag.Damage -1

execute if entity @s[nbt={SelectedItem:{id:"minecraft:wooden_axe"}}] run scoreboard players set Durability tc.temp 59
execute if entity @s[nbt={SelectedItem:{id:"minecraft:stone_axe"}}] run scoreboard players set Durability tc.temp 131
execute if entity @s[nbt={SelectedItem:{id:"minecraft:iron_axe"}}] run scoreboard players set Durability tc.temp 250
execute if entity @s[nbt={SelectedItem:{id:"minecraft:golden_axe"}}] run scoreboard players set Durability tc.temp 31
execute if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_axe"}}] run scoreboard players set Durability tc.temp 1561
scoreboard players operation Durability tc.value += Durability tc.temp
scoreboard players reset Durability tc.temp