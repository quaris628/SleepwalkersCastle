#Enabled = 200
#Disabled = 201

execute if score GoldenAxe tc.value matches 0 run tellraw @s ["",{"text":"\u2716 ","color":"red"},{"text":"Golden axe","hoverEvent":{"action":"show_text","value":"Whether TreeCapitator works with golden axes"}},{"text":"     "},{"text":"[Enable]","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger TreeCapitator set 200"}}]

execute if score GoldenAxe tc.value matches 1 run tellraw @s ["",{"text":"\u2714 ","color":"green"},{"text":"Golden axe","hoverEvent":{"action":"show_text","value":"Whether TreeCapitator works with golden axes"}},{"text":"     "},{"text":"[Disable]","color":"red","clickEvent":{"action":"run_command","value":"/trigger TreeCapitator set 201"}}]