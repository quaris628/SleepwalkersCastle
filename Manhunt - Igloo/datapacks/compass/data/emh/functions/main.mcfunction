##not in minecraft:tick so that it stops after uninstall
schedule function emh:main 1t

##help
execute as @a[scores={emh.help=1..}] run function emh:help

##enable scoreboards
scoreboard players enable @a Runner
execute if entity @a[tag=emh.runner] run scoreboard players enable @a Start
scoreboard players enable @a emh.help

##start functions
execute as @a[scores={Runner=1}] run function emh:start/tag_runner
execute if entity @a[scores={Start=1}] run function emh:start/start_game