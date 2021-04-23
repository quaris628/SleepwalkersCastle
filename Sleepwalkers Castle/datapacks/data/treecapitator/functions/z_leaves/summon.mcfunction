summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Duration:1,Tags:["TC_Leaf"]}
execute as @e[type=area_effect_cloud,tag=TC_Leaf,sort=nearest,limit=1] run function treecapitator:z_leaves/loop