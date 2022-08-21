title @a[tag=!global.ignore.gui] title {"text":"Runner Wins!","color":"green"}
advancement revoke @s only end/kill_dragon
scoreboard players set @s emh.deaths 2
schedule clear emh:game/game_loop