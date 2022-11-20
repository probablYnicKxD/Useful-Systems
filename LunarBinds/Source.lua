--[[

	scripted by probablYnicK
	
	may get bugged if you set 2 keybinds to values such as:
	
	Keybind: V
	Keybind: Ctrl+V

]]

local lunarbinds = {}

local setbinds = {}

local UIS = game:GetService("UserInputService")

function lunarbinds:AddBind(binds : table, callback)
	if type(binds) ~= "table" then
		error("LunarBinds // Attempt to set bind to a " .. type(binds))
		return false, "Attempt to set bind to a " .. type(binds)
	elseif type(binds) == "table" then
		if type(callback) ~= "function" then
			error("LunarBinds // Attempt to set callback to a " .. type(callback))
			return false, "Attempt to set callback to a " .. type(callback)
		elseif type(callback) == "function" then
			for i, b in pairs(binds) do
				if type(b) ~= "userdata" then
					error("LunarBinds // Attempt to set a bind in table to a " .. type(b))
					return false, "Attempt to set a bind in table to a " .. type(b)
				end
			end

			local new = {
				Binds = binds,
				Callback = callback,
			}

			table.insert(setbinds, new)

			return true, "Successfully created keybind!"
		end
	end
end

local function isalldown(bind)
	for i, b in pairs(bind.Binds) do
		if not UIS:IsKeyDown(b) then
			return false
		end
	end

	return true
end

UIS.InputBegan:Connect(function(input)
	if input.UserInputType ~= Enum.UserInputType.Keyboard then return end

	wait()

	for i, bind in pairs(setbinds) do
		if isalldown(bind) then
			pcall(function()
				bind.Callback()
			end)
		end
	end
end)

return lunarbinds
