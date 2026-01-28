# Initialize default configuration values
# This function runs when the datapack loads for the first time
# Default world: minecraft:overworld (supports multi-world: minecraft:the_nether, minecraft:the_end, etc.)
data modify storage chunky_offline:config load set value 1b
data modify storage chunky_offline:config radius set value 10000
data modify storage chunky_offline:config x set value 0
data modify storage chunky_offline:config z set value 0
data modify storage chunky_offline:config world set value "minecraft:overworld"
data modify storage chunky_offline:config selector set value "@a"

function chunky_offline:chunky/start with storage chunky_offline:config