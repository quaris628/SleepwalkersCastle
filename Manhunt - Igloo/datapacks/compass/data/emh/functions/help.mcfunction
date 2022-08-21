##reset
scoreboard players set @s emh.help 0

##help menu
tellraw @a ["",{"text":"\u00A7m                                                                                ","color":"dark_gray"}]

tellraw @a ["",{"text":"                       Enhanced Manhunt Datapack"}]

tellraw @a ["",{"text":"\u00A7m                                                                                ","color":"dark_gray"}]

tellraw @a ["",{"text":"To become a Speedrunner, run "},{"text":"/trigger Runner","color":"aqua","clickEvent":{"action":"suggest_command","value":"/trigger Runner"}},{"text":"."}]

tellraw @a ["",{"text":"To start the game, run "},{"text":"/trigger Start","color":"aqua","clickEvent":{"action":"suggest_command","value":"/trigger Start"}},{"text":". All players other than the Speedrunner will be made Hunters."}]

tellraw @a {"text":"If a player should join after the game has already started, they will automatically be made a Hunter."}

tellraw @a [""]

tellraw @a ["",{"text":"To uninstall the datapack, run "},{"text":"/function emh:uninstall","color":"aqua","clickEvent":{"action":"suggest_command","value":"/function emh:uninstall"}},{"text":"."}]

tellraw @a [""]

tellraw @a ["","            ",{"text":"[Click here to view the Planet Minecraft page]","color":"green","clickEvent":{"action":"open_url","value":"https://www.planetminecraft.com/data-pack/enhanced-manhunt-v1-0-by-duranson/"}}]

tellraw @a ["",{"text":"\u00A7m                                                                                ","color":"dark_gray"}]