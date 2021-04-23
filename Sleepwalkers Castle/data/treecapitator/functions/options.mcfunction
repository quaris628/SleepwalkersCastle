tellraw @s {"text":""}
tellraw @s {"text":""}
tellraw @s [{"text":"                     ","strikethrough":true},{"text":" TreeCapitator Settings ","color":"gold","strikethrough":false,"bold":true},{"text":"                      ","strikethrough":true}]
tellraw @s {"text":""}

execute if score @s tc.disabled matches 0 run function treecapitator:z_options/ifenabled
execute if score @s tc.disabled matches 1 run function treecapitator:z_options/ifdisabled
function treecapitator:z_options/enabled
function treecapitator:z_options/lock
tellraw @s {"text":"                                                                                ","strikethrough":true}
scoreboard players reset @s TC_Options