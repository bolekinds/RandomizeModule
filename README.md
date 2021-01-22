# RandomizeModule
-- GetRandomColor3() is a function where the module generates a random color

# Example

local module = require(script.Parent)

local random = module:GetRandomColor3()

print(random)

# GetRandomChildFromParent() is a function where the module gets a random child in a model or folder.

# Example

local parent = game.Workspace.Fullofstuff:GetChildren()

local random = module:GetRandomChildFromParent(parent)

# GetRandomMaterial() is a function where the module gets a random material.

# Example

workspace.Part.Material = module:GetRandomMaterial()
