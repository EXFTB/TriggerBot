			local player = game.Players.LocalPlayer
			local mouse = player:GetMouse()
			local Players = game:FindService("Players")

			if Enabled == true then
				repeat wait()
					local target = mouse.Target	
						if target then
							if target.Parent:IsA("Model") then
								for i,v in pairs(Players:GetChildren()) do
									if v.Name == target.Parent.Name or v.Name == target.Parent.Parent.Name then
										mouse1click()
									end
								end
							end
						end
				until Enabled == false
			end
