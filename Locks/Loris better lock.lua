
--[[
lorislorislorislorislorislorislorislorislorislorislorisloris
slorislorislorislorislorislorislorislorislorislorislorisloris
islorislorislorislorislorislorislorislorislorislorislorislois
lorislorislorislorislorislorislorislorislorislorislorisloris
slorislorislorislorislorislorislorislorislorislorislorisloris
slorislorislorislorislorislorislorislorislorislorislorisloris
]]



 getgenv().Key = Enum.KeyCode.Q
getgenv().Prediction = 0.1325
    getgenv().AirshotFunccc = true
    getgenv().Partz = "UpperTorso" -- LowerTorso, HumanoidRootPart,Head,UpperTorso
    

    
local Locking = false
local Letter = Drawing.new("Text")
Letter.Text = ("Uv") --- stands for underground vault
Letter.Size = 18
Letter.Font = Drawing.Fonts.Monospace
Letter.Color = Color3.fromRGB(255,255,255)


    
        local guimain = Instance.new("Folder", game.CoreGui)
        local CC = game:GetService"Workspace".CurrentCamera
    local LocalMouse = game.Players.LocalPlayer:GetMouse()
        local Locking = false
    
        

    function x(tt,tx,cc)
    game.StarterGui:SetCore("SendNotification", {
        Title = tt;
        Text = tx;
        Duration = cc;
        
    })
end



        local UserInputService = game:GetService("UserInputService")

    UserInputService.InputBegan:Connect(function(keygo,ok)
           if (not ok) then
           if (keygo.KeyCode == getgenv().Key) then
               Locking = not Locking
               if Locking then
               Plr =  getClosestPlayerToCursor()
                x("Yun", ""..Plr.Character.Humanoid.DisplayName, 3)
elseif not Locking then
        
                       x("Yun", "Unlocked", 3)
     
         
end
end
end
end)
    function getClosestPlayerToCursor()
        local closestPlayer
        local shortestDistance = 137

        for i, v in pairs(game.Players:GetPlayers()) do
            if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health ~= 0 and v.Character:FindFirstChild("LowerTorso") then
                local pos = CC:WorldToViewportPoint(v.Character.PrimaryPart.Position)
                local magnitude = (Vector2.new(pos.X, pos.Y) - Vector2.new(LocalMouse.X, LocalMouse.Y)).magnitude
                if magnitude < shortestDistance then
                    closestPlayer = v
                    shortestDistance = magnitude
                end
            end
        end
        return closestPlayer
    end



    
    

    local rawmetatable = getrawmetatable(game)
    local old = rawmetatable.__namecall
    setreadonly(rawmetatable, false)
    rawmetatable.__namecall = newcclosure(function(...)
        local args = {...}
        if Locking and getnamecallmethod() == "FireServer" and args[2] == "UpdateMousePos" then
            args[3] = Plr.Character[getgenv().Partz].Position+(Plr.Character[getgenv().Partz].Velocity*Prediction)
            return old(unpack(args))
        end
        return old(...)
    end)


game.RunService.Stepped:Connect(function()
    if Plr ~= nil and Locking then
         local Vector, OnScreen = workspace.CurrentCamera:worldToViewportPoint(Plr.Character[getgenv().Partz].Position+(Plr.Character[getgenv().Partz].Velocity*Prediction))
         if OnScreen then
        Letter.Visible = true
        Letter.Position = Vector2.new(Vector.X,Vector.Y)
        end
        elseif not Locking then
            Letter.Visible = false
        end
        
end)

if getgenv().AirshotFunccc == true then

            if Plr.Character.Humanoid.Jump == true and Plr.Character.Humanoid.FloorMaterial == Enum.Material.Air then
                getgenv().Partz = "RightFoot"
            else
                Plr.Character:WaitForChild("Humanoid").StateChanged:Connect(function(old,new)
                    if new == Enum.HumanoidStateType.Freefall then
                    getgenv().Partz = "RightFoot"
                    else
                        getgenv().Partz = "LowerTorso"
                    end
                end)
            end
        end
