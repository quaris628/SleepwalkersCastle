#Set temp value equal to rest value of Damage / 2 (outcome either 0 or 1)
scoreboard players operation Damage tc.temp = Damage tc.value
scoreboard players operation Damage tc.temp %= 2 tc.value

#Unbreaking 1 durability
scoreboard players operation Damage tc.value /= 2 tc.value

#Random addition
execute if score Damage tc.temp matches 1.. run function treecapitator:z_damage/unbreaking1/random