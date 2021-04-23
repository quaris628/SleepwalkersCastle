function treecapitator:z_options/leaves
execute if score BreakLeaves tc.value matches 0 run tellraw @s {"text":""}
execute if score BreakLeaves tc.value matches 1 run function treecapitator:z_options/lootbreak
tellraw @s {"text":""}
tellraw @s {"text":"   The following axes work:","color":"yellow"}
function treecapitator:z_options/diamond_axe
function treecapitator:z_options/golden_axe
function treecapitator:z_options/iron_axe
function treecapitator:z_options/stone_axe
function treecapitator:z_options/wooden_axe

tellraw @s {"text":""}
tellraw @s {"text":"   TreeCapitator will work when:","color":"yellow"}
function treecapitator:z_options/standing
function treecapitator:z_options/sneaking
tellraw @s {"text":""}