#Enabled = 700
#Disabled = 701
execute if score SneakingEnabled tc.value matches 0 run tellraw @s ["",{"text":"\u2716 ","color":"red"},{"text":"Sneaking","hoverEvent":{"action":"show_text","value":"Whether TreeCapitator works when sneaking"}},{"text":"   "},{"text":"[Enable]","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger TreeCapitator set 700"}}]

execute if score SneakingEnabled tc.value matches 1 run tellraw @s ["",{"text":"\u2714 ","color":"green"},{"text":"Sneaking","hoverEvent":{"action":"show_text","value":"Whether TreeCapitator works when sneaking"}},{"text":"   "},{"text":"[Disable]","color":"red","clickEvent":{"action":"run_command","value":"/trigger TreeCapitator set 701"}}]