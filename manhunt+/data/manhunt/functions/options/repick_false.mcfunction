gamerule sendCommandFeedback false
resource set @e[limit=1,sort=nearest,type=minecraft:armor_stand,tag=setup] manhunt:setup_armorstand_repick 0
tellraw @a ["",{"text":"Repick: [","color":"white"},{"text":"Disabled","bold":true,"color":"red"},"]"]
schedule function manhunt:feedback 1t append