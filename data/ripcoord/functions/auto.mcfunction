execute as @a[scores={rc_died=1..}] run function ripcoord:store
execute as @a[scores={rc_died=1..}] run function ripcoord:tell
scoreboard players set @a rc_died 0
