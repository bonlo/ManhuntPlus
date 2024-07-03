item replace entity @s weapon.mainhand with crossbow{display:{Name:'["",{"text":"Flintlock","italic":false}]',Lore:['["",{"text":"Captain\'s Pride and Glory","italic":false,"color":"gold"}]']},Unbreakable:1,CustomModelData:1,Tags:flintlock,HideFlags:4} 1
playsound minecraft:item.flintandsteel.use player @a ~ ~ ~ 2 0.5
playsound minecraft:entity.tnt.primed player @a ~ ~ ~ 2 2
execute positioned ~ ~1 ~ run summon armor_stand ^ ^1 ^1 {Marker:1b,Invisible:1b,Tags:["flintlock_kb"]}
execute positioned ~ ~1 ~ run summon armor_stand ^1 ^1 ^1 {Marker:1b,Invisible:1b,Tags:["flintlock_kb"]}
execute positioned ~ ~1 ~ run summon armor_stand ^-1 ^1 ^1 {Marker:1b,Invisible:1b,Tags:["flintlock_kb"]}
execute positioned ~ ~1 ~ run summon armor_stand ^ ^1 ^2 {Marker:1b,Invisible:1b,Tags:["flintlock_kb"]}
execute positioned ~ ~1 ~ run summon armor_stand ^1 ^1 ^2 {Marker:1b,Invisible:1b,Tags:["flintlock_kb"]}
execute positioned ~ ~1 ~ run summon armor_stand ^-1 ^1 ^2 {Marker:1b,Invisible:1b,Tags:["flintlock_kb"]}
execute positioned ~ ~1 ~ run summon armor_stand ^2 ^1 ^2 {Marker:1b,Invisible:1b,Tags:["flintlock_kb"]}
execute positioned ~ ~1 ~ run summon armor_stand ^-2 ^1 ^2 {Marker:1b,Invisible:1b,Tags:["flintlock_kb"]}
execute positioned ~ ~1 ~ run summon armor_stand ^ ^1 ^3 {Marker:1b,Invisible:1b,Tags:["flintlock_kb"]}
execute positioned ~ ~1 ~ run summon armor_stand ^1 ^1 ^3 {Marker:1b,Invisible:1b,Tags:["flintlock_kb"]}
execute positioned ~ ~1 ~ run summon armor_stand ^-1 ^1 ^3 {Marker:1b,Invisible:1b,Tags:["flintlock_kb"]}
execute positioned ~ ~1 ~ run summon armor_stand ^2 ^1 ^3 {Marker:1b,Invisible:1b,Tags:["flintlock_kb"]}
execute positioned ~ ~1 ~ run summon armor_stand ^-2 ^1 ^3 {Marker:1b,Invisible:1b,Tags:["flintlock_kb"]}
execute positioned ~ ~1 ~ run summon armor_stand ^3 ^1 ^3 {Marker:1b,Invisible:1b,Tags:["flintlock_kb"]}
execute positioned ~ ~1 ~ run summon armor_stand ^-3 ^1 ^3 {Marker:1b,Invisible:1b,Tags:["flintlock_kb"]}
execute as @e[tag=flintlock_kb] run data modify entity @s Rotation set from entity @p Rotation
execute as @e[tag=flintlock_kb] at @s run function manhunt:abilities/captain/flintlock_particles
resource change @s manhunt:captain/flintlock_charges -1
schedule function manhunt:abilities/captain/clear 2t append