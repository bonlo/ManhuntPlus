execute store result entity @s HandItems[0].tag.LodestonePos.Z int 1 run data get entity @s Pos[2]
execute store result entity @s HandItems[0].tag.LodestonePos.Y int 1 run data get entity @s Pos[1]
execute store result entity @s HandItems[0].tag.LodestonePos.X int 1 run data get entity @s Pos[0]
data modify storage lode Track1 merge from entity @s HandItems[0]
execute if entity @s[nbt={Dimension:"minecraft:overworld"}] run data modify storage lode Track1 merge from entity @s HandItems[0]
execute if entity @s[nbt={Dimension:"minecraft:the_nether"}] run data modify storage lode Track2 merge from entity @s HandItems[0]
execute if entity @s[nbt={Dimension:"minecraft:the_end"}] run data modify storage lode Track3 merge from entity @s HandItems[0]