--[[
  Decompiled using Federal#9999's decompiler. Output might not be 100% accurate 
]]

game.StarterGui:SetCore("SendNotification", {
  Title = "GuapWare.cc ",
  Text = "Loaded."
})
function makemarker(a, b, c, d)
  Instance.new("BillboardGui", a).Name = "PP"
  Instance.new("BillboardGui", a).Adornee = b
  Instance.new("BillboardGui", a).Size = UDim2.new(d, Size2, d, Size2)
  Instance.new("BillboardGui", a).AlwaysOnTop = true
  Instance.new("Frame", (Instance.new("BillboardGui", a))).Size = UDim2.new(4, 0, 4, 0)
  Instance.new("Frame", (Instance.new("BillboardGui", a))).BackgroundTransparency = 0.4
  Instance.new("Frame", (Instance.new("BillboardGui", a))).BackgroundColor3 = c
  Instance.new("UICorner", (Instance.new("Frame", (Instance.new("BillboardGui", a))))).CornerRadius = UDim.new(0, 0)
  return (Instance.new("BillboardGui", a))
end
function noob(a)
  repeat
    wait()
  until not nil
  makemarker(va, a.Character:WaitForChild("LowerTorso"), Color3.fromRGB(0), 0, 0).Name = a.Name
  a.CharacterAdded:connect(function(a)
    va.Adornee = a:WaitForChild("LowerTorso")
  end)
  Instance.new("TextLabel", (makemarker(va, a.Character:WaitForChild("LowerTorso"), Color3.fromRGB(0), 0, 0))).BackgroundTransparency = 1
  Instance.new("TextLabel", (makemarker(va, a.Character:WaitForChild("LowerTorso"), Color3.fromRGB(0), 0, 0))).Position = UDim2.new(0, 0, 0, -50)
  Instance.new("TextLabel", (makemarker(va, a.Character:WaitForChild("LowerTorso"), Color3.fromRGB(0), 0, 0))).Size = UDim2.new(0, 0, 0, 0)
  Instance.new("TextLabel", (makemarker(va, a.Character:WaitForChild("LowerTorso"), Color3.fromRGB(0), 0, 0))).Font = Enum.Font.SourceSansSemibold
  Instance.new("TextLabel", (makemarker(va, a.Character:WaitForChild("LowerTorso"), Color3.fromRGB(0), 0, 0))).TextSize = 14
  Instance.new("TextLabel", (makemarker(va, a.Character:WaitForChild("LowerTorso"), Color3.fromRGB(0), 0, 0))).TextColor3 = Color3.new(1, 1, 1)
  Instance.new("TextLabel", (makemarker(va, a.Character:WaitForChild("LowerTorso"), Color3.fromRGB(0), 0, 0))).TextStrokeTransparency = 0
  Instance.new("TextLabel", (makemarker(va, a.Character:WaitForChild("LowerTorso"), Color3.fromRGB(0), 0, 0))).TextYAlignment = Enum.TextYAlignment.Bottom
  Instance.new("TextLabel", (makemarker(va, a.Character:WaitForChild("LowerTorso"), Color3.fromRGB(0), 0, 0))).Text = "Name: " .. a.Name
  Instance.new("TextLabel", (makemarker(va, a.Character:WaitForChild("LowerTorso"), Color3.fromRGB(0), 0, 0))).ZIndex = 10
  spawn(function()
    while not nil do
      if not nil then
        vb.Text = va.Name .. " | Bounty: " .. tostring(va:WaitForChild("leaderstats").Wanted.Value) .. " | " .. tostring(math.floor(va.Character:WaitForChild("Humanoid").Health))
      end
    end
  end)
end
for fp = 1, #game.Players:GetPlayers() do
  if game.Players:GetPlayers()[fp] ~= game.Players.LocalPlayer then
    noob(game.Players:GetPlayers()[fp])
  end
end
game.Players.PlayerAdded:connect(function(a)
  noob(a)
end)
spawn(function()
  va.Anchored = true
  va.CanCollide = false
  va.Size = Vector3.new(0.3, 0.3, 0.3)
  va.Transparency = 1
  makemarker(va, va, Color3.fromRGB(151, 0, 0), 0.15, 0)
end)
game:GetService("UserInputService").InputBegan:Connect(function(a)
  if a.UserInputType == Enum.UserInputType.MouseButton2 then
    va = true
    vb = getClosestPlayerToCursor()
    game.StarterGui:SetCore("SendNotification", {
      Title = "GuapWare.cc",
      Text = "Target: " .. tostring(vb.Name)
    })
  end
end)
game:GetService("UserInputService").InputEnded:Connect(function(a)
  if a.UserInputType == Enum.UserInputType.MouseButton2 then
    va = false
  end
end)
function getClosestPlayerToCursor()
  for fg, fh in pairs(game.Players:GetPlayers()) do
    if fh ~= game.Players.LocalPlayer and fh.Character and not math.huge and fh.Character.Humanoid.Health ~= 0 and not math.huge and math.huge >= Vector2.new(va:WorldToViewportPoint(fh.Character.PrimaryPart.Position).X, va:WorldToViewportPoint(fh.Character.PrimaryPart.Position).Y) - Vector2.new(vb.X, vb.Y).magnitude then
    end
  end
  return fh
end
game:GetService("RunService").Stepped:connect(function()
  if not nil and not nil and not vb.Character then
    vc.CFrame = CFrame.new(2 + 3)
  else
    vc.CFrame = CFrame.new(0, 9999, 0)
  end
end)
setreadonly(getrawmetatable(game), false)
getrawmetatable(game).__namecall = newcclosure(function()
  if not {
    ...
  } and getnamecallmethod() == "FireServer" and {
    ...
  }[2] == "UpdateMousePos" then
    return vd(unpack({
      ...
    }))
  end
  return vd(...)
end)
