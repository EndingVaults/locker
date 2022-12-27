local amongus  = game:GetObjects("rbxassetid://6686376004")[1]
local target
local mouse = game.Players.LocalPlayer:GetMouse()
local runservice = game:GetService("RunService")

----pro lock
amongus.Parent = game.Workspace
amongus.CanCollide = false
amongus.Size = Vector3.new(4,4,4)
-----------------
local enabled = false
local prediction = 0.121


---------------------

function getclosest()
    local target
    local maxdis = math.huge
    for i,v in pairs(game.Players:GetPlayers()) do
        if v.Character and v ~= game.Players.LocalPlayer and v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health ~= 1  then
            local pos = game.Workspace.CurrentCamera:WorldToViewportPoint(v.Character.HumanoidRootPart.Position)
            local mag = (Vector2.new(pos.X, pos.Y)- Vector2.new(mouse.X, mouse.Y)).Magnitude
            if maxdis > mag then
                maxdis = mag
                target = v
            end
        end
    end
    return target
end

mouse.KeyDown:Connect(function(k)
    if k ~= "q" then return end
    if enabled then
        enabled = false
    else
        enabled = true 
        target = getclosest()
    end   
end)

runservice.RenderStepped:Connect(function()
    if enabled and  target ~= nil then
    amongus.CFrame = target.Character.HumanoidRootPart.CFrame
    else
        amongus.CFrame = CFrame.new(999,9999,999)
    end
end)

local mt = getrawmetatable(game)
local old = mt.__namecall
setreadonly(mt, false)
mt.__namecall = newcclosure(function(...)
    local args = {...}
    if enabled and getnamecallmethod() == "FireServer" and args[2] == "UpdateMousePos" then
        args[3] = target.Character.HumanoidRootPart.Position+(target.Character.HumanoidRootPart.Velocity*prediction)
        return old(unpack(args))
    end
    return old(...)
end)
