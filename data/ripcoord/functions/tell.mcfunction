# Must run as a specific entity
execute store result score @s ripcoordx run data get entity @s Pos[0]
execute store result score @s ripcoordy run data get entity @s Pos[1]
execute store result score @s ripcoordz run data get entity @s Pos[2]

execute if entity @s[nbt={Dimension:0}] run tellraw @s {"text":"","color":"gray","extra":[{"selector":"@s"},{"text":" died in "},{"text":"Overworld","color":"white"},{"text":" @ ["},{"score":{"name":"@s","objective":"ripcoordx"}},{"text":", "},{"score":{"name":"@s","objective":"ripcoordy"}},{"text":", "},{"score":{"name":"@s","objective":"ripcoordz"}},{"text":"]"}]}
execute if entity @s[nbt={Dimension:1}] run tellraw @s {"text":"","color":"gray","extra":[{"selector":"@s"},{"text":" died in "},{"text":"The End","color":"dark_purple"},{"text":" @ ["},{"score":{"name":"@s","objective":"ripcoordx"}},{"text":", "},{"score":{"name":"@s","objective":"ripcoordy"}},{"text":", "},{"score":{"name":"@s","objective":"ripcoordz"}},{"text":"]"}]}
execute if entity @s[nbt={Dimension:-1}] run tellraw @s {"text":"","color":"gray","extra":[{"selector":"@s"},{"text":" died in "},{"text":"The Nether","color":"gold"},{"text":" @ ["},{"score":{"name":"@s","objective":"ripcoordx"}},{"text":", "},{"score":{"name":"@s","objective":"ripcoordy"}},{"text":", "},{"score":{"name":"@s","objective":"ripcoordz"}},{"text":"]"}]}
