# Desc: Initialised scores needed for rope function
#
# Called by: Player

scoreboard objectives remove rope_raycast
scoreboard objectives remove rope_useR
scoreboard objectives remove rope_posX
scoreboard objectives remove rope_posY
scoreboard objectives remove rope_posZ
scoreboard objectives remove rope_started

kill @e[tag=rope_stand]
team remove rope_noclip
