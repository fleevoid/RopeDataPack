# Desc: Swaps the knowledge book from the crafting recipe to the carrot_on_a_stick
#
# Called by: advancement: onInventoryChanged

clear @s knowledge_book 1
function rope:give_rope
execute as @s[nbt={Inventory:[{id:"minecraft:knowledge_book"}]}] at @s run function rope:swap_recipe
advancement revoke @s only rope:swap_recipe
