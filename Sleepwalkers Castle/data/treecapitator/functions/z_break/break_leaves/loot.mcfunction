#generate loot
loot spawn ~ ~ ~ mine ~ ~ ~

#particles
execute if block ~ ~ ~ oak_leaves run particle minecraft:block oak_leaves ~ ~ ~ 0.5 0.5 0.5 1 5
execute if block ~ ~ ~ spruce_leaves run particle minecraft:block spruce_leaves ~ ~ ~ 0.5 0.5 0.5 1 5
execute if block ~ ~ ~ birch_leaves run particle minecraft:block birch_leaves ~ ~ ~ 0.5 0.5 0.5 1 5
execute if block ~ ~ ~ dark_oak_leaves run particle minecraft:block dark_oak_leaves ~ ~ ~ 0.5 0.5 0.5 1 5
execute if block ~ ~ ~ acacia_leaves run particle minecraft:block acacia_leaves ~ ~ ~ 0.5 0.5 0.5 1 5
execute if block ~ ~ ~ jungle_leaves run particle minecraft:block jungle_leaves ~ ~ ~ 0.5 0.5 0.5 1 5

#remove block
setblock ~ ~ ~ air

