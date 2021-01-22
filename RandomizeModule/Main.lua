-- bolekinds
-- Use require(6282365186) to get this module, or get the model and do game.(Parent of the module):WaitForChild("RandomizeModule")

local module = {}

function module:GetRandomColor3()
	local Success,ErrorMessage = pcall(function()
		randomColor3 = Color3.new(math.random(1,255),math.random(1,255),math.random(1,255))
	end)
	if Success then
		return randomColor3
	else
		warn("RandomizeModule: Failed to use GetRandomColor3(). ErrorMessage: "..ErrorMessage)
		return nil
	end
end

function module:GetRandomChildFromParent(parent)
	local Success,ErrorMessage = pcall(function()
		numberchosen = math.random(1,#parent)
		chosen = parent[numberchosen]
	end)
	if Success then
		return chosen
	else
		warn("RandomizeModule: Failed to use GetRandomChildFromParent(). ErrorMessage: "..ErrorMessage)
		return nil
	end
end

function module:GetRandomMaterial()
	local Success,ErrorMessage = pcall(function()
	 Materials = {}

		for _,enum in pairs(Enum:GetEnums()) do
			if enum == Enum.Material then
				for _,enumItem in pairs(enum:GetEnumItems()) do
					table.insert(Materials, enumItem)
				end
			end 
		end
		result = Materials[math.random(1, #Materials)]
	end)
	if Success then
		return result
	else
		warn("RandomizeModule: Failed to use GetRandomMaterial(). ErrorMessage: "..ErrorMessage)
		return nil
	end
end

return module
