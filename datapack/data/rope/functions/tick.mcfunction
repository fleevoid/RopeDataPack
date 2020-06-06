# Desc: Calls the use function when the player is holding a rope and right clicks
#
# Called by: main:tick

execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1,Damage:1,display:{Name:"{\"text\":\"§rRope\"}"}}}},scores={rope_useR=1..}] at @s positioned ~ ~1.67 ~ run function rope:use
execute as @a[nbt={Inventory:[{id:"minecraft:knowledge_book"}]}] at @s run function rope:swap_recipe
function rope:util/kill_orphan
function rope:util/sparkle_knot

scoreboard players set @a rope_useR 0
