scoreboard objectives remove Start
scoreboard objectives remove Runner

scoreboard players set @a emh.deaths 0

gamerule sendCommandFeedback true

##tag hunters
tag @a[tag=!emh.runner] add emh.hunter

execute at @a[tag=emh.hunter] run summon minecraft:marker ~ ~ ~ {Tags:["emh.pointer","global.ignore"]}

##reset players
gamemode survival @a
clear @a
effect give @a minecraft:saturation 1 255 true
effect give @a minecraft:regeneration 1 255 true
execute as @r at @s run spreadplayers ~ ~ 2 2 false @a

##start main game loop
function emh:game/game_loop

##summon pointers

execute in minecraft:overworld run summon minecraft:marker ~ ~ ~ {Tags:["emh.tracker","global.ignore"]}
execute in minecraft:the_nether run summon minecraft:marker ~ ~ ~ {Tags:["emh.tracker","global.ignore"]}
execute in minecraft:the_end run summon minecraft:marker 0 0 0 {Tags:["emh.tracker","global.ignore"]}

##notify start
tellraw @a {"text":"Game has started!","color":"yellow"}