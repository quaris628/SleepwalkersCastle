#Enabled = 300
#Disabled = 301

execute if score IronAxe tc.value matches 0 run tellraw @s ["",{"text":"\u2716 ","color":"red"},{"text":"Iron axe","hoverEvent":{"action":"show_text","value":"Whether TreeCapitator works with iron axes"}},{"text":"        "},{"text":"[Enable]","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger TreeCapitator set 300"}}]

execute if score IronAxe tc.value matches 1 run tellraw @s ["",{"text":"\u2714 ","color":"green"},{"text":"Iron axe","hoverEvent":{"action":"show_text","value":"Whether TreeCapitator works with iron axes"}},{"text":"        "},{"text":"[Disable]","color":"red","clickEvent":{"action":"run_command","value":"/trigger TreeCapitator set 301"}}]