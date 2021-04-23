scoreboard players add @a tc.disabled 0

execute if score WoodenAxe tc.value matches 1 run scoreboard players set @a[scores={tc.use_wood=1}] tc.use_axe 1
execute if score StoneAxe tc.value matches 1 run scoreboard players set @a[scores={tc.use_stone=1}] tc.use_axe 1
execute if score IronAxe tc.value matches 1 run scoreboard players set @a[scores={tc.use_iron=1}] tc.use_axe 1
execute if score GoldenAxe tc.value matches 1 run scoreboard players set @a[scores={tc.use_gold=1}] tc.use_axe 1
execute if score DiamondAxe tc.value matches 1 run scoreboard players set @a[scores={tc.use_diamond=1}] tc.use_axe 1
scoreboard players set @a[scores={tc.disabled=1}] ts.use_axe 0

scoreboard players reset @a tc.use_wood
scoreboard players reset @a tc.use_stone
scoreboard players reset @a tc.use_iron
scoreboard players reset @a tc.use_gold
scoreboard players reset @a tc.use_diamond

#Options
scoreboard players enable @a TreeCapitator

#validate
scoreboard players set @a tc.valid 0
execute if score StandingEnabled tc.value matches 1 run scoreboard players set @a[scores={tc.sneak=0}] tc.valid 1
execute if score SneakingEnabled tc.value matches 1 run scoreboard players set @a[scores={tc.sneak=1..}] tc.valid 1
execute as @a[scores={TreeCapitator=1..}] at @s run function treecapitator:z_options/main

#Run
execute at @a[scores={tc.break_oak=1,tc.use_axe=1,tc.valid=1}] at @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:oak_log"},Age:0s},distance=..10] run function treecapitator:z_run/oak/validate/main
execute at @a[scores={tc.break_d_oak=1,tc.use_axe=1,tc.valid=1}] at @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:dark_oak_log"},Age:0s},distance=..10] run function treecapitator:z_run/dark_oak/validate/main
execute at @a[scores={tc.break_acacia=1,tc.use_axe=1,tc.valid=1}] at @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:acacia_log"},Age:0s},distance=..10] run function treecapitator:z_run/acacia/validate/main
execute at @a[scores={tc.break_birch=1,tc.use_axe=1,tc.valid=1}] at @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:birch_log"},Age:0s},distance=..10] run function treecapitator:z_run/birch/validate/main
execute at @a[scores={tc.break_jungle=1,tc.use_axe=1,tc.valid=1}] at @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:jungle_log"},Age:0s},distance=..10] run function treecapitator:z_run/jungle/validate/main
execute at @a[scores={tc.break_spruce=1,tc.use_axe=1,tc.valid=1}] at @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:spruce_log"},Age:0s},distance=..10] run function treecapitator:z_run/spruce/validate/main

scoreboard players reset @a tc.use_axe
scoreboard players reset @a tc.break_oak
scoreboard players reset @a tc.break_d_oak
scoreboard players reset @a tc.break_acacia
scoreboard players reset @a tc.break_spruce
scoreboard players reset @a tc.break_jungle
scoreboard players reset @a tc.break_birch
scoreboard players set @a tc.sneak 0