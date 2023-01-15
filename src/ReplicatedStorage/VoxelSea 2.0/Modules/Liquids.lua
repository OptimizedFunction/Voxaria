local moduleIndex = require(script.Parent.ModuleIndex)
local VoxelLib = require(moduleIndex.VoxelLib)

local liquidSpawner = {}
liquidSpawner.__index = liquidSpawner


--Constructor
function liquidSpawner.new(chunkPosition : Vector3, voxelIndex : number, flowRate : number, liquidMat : number)
    assert(typeof(chunkPosition) == "Vector3", "[[Voxaria]][Liquid.SetupSpawner] Argument #1 must be a Vector3.")
    assert(typeof(voxelIndex) == "number", "[[Voxaria]][Liquid.SetupSpawner] Argument #2 must be a table.")
    assert(typeof(flowRate) == "number", "[[Voxaria]][Liquid.SetupSpawner] Argument #3 must be a number.")
    assert(typeof(liquidMat) == "number", "[[Voxaria]][Liquid.SetupSpawner] Argument #4 must be a number.")
    
    local newSpawner = {}
    setmetatable(newSpawner, liquidSpawner)

    newSpawner.chunkPosition = chunkPosition
    newSpawner.voxelIndex = voxelIndex
    newSpawner.flowRate = flowRate
    newSpawner.liquidMat = liquidMat

    return newSpawner
end

--Methods
function liquidSpawner:Update(spawners : {typeof(liquidSpawner)})
    
end
local neighbors =     if (self.voxelIndex - 1 > 0 and self.voxelIndex - 1 < chunk_size * chunk_size * vert_chunk_size)
end

return liquidSpawner