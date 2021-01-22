require("prototypes.accumulators")
require("prototypes.assemblers")
require("prototypes.big-storage-tank")
require("prototypes.boilers")
require("prototypes.c&r")
require("prototypes.c&r-fluids")
require("prototypes.furnaces")
require("prototypes.incinerator")
require("prototypes.machinery")
require("prototypes.mining-drill")
require("prototypes.poles")
require("prototypes.radar")
require("prototypes.robots")
require("prototypes.solar-panels")
require("prototypes.steam-engines")
require("prototypes.transport-belts")
require("prototypes.warehouses")

require("prototypes.robotInitial.robot-initial")
require("prototypes.treeEraser.eraser")
require("prototypes.bio-red")

require("compatibility.Py")

--Player Reach
data.raw["character"]["character"].build_distance = 15000
data.raw["character"]["character"].reach_distance = 15000
data.raw["character"]["character"].reach_resource_distance = 15000
data.raw["character"]["character"].drop_item_distance = 15000