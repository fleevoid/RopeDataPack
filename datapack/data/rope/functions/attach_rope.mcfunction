# Attaches ropes. Hopefully.
#
# Called by: rope:use

scoreboard players add @s rope_started 0

execute as @s[scores={rope_started=2..2}] run scoreboard players set @s rope_started 0
execute as @s[scores={rope_started=1..1}] run function rope:util/end_rope
execute as @s[scores={rope_started=0..0}] run function rope:util/start_rope

scoreboard players set @s rope_raycast 0