--// Tb
local AA = {
    Enabled = true,
    NoPrediction = true
}

--// Settings
getgenv().Keybind = Enum.KeyCode.Z
getgenv().Speed = -0.165

--// Vars
local ax = true
local enabled = false 
local RunServce = game:GetService("RunService")

--// Main shit
game:service('UserInputService').InputBegan:connect(function(Keybind, C)
    if C then return end
    if Keybind.KeyCode == getgenv().Keybind then
    if AA.NoPrediction == true and AA.Enabled == true then
        enabled = not enabled
    end
    end
end)
RunServce.Heartbeat:Connect(function()
if enabled and ax then
local v = game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity
game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(v)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + game.Players.LocalPlayer.Character.Humanoid.MoveDirection * -getgenv().Speed 
end
end)

--local Pos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
