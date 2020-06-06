
#execute any cow that is missing his fence by launching into the void (avoids lead drops)
execute as @e[type=minecraft:cow, tag=rope_stand] at @s unless block ~ ~1 ~ #rope:fence run tp @s ~ ~-500 ~

#kill any loose leads near unleashed cows
execute as @e[type=minecraft:cow, tag=rope_stand] at @s unless data entity @s Leash run kill @e[type=item,nbt={Item:{id:"minecraft:lead"}},distance=..2]

#kill the unleashed cows
execute as @e[type=minecraft:cow, tag=rope_stand] unless data entity @s Leash run kill @s

# Should kill any orphan knots, but sadly, does not. knots & distance do not play well together. (https://bugs.mojang.com/browse/MC-93960)
#execute as @e[type=minecraft:leash_knot, tag=rope_stand] at @s unless entity @e[distance=1,type=minecraft:cow,tag=rope_stand] run kill @s