##save current x-rotation to scoreboard
execute store result score @s emh.x_rot_hunter run data get entity @s Rotation[0]

##calculate rotations
tp @e[type=minecraft:marker,tag=emh.pointer,limit=1,sort=nearest] ~ ~ ~ facing entity @e[type=minecraft:marker,tag=emh.tracker,x=0,limit=1]
execute store result score @s emh.x_rot_runner run data get entity @e[type=minecraft:marker,tag=emh.pointer,limit=1,sort=nearest] Rotation[0]

##subtract rotations
scoreboard players operation @s emh.x_rot_hunter -= @s emh.x_rot_runner
scoreboard players add @s emh.x_rot_hunter 180
scoreboard players operation @s emh.x_rot_hunter %= .emh emh.x_rot_hunter
scoreboard players remove @s emh.x_rot_hunter 180

##translate rotation to actionbar based on runner dim
execute in minecraft:overworld if entity @a[tag=emh.runner,x=0] run function emh:game/tracking/actionbar/display_actionbar_overworld
execute in minecraft:the_nether if entity @a[tag=emh.runner,x=0] run function emh:game/tracking/actionbar/display_actionbar_nether
execute in minecraft:the_end if entity @a[tag=emh.runner,x=0] run function emh:game/tracking/actionbar/display_actionbar_end