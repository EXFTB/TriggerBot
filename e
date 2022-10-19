------------------------------------------------------------
--OLD VERSION

local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
local Players = game:FindService("Players") --idk why its findservice instead of GetService
local Enabled = false

if Enabled == true then
    repeat wait()
        local target = mouse.Target	
            if target then
                if target.Parent:IsA("Model") then
                    for i,v in pairs(Players:GetChildren()) do --i dk why u used getchildren() instead of getplayers() but ok
                        if v.Name == target.Parent.Name or v.Name == target.Parent.Parent.Name then
                            mouse1click()
                        end
                    end
                end
            end
    until Enabled == false
end

---------------MY VERSION---------------------

local Client = game.Players.LocalPlayer
local Mouse = Client:GetMouse() --needs to be used for Mouse.Target obviously duhhh whoever uses GetMouse(); your gay ok
local Players = game:GetService('Players')
local RService = game:GetService('RunService') --no im not using RunService cry abt it lol
local TriggerShootEnabled = false

RService.HeartBeat:Connect(function()--more efficient
    if TriggerShootEnabled then
    local TriggerShootTarget = Mouse.Target --aka woever u hold ur mouse on becomes the target that it clicks on
    if TriggerShootTarget then
        if TriggerShootTarget.Parent:IsA('Model') then
            for Index, Value in pairs(Players:GetPlayers()) do  --WOOWOWOW GET PLAYERS :)))))))))
                if Value.Name == TriggerShootTarget.Parent.Name == TriggerShootTarget.Parent.Parent.Name then
                    mouse1click() --wow a click!!
                    end
                end
            end
        end
    end
end)
