# must run as a specific player, who is assumed to have ripcoords stored
tag @s add ripcoord_one
kill @e[tag=ripcoord_marker]
execute at @s run summon minecraft:marker ~ ~ ~ {Tags:["ripcoord_marker"]}
execute as @e[type=minecraft:marker,tag=ripcoord_marker,limit=1] run function ripcoord:marker_move
tag @s remove ripcoord_one
