#Enabled = 100
#Disabled = 101

execute if score DiamondAxe tc.value matches 0 run tellraw @s ["",{"text":"\u2716 ","color":"red"},{"text":"Diamond axe","hoverEvent":{"action":"show_text","value":"Whether TreeCapitator works with diamond axes"}},{"text":"    "},{"text":"[Enable]","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger TreeCapitator set 100"}}]

execute if score DiamondAxe tc.value matches 1 run tellraw @s ["",{"text":"\u2714 ","color":"green"},{"text":"Diamond axe","hoverEvent":{"action":"show_text","value":"Whether TreeCapitator works with diamond axes"}},{"text":"    "},{"text":"[Disable]","color":"red","clickEvent":{"action":"run_command","value":"/trigger TreeCapitator set 101"}}]