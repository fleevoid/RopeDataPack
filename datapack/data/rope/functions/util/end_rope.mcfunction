
#kill the starting point leash_knot
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,NoGravity:1b,Invulnerable:1,Team:"rope_noclip",Tags:["rope_temp_target","rope_stand"]}
execute store result entity @e[tag=rope_temp_target,limit=1] Pos[0] double 1 run scoreboard players get @s rope_posX 
execute store result entity @e[tag=rope_temp_target,limit=1] Pos[1] double 1 run scoreboard players get @s rope_posY
execute store result entity @e[tag=rope_temp_target,limit=1] Pos[2] double 1 run scoreboard players get @s rope_posZ
execute at @e[type=armor_stand, tag=rope_temp_target] run kill @e[tag=rope_placeholder_knot,sort=nearest,limit=1]

execute align xyz if entity @e[type=armor_stand, tag=rope_temp_target, distance=..0.5] run tellraw @s "Rope cancelled: Start and end are the same"
execute align xyz if entity @e[type=armor_stand, tag=rope_temp_target, distance=9.5..] run tellraw @s "Rope cancelled: Too far away"
execute align xyz if entity @e[type=armor_stand, tag=rope_temp_target, distance=0.5..9.5] run function rope:util/leash_cow
kill @e[type=armor_stand, tag=rope_temp_target]

#say "end rope"
scoreboard players set @s rope_started 2
