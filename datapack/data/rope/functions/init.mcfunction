# Desc: Initialised scores needed for wrench function
#
# Called by: Player

scoreboard objectives add rope_raycast dummy "Rope Raycast"
scoreboard objectives add rope_useR minecraft.used:minecraft.carrot_on_a_stick "Rope Use"
scoreboard objectives add rope_posX dummy "Last Rope Position X"
scoreboard objectives add rope_posY dummy "Last Rope Position Y"
scoreboard objectives add rope_posZ dummy "Last Rope Position Z"
scoreboard objectives add rope_started dummy "rope started"
team add rope_noclip
team modify rope_noclip collisionRule never

effect give @e[type=cow, tag=rope_stand] minecraft:invisibility 999999 1 true
execute at @e[type=cow, tag=rope_stand] align xyz run summon minecraft:leash_knot ~ ~1 ~ {Tags:["rope_stand"],DeathLootTable:""}
