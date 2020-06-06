execute align xyz run summon minecraft:leash_knot ~ ~ ~ {Tags:["rope_stand", "rope_active_knot", "rope_placeholder_knot"],DeathLootTable:""}
execute store result score @s rope_posX run data get entity @e[tag=rope_active_knot, limit=1] Pos[0]
execute store result score @s rope_posY run data get entity @e[tag=rope_active_knot, limit=1] Pos[1]
execute store result score @s rope_posZ run data get entity @e[tag=rope_active_knot, limit=1] Pos[2]
tag @e[tag=rope_active_knot,limit=1] remove rope_active_knot

#say "start rope"
scoreboard players set @s rope_started 1
