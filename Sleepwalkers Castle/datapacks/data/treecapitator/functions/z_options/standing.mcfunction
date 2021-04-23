#Enabled = 1000
#Disabled = 1001
execute if score StandingEnabled tc.value matches 0 run tellraw @s ["",{"text":"\u2716 ","color":"red"},{"text":"Standing","hoverEvent":{"action":"show_text","value":"Whether TreeCapitator works when standing straight"}},{"text":"   "},{"text":"[Enable]","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger TreeCapitator set 1000"}}]

execute if score StandingEnabled tc.value matches 1 run tellraw @s ["",{"text":"\u2714 ","color":"green"},{"text":"Standing","hoverEvent":{"action":"show_text","value":"Whether TreeCapitator works when standing straight"}},{"text":"   "},{"text":"[Disable]","color":"red","clickEvent":{"action":"run_command","value":"/trigger TreeCapitator set 1001"}}]