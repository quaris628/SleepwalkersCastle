##stop main
schedule clear emh:main
schedule clear emh:game/game_loop

##remove scorebaords
scoreboard objectives remove emh.deaths
scoreboard objectives remove emh.help
scoreboard objectives remove emh.x_rot_hunter
scoreboard objectives remove emh.x_rot_hunter
scoreboard objectives remove game_version

##remove tags
tag @a remove emh.hunter
tag @a remove emh.runner

##remove markers

kill @e[type=minecraft:marker,tag=emh.pointer]
kill @e[type=minecraft:marker,tag=emh.tracker]

##success
tellraw @a {"text":"Enhanced Manhunt has been successfully uninstalled. You can now safely remove the datapack from your world folder.","color":"aqua"}