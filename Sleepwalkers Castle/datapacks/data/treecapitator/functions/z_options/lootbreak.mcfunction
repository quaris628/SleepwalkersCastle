#Enabled = 1100
#Disabled = 1101

execute if score LootBreak tc.value matches 0 run tellraw @s ["",{"text":"\u2716 ","color":"red"},{"text":"[1.14] ","color":"dark_red"},{"text":"Silent leaves","hoverEvent":{"action":"show_text","value":"Whether leaves should be broken silently"}},{"text":"   "},{"text":"[Enable]","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger TreeCapitator set 1100"}}]

execute if score LootBreak tc.value matches 1 run tellraw @s ["",{"text":"\u2714 ","color":"green"},{"text":"[1.14] ","color":"dark_red"},{"text":"Silent leaves","hoverEvent":{"action":"show_text","value":"Whether leaves should be broken silently"}},{"text":"   "},{"text":"[Disable]","color":"red","clickEvent":{"action":"run_command","value":"/trigger TreeCapitator set 1101"}}]