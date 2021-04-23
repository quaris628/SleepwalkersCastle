#Enabled = 500
#Disabled = 501

execute if score WoodenAxe tc.value matches 0 run tellraw @s ["",{"text":"\u2716 ","color":"red"},{"text":"Wooden axe","hoverEvent":{"action":"show_text","value":"Whether TreeCapitator works with wooden axes"}},{"text":"    "},{"text":"[Enable]","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger TreeCapitator set 500"}}]

execute if score WoodenAxe tc.value matches 1 run tellraw @s ["",{"text":"\u2714 ","color":"green"},{"text":"Wooden axe","hoverEvent":{"action":"show_text","value":"Whether TreeCapitator works with wooden axes"}},{"text":"    "},{"text":"[Disable]","color":"red","clickEvent":{"action":"run_command","value":"/trigger TreeCapitator set 501"}}]