scoreboard objectives add tc.break_oak minecraft.mined:minecraft.oak_log
scoreboard objectives add tc.break_d_oak minecraft.mined:minecraft.dark_oak_log
scoreboard objectives add tc.break_acacia minecraft.mined:minecraft.acacia_log
scoreboard objectives add tc.break_spruce minecraft.mined:minecraft.spruce_log
scoreboard objectives add tc.break_jungle minecraft.mined:minecraft.jungle_log
scoreboard objectives add tc.break_birch minecraft.mined:minecraft.birch_log

scoreboard objectives add tc.use_wood minecraft.used:minecraft.wooden_axe
scoreboard objectives add tc.use_stone minecraft.used:minecraft.stone_axe
scoreboard objectives add tc.use_iron minecraft.used:minecraft.iron_axe
scoreboard objectives add tc.use_gold minecraft.used:minecraft.golden_axe
scoreboard objectives add tc.use_diamond minecraft.used:minecraft.diamond_axe

scoreboard objectives add tc.sneak minecraft.custom:minecraft.sneak_time

scoreboard objectives add tc.disabled dummy
scoreboard objectives add tc.use_axe dummy
scoreboard objectives add tc.random_min dummy
scoreboard objectives add tc.random_max dummy
scoreboard objectives add tc.random dummy
scoreboard objectives add tc.temp dummy
scoreboard objectives add tc.value dummy
scoreboard objectives add tc.valid dummy
scoreboard players set 2 tc.value 2
scoreboard players set 3 tc.value 3
scoreboard players set 4 tc.value 4

execute if score DiamondAxe tc.value matches 0 run scoreboard players set DiamondAxe tc.temp 0
execute if score GoldenAxe tc.value matches 0 run scoreboard players set GoldenAxe tc.temp 0
execute if score IronAxe tc.value matches 0 run scoreboard players set IronAxe tc.temp 0
execute if score StoneAxe tc.value matches 0 run scoreboard players set StoneAxe tc.temp 0
execute if score WoodenAxe tc.value matches 0 run scoreboard players set WoodenAxe tc.temp 0
execute if score SneakingEnabled tc.value matches 1 run scoreboard players set SneakingEnabled tc.temp 1
execute if score StandingEnabled tc.value matches 0 run scoreboard players set StandingEnabled tc.temp 0
execute if score BreakLeaves tc.value matches 0 run scoreboard players set BreakLeaves tc.temp 0
execute if score LootBreak tc.value matches 1 run scoreboard players set LootBreak tc.temp 1
execute if score LockOptions tc.value matches 1 run scoreboard players set LockOptions tc.temp 1

scoreboard players set DiamondAxe tc.value 1
scoreboard players set GoldenAxe tc.value 1
scoreboard players set IronAxe tc.value 1
scoreboard players set StoneAxe tc.value 1
scoreboard players set WoodenAxe tc.value 1
scoreboard players set SneakingEnabled tc.value 0
scoreboard players set StandingEnabled tc.value 1
scoreboard players set BreakLeaves tc.value 1
scoreboard players set LootBreak tc.value 0
scoreboard players set LockOptions tc.value 0

execute if score DiamondAxe tc.temp matches 0 run scoreboard players set DiamondAxe tc.value 0
execute if score GoldenAxe tc.temp matches 0 run scoreboard players set GoldenAxe tc.value 0
execute if score IronAxe tc.temp matches 0 run scoreboard players set IronAxe tc.value 0
execute if score StoneAxe tc.temp matches 0 run scoreboard players set StoneAxe tc.value 0
execute if score WoodenAxe tc.temp matches 0 run scoreboard players set WoodenAxe tc.value 0
execute if score SneakingEnabled tc.temp matches 1 run scoreboard players set SneakingEnabled tc.value 1
execute if score StandingEnabled tc.temp matches 0 run scoreboard players set StandingEnabled tc.value 0
execute if score BreakLeaves tc.temp matches 0 run scoreboard players set BreakLeaves tc.value 0
execute if score LootBreak tc.temp matches 1 run scoreboard players set LootBreak tc.value 1
execute if score LockOptions tc.temp matches 1 run scoreboard players set LockOptions tc.value 1
scoreboard players reset * tc.temp

scoreboard objectives add TreeCapitator trigger

tellraw @a [{"text":"[Datapack]"},{"text":" TreeCapitator v2.5.4 has been enabled","color":"green"}]