local firing = false
local tool = script.Parent.Parent
local player = game.Players.LocalPlayer
local mouse = player:GetMouse()

local events = script.Parent:WaitForChild("Events")
local onShootEvent = events:WaitForChild("OnPlayerShoot")

tool.Activated:Connect(function()
	firing = true
	
	repeat
		local mousePosition = mouse.hit.Position
		local silencerPos = tool.Silencer.Position
		
		onShootEvent:FireServer(silencerPos,mousePosition)
		
	wait(.15) until firing == false
end)

tool.Equipped:Connect(function()
	events.EquipAnimation:FireServer()
end)

tool.Unequipped:Connect(function()
	events.UnequipAnimation:FireServer()
end)

tool.Deactivated:Connect(function()
	firing = false
end)
