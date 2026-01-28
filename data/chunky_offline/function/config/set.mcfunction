$function chunky_offline:message {"text":"Config: - World: $(world) - Radius: $(radius) - Center: $(x) $(z)."}

$data modify storage chunky_offline:config radius set value $(radius)
$data modify storage chunky_offline:config x set value $(x)
$data modify storage chunky_offline:config z set value $(z)
$data modify storage chunky_offline:config world set value "$(world)"

execute if score status chunky_offline.config matches 1 run function chunky_offline:utils/macro/command {"command":"chunky pause"}
execute if score status chunky_offline.config matches 1 run function chunky_offline:utils/macro/command {"command":"chunky cancel"}
execute if score status chunky_offline.config matches 1 run function chunky_offline:utils/macro/command {"command":"chunky confirm"}

$function chunky_offline:utils/macro/command {"command":"chunky world $(world)"}

$function chunky_offline:utils/macro/command {"command":"chunky center $(x) $(z)"}

$function chunky_offline:utils/macro/command {"command":"chunky radius $(radius)"}

execute if score status chunky_offline.config matches 1 run function chunky_offline:utils/macro/command {"command":"chunky start"}
execute if score status chunky_offline.config matches 1 run function chunky_offline:utils/macro/command {"command":"chunky confirm"}