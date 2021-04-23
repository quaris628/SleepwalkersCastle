#Set temp value equal to rest value of Damage / 3 (outcome either 0, 1, or 2)
scoreboard players operation Damage tc.temp = Damage tc.value
scoreboard players operation Damage tc.temp %= 3 tc.value

#Unbreaking 1 durability
scoreboard players operation Damage tc.value /= 3 tc.value

#Random addition
execute if score Damage tc.temp matches 1.. run function treecapitator:z_damage/unbreaking2/random