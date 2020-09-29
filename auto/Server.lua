local events = script.Parent:WaitForChild("Events")
local onShootEvent = events:WaitForChild("OnPlayerShoot")

local damage = 30
local isEquipped = false

onShootEvent.OnServerEvent:Connect(function(player,fromPosition,toPosition)
		
	local bullet = Instance.new("Part",script.Parent.Parent)
	
	local shot = script.Parent.GunShot:Clone()
	shot.Parent = script.Parent.Parent.Silencer
	shot:Play()
	
	local lightEmmiter = Instance.new("PointLight",bullet)
	lightEmmiter.Brightness = 2
	lightEmmiter.Color = Color3.fromRGB(255,100,0)
	
	bullet.CFrame = CFrame.new(fromPosition,toPosition)
	
	local bodyVelocity = Instance.new("BodyVelocity",bullet)
	bodyVelocity.Velocity = bullet.CFrame.lookVector*600/2
	
	bullet.CanCollide = false
	bullet.Size = Vector3.new(0.2, 0.2, 2.93)
	bullet.Material = Enum.Material.Neon
	bullet.BrickColor = BrickColor.new("Neon orange")
	
	game.Debris:AddItem(bullet)
	
	local bulletScript = script.Parent.BulletHitEvent:Clone()
	bulletScript.Parent = bullet
	bulletScript.Disabled = false
	
	local flash = Instance.new("PointLight",script.Parent.Parent.Silencer)
	flash.Brightness = 10
	flash.Color = Color3.fromRGB(255,100,0)
	wait(.05)
	flash:Destroy()
	
	wait(.6)
	shot:Destroy()
end)

-- ANIMATIONS
events.EquipAnimation.OnServerEvent:Connect(function(player)
	local hum = game.Workspace[player.Name]:WaitForChild("Humanoid")
	isEquipped = true
	
	local equipAnim = Instance.new("Animation")
	equipAnim.AnimationId = "rbxassetid://5584703468"
	
	local playerAnim = hum:LoadAnimation(equipAnim)
	
	while (hum ~= nil and isEquipped) do
		playerAnim:Play()
		wait(0.1)
	end
	
	playerAnim:Stop()
end)

events.UnequipAnimation.OnServerEvent:Connect(function(player)
	isEquipped = false
end)
