# Start chunk generation with current configuration
# This function is called automatically on datapack load and can be called manually
# Uses macro parameters from storage: world, x, z, radius
scoreboard players set status chunky_offline.config 1

function chunky_offline:message {"text":"Started."}

function chunky_offline:utils/macro/command {"command":"chunky pause"}
function chunky_offline:utils/macro/command {"command":"chunky cancel"}
function chunky_offline:utils/macro/command {"command":"chunky confirm"}

# Set the target world for chunk generation (supports multi-world)
$function chunky_offline:utils/macro/command {"command":"chunky world $(world)"}

$function chunky_offline:utils/macro/command {"command":"chunky center $(x) $(z)"}

$function chunky_offline:utils/macro/command {"command":"chunky radius $(radius)"}

function chunky_offline:utils/macro/command {"command":"chunky start"}
function chunky_offline:utils/macro/command {"command":"chunky confirm"}