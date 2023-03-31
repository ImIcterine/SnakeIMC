execute as @e[type=armor_stand,tag=snakeHead,y_rotation=-45..45] at @s run summon minecraft:armor_stand ~ ~ ~ {Rotation:[0f,0f,0f],Tags:[snakeTailPart]}
execute as @e[type=armor_stand,tag=snakeHead,y_rotation=45..135] at @s run summon minecraft:armor_stand ~ ~ ~ {Rotation:[90f,0f,0f],Tags:[snakeTailPart]}
execute as @e[type=armor_stand,tag=snakeHead,y_rotation=135..-135] at @s run summon minecraft:armor_stand ~ ~ ~ {Rotation:[180f,0f,0f],Tags:[snakeTailPart]}
execute as @e[type=armor_stand,tag=snakeHead,y_rotation=-135..-45] at @s run summon minecraft:armor_stand ~ ~ ~ {Rotation:[-90f,0f,0f],Tags:[snakeTailPart]}
execute as @e[type=armor_stand,tag=snakeHead] at @s run summon minecraft:armor_stand ~-1 ~ ~ {Rotation:[-90f,0f,0f],Tags:[snakeHeadTemp]}
kill @e[type=armor_stand,tag=snakeHead]
tag @e[type=armor_stand,tag=snakeHeadTemp] add snakeHead
tag @e[type=armor_stand,tag=snakeHeadTemp] remove snakeHeadTemp
execute as @e[type=armor_stand,tag=snakeHead] at @s unless block ~ ~ ~ air run setblock -3 -17 12 minecraft:redstone_block
execute as @e[type=armor_stand,tag=snakeHead] at @s run setblock ~ ~ ~ lime_terracotta
execute as @e[type=armor_stand,tag=snakeTailPart] at @s run setblock ~ ~ ~ green_concrete
execute as @e[type=armor_stand,tag=snakeHead] at @s unless entity @e[type=armor_stand,tag=snakeFood,distance=..0.5] as @e[type=armor_stand,tag=snakeTailPart] at @s if block ^ ^ ^1 air run kill @s
execute as @e[type=armor_stand,tag=snakeHead] at @s if entity @e[type=armor_stand,tag=snakeFood,distance=..0.5] run function snakeimc:spawn_food
execute as @e[type=armor_stand,tag=snakeFood] at @s if entity @e[type=armor_stand,tag=snakeHead,distance=..0.5] run kill @s
fill -4 -21 6 -20 -21 -8 air