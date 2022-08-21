##set scoreboards
execute unless entity @a[tag=emh.hunter] run function emh:start/create_triggers
scoreboard objectives add emh.help trigger {"text":"Help","color":"aqua"}
scoreboard objectives add emh.x_rot_hunter dummy
scoreboard players set .emh emh.x_rot_hunter 360
scoreboard objectives add emh.x_rot_runner dummy
scoreboard objectives add emh.deaths deathCount
scoreboard objectives add game_version dummy

##main
function emh:main

##check game compatibility
execute store result score .emh game_version run data get entity @r DataVersion
execute if score .emh game_version matches ..2715 run tellraw @a {"text":"Enhanced Manhunt is not compatible with game versions below 1.17! Please update to a newer version.","color":"red"}

##set gamerules
execute unless entity @a[tag=emh.hunter] run gamerule sendCommandFeedback false