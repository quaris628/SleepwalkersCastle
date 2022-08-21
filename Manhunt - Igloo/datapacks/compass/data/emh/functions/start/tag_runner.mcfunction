scoreboard players set @s Runner 0
tag @a remove emh.runner
tag @s add emh.runner
tellraw @a ["",{"selector":"@s","color":"dark_green"},{"text":" is running!","color":"dark_green"}]