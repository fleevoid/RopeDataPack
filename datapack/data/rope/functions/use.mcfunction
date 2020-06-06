# Desc: Sends a ray out to find a fence and leash it
#
# Called by: rope:tick

# Counts up raycast to move the look location forward
scoreboard players add @s rope_raycast 1

# Attempts to find block and place spawner at block location
execute positioned ^ ^ ^ if block ^ ^ ^ #rope:fence run function rope:attach_rope

execute if block ^ ^ ^ air positioned ^ ^ ^0.1 if score @s rope_raycast matches 1..50 run function rope:use

# Resets scores after raycast
scoreboard players set @s rope_raycast 0
