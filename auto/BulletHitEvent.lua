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
				if (humanoid ~= game.Workspace[player.Name].Humanoid and target.Team ~= player.Team) then
					local pT = tostring(player.Team)
					local tarT = tostring(target.Team)
					
					waitTime = .1
					local damage = 30
					
					if (pT == "Military") then
						if (tarT == "Resistance") then
							humanoid:TakeDamage(damage)
						elseif (tarT == "Civilian") then
							humanoid:TakeDamage(damage)
						elseif (tarT == "Immigrant") then
							humanoid:TakeDamage(damage)
						end
					end
					
					if (pT == "Admission") then
						if (tarT == "Resistance") then
							humanoid:TakeDamage(damage)
						elseif (tarT == "Civilian") then
							humanoid:TakeDamage(damage)
						elseif (tarT == "Immigrant") then
							humanoid:TakeDamage(damage)
						end
					end
					
					if (pT == "Police") then
						if (tarT == "Resistance") then
							humanoid:TakeDamage(damage)
						elseif (tarT == "Civilian") then
							humanoid:TakeDamage(damage)
						elseif (tarT == "Immigrant") then
							humanoid:TakeDamage(damage)
						end
					end
					
					if (pT == "President") then
						humanoid:TakeDamage(damage)
					end
					
					if (pT == "Mayor") then
						humanoid:TakeDamage(damage)
					end
					
					if (pT == "Guard") then
						if (tarT == "Resistance") then
							humanoid:TakeDamage(damage)
						elseif (tarT == "Civilian") then
							humanoid:TakeDamage(damage)
						elseif (tarT == "Immigrant") then
							humanoid:TakeDamage(damage)
						end
					end
					
					if (pT == "Immigrant") then
						if (tarT == "Guard") then
							humanoid:TakeDamage(damage)
						elseif (tarT == "Admission") then
							humanoid:TakeDamage(damage)
						elseif (tarT == "President") then
							humanoid:TakeDamage(damage)					
						elseif (tarT == "Military") then
							humanoid:TakeDamage(damage)
						elseif (tarT == "Guard") then
							humanoid:TakeDamage(damage)
						elseif (tarT == "Admission") then
							humanoid:TakeDamage(damage)
						elseif (tarT == "Police") then
							humanoid:TakeDamage(damage)
						elseif (tarT == "Mayor") then
							humanoid:TakeDamage(damage)
						end
					end
					
					if (pT == "Resistance") then
						if (tarT == "Guard") then
							humanoid:TakeDamage(damage)
						elseif (tarT == "Admission") then
							humanoid:TakeDamage(damage)
						elseif (tarT == "President") then
							humanoid:TakeDamage(damage)					
						elseif (tarT == "Military") then
							humanoid:TakeDamage(damage)
						elseif (tarT == "Guard") then
							humanoid:TakeDamage(damage)
						elseif (tarT == "Admission") then
							humanoid:TakeDamage(damage)
						elseif (tarT == "Police") then
							humanoid:TakeDamage(damage)
						elseif (tarT == "Mayor") then
							humanoid:TakeDamage(damage)
						end
					end
					
					if (pT == "Civilian") then
						if (tarT == "Guard") then
							humanoid:TakeDamage(damage)
						elseif (tarT == "Admission") then
							humanoid:TakeDamage(damage)
						elseif (tarT == "President") then
							humanoid:TakeDamage(damage)					
						elseif (tarT == "Military") then
							humanoid:TakeDamage(damage)
						elseif (tarT == "Guard") then
							humanoid:TakeDamage(damage)
						elseif (tarT == "Admission") then
							humanoid:TakeDamage(damage)
						elseif (tarT == "Police") then
							humanoid:TakeDamage(damage)
						elseif (tarT == "Mayor") then
							humanoid:TakeDamage(damage)
						end
					end
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
