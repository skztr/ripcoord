# must run as a specific entity
scoreboard players set @s rc_dimension -1
execute as @s[nbt={Dimension:"minecraft:overworld"}] run scoreboard players set @s rc_dimension 0
execute as @s[nbt={Dimension:"minecraft:the_nether"}] run scoreboard players set @s rc_dimension 1
execute as @s[nbt={Dimension:"minecraft:the_end"}] run scoreboard players set @s rc_dimension 2
execute store result score @s rc_x run data get entity @s Pos[0] 1000.0
execute store result score @s rc_y run data get entity @s Pos[1] 1000.0
execute store result score @s rc_z run data get entity @s Pos[2] 1000.0
execute store result score @s rc_xint run data get entity @s Pos[0] 1.0
execute store result score @s rc_yint run data get entity @s Pos[1] 1.0
execute store result score @s rc_zint run data get entity @s Pos[2] 1.0
execute store result score @s rc_r1 run data get entity @s Rotation[0] 1000.0
execute store result score @s rc_r2 run data get entity @s Rotation[1] 1000.0
