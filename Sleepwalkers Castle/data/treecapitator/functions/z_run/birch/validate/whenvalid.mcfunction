scoreboard players set Damage tc.value 0

#Set tc.value score of Durability
execute as @p[scores={tc.break_birch=1,tc.use_axe=1}] run function treecapitator:z_damage/setdurability

#Detect logs
function treecapitator:z_run/birch/detectlog

#tellraw @a [{"text":"Damage before calculation: "},{"score":{"name":"Damage","objective":"tc.value"}}]

#Edit damage if unbreaking enchantment
execute as @p[scores={tc.break_birch=1,tc.use_axe=1}] run function treecapitator:z_damage/calculate

#tellraw @a [{"text":"Damage after calculation: "},{"score":{"name":"Damage","objective":"tc.value"}}]
#tellraw @a [{"text":"Axe durability: "},{"score":{"name":"Durability","objective":"tc.value"}}]

#Cut tree
execute if score Durability tc.value >= Damage tc.value as @p[scores={tc.break_birch=1,tc.use_axe=1}] run function treecapitator:z_break/main