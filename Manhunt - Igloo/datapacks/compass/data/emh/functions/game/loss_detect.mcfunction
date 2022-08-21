execute as @a[tag=emh.hunter,limit=1] at @s if entity @a[distance=0.01..,tag=emh.hunter] run title @a[tag=!global.ignore.gui] title {"text":"Hunters Win!","color":"yellow"}
execute as @a[tag=emh.hunter,limit=1] at @s unless entity @a[distance=0.01,tag=emh.hunter] run title @a[tag=!global.ignore.gui] title {"text":"Hunter Wins!","color":"yellow"}
scoreboard players set @s emh.deaths 2
schedule clear emh:game/game_loop