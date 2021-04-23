#Enabled = 600
#Disabled = 601

execute if score BreakLeaves tc.value matches 0 run tellraw @s ["",{"text":"\u2716 ","color":"red"},{"text":"Break leaves","hoverEvent":{"action":"show_text","value":"Whether leaves should also be broken"}},{"text":"          "},{"text":"[Enable]","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger TreeCapitator set 600"}}]

execute if score BreakLeaves tc.value matches 1 run tellraw @s ["",{"text":"\u2714 ","color":"green"},{"text":"Break leaves","hoverEvent":{"action":"show_text","value":"Whether leaves should also be broken"}},{"text":"          "},{"text":"[Disable]","color":"red","clickEvent":{"action":"run_command","value":"/trigger TreeCapitator set 601"}}]