#Enabled = 400
#Disabled = 401

execute if score StoneAxe tc.value matches 0 run tellraw @s ["",{"text":"\u2716 ","color":"red"},{"text":"Stone axe","hoverEvent":{"action":"show_text","value":"Whether TreeCapitator works with stone axes"}},{"text":"      "},{"text":"[Enable]","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger TreeCapitator set 400"}}]

execute if score StoneAxe tc.value matches 1 run tellraw @s ["",{"text":"\u2714 ","color":"green"},{"text":"Stone axe","hoverEvent":{"action":"show_text","value":"Whether TreeCapitator works with stone axes"}},{"text":"      "},{"text":"[Disable]","color":"red","clickEvent":{"action":"run_command","value":"/trigger TreeCapitator set 401"}}]