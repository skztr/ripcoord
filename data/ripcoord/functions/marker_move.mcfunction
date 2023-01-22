# must run as a marker, while the related player is tagged as ripcoord_one
# positions the marker to the player's last known living coordinates,
# then runs functions tagged ripcoord:marked
# then removes the marker
#
# NOTE: DOES NOT SUPPORT CUSTOM DIMENSIONS
execute store result entity @s Pos[0] double 0.001 run scoreboard players get @e[tag=ripcoord_one,limit=1] rc_x

# if falling into the void, we want to mark just above the point where they would take more damage
execute if entity @e[tag=ripcoord_one,scores={rc_dimension=0,rc_yint=-127..}] store result entity @s Pos[1] double 0.001 run scoreboard players get @e[tag=ripcoord_one,limit=1] rc_y
execute if entity @e[tag=ripcoord_one,scores={rc_dimension=0,rc_yint=..-128}] run data modify entity @s Pos[1] set value -128.0
execute if entity @e[tag=ripcoord_one,scores={rc_dimension=1..,rc_yint=-63..}] store result entity @s Pos[1] double 0.001 run scoreboard players get @e[tag=ripcoord_one,limit=1] rc_y
execute if entity @e[tag=ripcoord_one,scores={rc_dimension=1..,rc_yint=..-64}] run data modify entity @s Pos[1] set value -64.0
execute if entity @e[tag=ripcoord_one,scores={rc_dimension=..-1,rc_yint=-63..}] store result entity @s Pos[1] double 0.001 run scoreboard players get @e[tag=ripcoord_one,limit=1] rc_y
execute if entity @e[tag=ripcoord_one,scores={rc_dimension=..-1,rc_yint=..-64}] run data modify entity @s Pos[1] set value -64.0

execute store result entity @s Pos[2] double 0.001 run scoreboard players get @e[tag=ripcoord_one,limit=1] rc_z
execute store result entity @s Rotation[0] float 0.001 run scoreboard players get @e[tag=ripcoord_one,limit=1] rc_r1
execute store result entity @s Rotation[1] float 0.001 run scoreboard players get @e[tag=ripcoord_one,limit=1] rc_r2
execute if entity @e[tag=ripcoord_one,scores={rc_dimension=0}] in minecraft:overworld positioned as @s rotated as @s run tp @s ~ ~ ~ ~ ~
execute if entity @e[tag=ripcoord_one,scores={rc_dimension=1}] in minecraft:the_nether positioned as @s rotated as @s run tp @s ~ ~ ~ ~ ~
execute if entity @e[tag=ripcoord_one,scores={rc_dimension=2}] in minecraft:the_end positioned as @s rotated as @s run tp @s ~ ~ ~ ~ ~
execute as @s at @s run function #ripcoord:marked
kill @s
