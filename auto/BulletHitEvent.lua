local firstHit = script.Parent.Parent.Silencer
local player = game.Players[script.Parent.Parent.Parent.Name]

local waitTime = 0

script.Parent.Parent = game.Workspace

script.Parent.Touched:Connect(function(hit)
	if (hit.Parent ~= nil) then
		if (hit.Parent:FindFirstChild("Humanoid")) then
			local humanoid = hit.Parent.Humanoid
			
			if (game.Players:FindFirstChild(hit.Parent.Name)) then
				
				local target = game.Players[hit.Parent.Name]
				if (humanoid ~= game.Workspace[player.Name].Humanoid) then
					waitTime = .1
					local damage = 30
					humanoid:TakeDamage(damage)
				end
			end
		end
		
		if (hit.Parent ~= firstHit.Parent) then
			wait(waitTime)
			script.Parent:Destroy()
		end
	end
end)

wait(5)
script.Parent:Destroy()
