execute if score LockOptions tc.value matches 1 run scoreboard players set @s[scores={TreeCapitator=100..1101}] TreeCapitator 1

execute if score @s TreeCapitator matches 1 run function treecapitator:options

execute if score @s TreeCapitator matches 100 run function treecapitator:z_options/enable/diamond_axe
execute if score @s TreeCapitator matches 101 run function treecapitator:z_options/disable/diamond_axe

execute if score @s TreeCapitator matches 200 run function treecapitator:z_options/enable/golden_axe
execute if score @s TreeCapitator matches 201 run function treecapitator:z_options/disable/golden_axe

execute if score @s TreeCapitator matches 300 run function treecapitator:z_options/enable/iron_axe
execute if score @s TreeCapitator matches 301 run function treecapitator:z_options/disable/iron_axe

execute if score @s TreeCapitator matches 400 run function treecapitator:z_options/enable/stone_axe
execute if score @s TreeCapitator matches 401 run function treecapitator:z_options/disable/stone_axe

execute if score @s TreeCapitator matches 500 run function treecapitator:z_options/enable/wooden_axe
execute if score @s TreeCapitator matches 501 run function treecapitator:z_options/disable/wooden_axe

execute if score @s TreeCapitator matches 600 run function treecapitator:z_options/enable/leaves
execute if score @s TreeCapitator matches 601 run function treecapitator:z_options/disable/leaves

execute if score @s TreeCapitator matches 700 run function treecapitator:z_options/enable/sneaking
execute if score @s TreeCapitator matches 701 run function treecapitator:z_options/disable/sneaking

execute if score @s TreeCapitator matches 800 run function treecapitator:z_options/lock/confirm

execute if score @s TreeCapitator matches 900 run function treecapitator:z_options/lock/lock
execute if score @s TreeCapitator matches 901 run function treecapitator:z_options/lock/back

execute if score @s TreeCapitator matches 1000 run function treecapitator:z_options/enable/standing
execute if score @s TreeCapitator matches 1001 run function treecapitator:z_options/disable/standing

execute if score @s TreeCapitator matches 1100 run function treecapitator:z_options/enable/lootbreak
execute if score @s TreeCapitator matches 1101 run function treecapitator:z_options/disable/lootbreak

execute if score @s TreeCapitator matches 1200 run function treecapitator:z_options/enable/treecapitator
execute if score @s TreeCapitator matches 1201 run function treecapitator:z_options/disable/treecapitator

scoreboard players set @s TreeCapitator 0