scoreboard players set Damage tc.random_min 0
scoreboard players set Damage tc.random_max 1
function treecapitator:z_damage/randomint

#If randomizer chose 1, add 1 extra durability loss
execute if score Damage tc.random matches 1 run scoreboard players add Damage tc.value 1