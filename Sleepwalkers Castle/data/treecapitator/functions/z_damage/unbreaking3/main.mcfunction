#Set temp value equal to rest value of Damage / 4 (outcome either 0, 1, 2, or 3)
scoreboard players operation Damage tc.temp = Damage tc.value
scoreboard players operation Damage tc.temp %= 4 tc.value

#Unbreaking 3 durability
scoreboard players operation Damage tc.value /= 4 tc.value

#Random addition
execute if score Damage tc.temp matches 1.. run function treecapitator:z_damage/unbreaking3/random