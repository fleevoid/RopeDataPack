#create a destination leash_knot
execute align xyz run summon minecraft:leash_knot ~ ~ ~ {Tags:["rope_stand"],DeathLootTable:""}

#create a destination cow & tie it up to the starting point
#execute align xyz run summon minecraft:armor_stand ~0.5 ~-2.625 ~0.12 {PersistenceRequired:1b,Invisible:1b,NoGravity:1b,Invulnerable:1,Team:"rope_noclip",Tags:["rope_stand"],Passengers:[{id:"minecraft:cow",Tags:["rope_stand","active_rope_cow"],CustomNameVisible:0b,PersistenceRequired:1b,Invulnerable:1,Variant:0,NoAI:1b,NoGravity:1b,Silent:1,Tame:1,Temper:100,DeathLootTable:"",Team:"rope_noclip",Leashed:1b,Attributes:[{Name:"generic.knockbackResistance",Base:1f},{Name:"generic.movementSpeed",Base:0f},{Name:generic.maxHealth,Base:1}],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b}]}]}
execute align xyz run summon minecraft:cow ~0.5 ~-0.625 ~0.12 {Tags:["rope_stand","active_rope_cow"],CustomNameVisible:0b,PersistenceRequired:1b,Invulnerable:1,Variant:0,NoAI:1b,NoGravity:1b,Silent:1,Tame:1,Temper:100,DeathLootTable:"",Team:"rope_noclip",Leashed:1b,Attributes:[{Name:"generic.knockbackResistance",Base:1f},{Name:"generic.movementSpeed",Base:0f},{Name:generic.maxHealth,Base:1}],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b}]}
execute store result entity @e[tag=active_rope_cow,limit=1] Leash.X double 1 run scoreboard players get @s rope_posX 
execute store result entity @e[tag=active_rope_cow,limit=1] Leash.Y double 1 run scoreboard players get @s rope_posY
execute store result entity @e[tag=active_rope_cow,limit=1] Leash.Z double 1 run scoreboard players get @s rope_posZ 
tag @e[tag=active_rope_cow,limit=1] remove active_rope_cow