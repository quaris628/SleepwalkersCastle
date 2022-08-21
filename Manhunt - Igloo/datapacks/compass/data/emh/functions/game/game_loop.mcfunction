##loop
schedule function emh:game/game_loop 1t

##portal tracking
execute as @a[tag=emh.runner] at @s run tp @e[type=minecraft:marker,tag=emh.tracker,x=0] @s
execute in minecraft:the_nether as @a[tag=emh.hunter,x=0] at @s if block ~ ~ ~ minecraft:nether_portal unless entity @a[tag=emh.runner,advancements={story/enter_the_nether=true}] run tp @e[type=minecraft:marker,tag=emh.tracker,x=0] @s

##main tracking loop
execute as @a[tag=emh.hunter] at @s run function emh:game/tracking/tracking_loop

##new player join
execute if entity @a[tag=emh.hunter] as @a[tag=!emh.hunter,tag=!emh.runner] at @s run function emh:start/new_player

##win and loss detection
execute as @a[tag=emh.runner,scores={emh.deaths=0},advancements={end/kill_dragon=true}] run function emh:game/win_detect
execute as @a[tag=emh.runner,scores={emh.deaths=1}] run function emh:game/loss_detect