scoreboard players set Damage tc.random_min 0
scoreboard players set Damage tc.random_max 3
function treecapitator:z_damage/randomint

#If randomizer chose under temp score (1, 2 or 3), add 1 extra durability loss
execute if score Damage tc.random < Damage tc.temp run scoreboard players add Damage tc.value 1