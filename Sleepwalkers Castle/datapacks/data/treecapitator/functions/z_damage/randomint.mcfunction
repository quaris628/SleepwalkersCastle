#Change (lower, upper) to (lower, range)
scoreboard players operation Damage tc.random_max -= Damage tc.random_min
scoreboard players add Damage tc.random_max 1

#Summon two entities to work with
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"text\":\"tc.random\"}",Duration:1}
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:"{\"text\":\"tc.random\"}",Duration:1}

#Generate a 31-bit random number by randomizing each bit
scoreboard players add @e[type=minecraft:area_effect_cloud,name=tc.random,limit=1,sort=random] tc.random_min 1
scoreboard players add @e[type=minecraft:area_effect_cloud,name=tc.random,limit=1,sort=random] tc.random_min 2
scoreboard players add @e[type=minecraft:area_effect_cloud,name=tc.random,limit=1,sort=random] tc.random_min 4
scoreboard players add @e[type=minecraft:area_effect_cloud,name=tc.random,limit=1,sort=random] tc.random_min 8
scoreboard players add @e[type=minecraft:area_effect_cloud,name=tc.random,limit=1,sort=random] tc.random_min 16
scoreboard players add @e[type=minecraft:area_effect_cloud,name=tc.random,limit=1,sort=random] tc.random_min 32
scoreboard players add @e[type=minecraft:area_effect_cloud,name=tc.random,limit=1,sort=random] tc.random_min 64
scoreboard players add @e[type=minecraft:area_effect_cloud,name=tc.random,limit=1,sort=random] tc.random_min 128
scoreboard players add @e[type=minecraft:area_effect_cloud,name=tc.random,limit=1,sort=random] tc.random_min 256
scoreboard players add @e[type=minecraft:area_effect_cloud,name=tc.random,limit=1,sort=random] tc.random_min 512
scoreboard players add @e[type=minecraft:area_effect_cloud,name=tc.random,limit=1,sort=random] tc.random_min 1024
scoreboard players add @e[type=minecraft:area_effect_cloud,name=tc.random,limit=1,sort=random] tc.random_min 2048
scoreboard players add @e[type=minecraft:area_effect_cloud,name=tc.random,limit=1,sort=random] tc.random_min 4096
scoreboard players add @e[type=minecraft:area_effect_cloud,name=tc.random,limit=1,sort=random] tc.random_min 8192
scoreboard players add @e[type=minecraft:area_effect_cloud,name=tc.random,limit=1,sort=random] tc.random_min 16384
scoreboard players add @e[type=minecraft:area_effect_cloud,name=tc.random,limit=1,sort=random] tc.random_min 32768
scoreboard players add @e[type=minecraft:area_effect_cloud,name=tc.random,limit=1,sort=random] tc.random_min 65536
scoreboard players add @e[type=minecraft:area_effect_cloud,name=tc.random,limit=1,sort=random] tc.random_min 131072
scoreboard players add @e[type=minecraft:area_effect_cloud,name=tc.random,limit=1,sort=random] tc.random_min 262144
scoreboard players add @e[type=minecraft:area_effect_cloud,name=tc.random,limit=1,sort=random] tc.random_min 524288
scoreboard players add @e[type=minecraft:area_effect_cloud,name=tc.random,limit=1,sort=random] tc.random_min 1048576
scoreboard players add @e[type=minecraft:area_effect_cloud,name=tc.random,limit=1,sort=random] tc.random_min 2097152
scoreboard players add @e[type=minecraft:area_effect_cloud,name=tc.random,limit=1,sort=random] tc.random_min 4194304
scoreboard players add @e[type=minecraft:area_effect_cloud,name=tc.random,limit=1,sort=random] tc.random_min 8388608
scoreboard players add @e[type=minecraft:area_effect_cloud,name=tc.random,limit=1,sort=random] tc.random_min 16777216
scoreboard players add @e[type=minecraft:area_effect_cloud,name=tc.random,limit=1,sort=random] tc.random_min 33554432
scoreboard players add @e[type=minecraft:area_effect_cloud,name=tc.random,limit=1,sort=random] tc.random_min 67108864
scoreboard players add @e[type=minecraft:area_effect_cloud,name=tc.random,limit=1,sort=random] tc.random_min 134217728
scoreboard players add @e[type=minecraft:area_effect_cloud,name=tc.random,limit=1,sort=random] tc.random_min 268435456
scoreboard players add @e[type=minecraft:area_effect_cloud,name=tc.random,limit=1,sort=random] tc.random_min 536870912
scoreboard players add @e[type=minecraft:area_effect_cloud,name=tc.random,limit=1,sort=random] tc.random_min 1073741824

#Transfer random number and limit to max
scoreboard players operation Damage tc.random = @e[type=minecraft:area_effect_cloud,name=tc.random,limit=1] tc.random_min
scoreboard players operation Damage tc.random %= Damage tc.random_max
scoreboard players operation Damage tc.random += Damage tc.random_min

kill @e[type=minecraft:area_effect_cloud,name=tc.random]
scoreboard players remove Damage tc.random_max 1