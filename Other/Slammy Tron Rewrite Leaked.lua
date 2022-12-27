local windows = loadstring(game:HttpGet("https://raw.githubusercontent.com/ZepsyyCodesLUA/Synapse-Library-OBFUSCATED-/main/Source.lua"))()
local win = windows:Create({
    Title = "Slammy Tron ",
    Game = "Dahood"
})

local tab = win:NewTab({
    Title = "Main"
})


tab:Button({
    Title = "Slammy tron Rewrite (Q)",
    Callback = function()
        --[[

░██████╗██╗░░░░░░█████╗░███╗░░░███╗███╗░░░███╗██╗░░░██╗  ░█████╗░███╗░░██╗  ████████╗░█████╗░██████╗░
██╔════╝██║░░░░░██╔══██╗████╗░████║████╗░████║╚██╗░██╔╝  ██╔══██╗████╗░██║  ╚══██╔══╝██╔══██╗██╔══██╗
╚█████╗░██║░░░░░███████║██╔████╔██║██╔████╔██║░╚████╔╝░  ██║░░██║██╔██╗██║  ░░░██║░░░██║░░██║██████╔╝
░╚═══██╗██║░░░░░██╔══██║██║╚██╔╝██║██║╚██╔╝██║░░╚██╔╝░░  ██║░░██║██║╚████║  ░░░██║░░░██║░░██║██╔═══╝░
██████╔╝███████╗██║░░██║██║░╚═╝░██║██║░╚═╝░██║░░░██║░░░  ╚█████╔╝██║░╚███║  ░░░██║░░░╚█████╔╝██║░░░░░
╚═════╝░╚══════╝╚═╝░░╚═╝╚═╝░░░░░╚═╝╚═╝░░░░░╚═╝░░░╚═╝░░░  ░╚════╝░╚═╝░░╚══╝  ░░░╚═╝░░░░╚════╝░╚═╝░░░░░

]]
-- Toggle
getgenv().Target = true
-- Configuration
    getgenv().Key = Enum.KeyCode.Q
getgenv().Prediction = 0.173
getgenv().ChatMode = false
getgenv().NotifMode = true
    getgenv().PartMode = true
    getgenv().AirshotFunccc = true  
    getgenv().Partz = "LowerTorso"
    --
    _G.Types = {
        Ball = Enum.PartType.Ball,
        Block = Enum.PartType.Block, 
        Cylinder = Enum.PartType.Cylinder
    }
    
    --variables                 
    	local Tracer = Instance.new("Part", game.Workspace)
    Tracer.Name = "L"	
    Tracer.Anchored = true		
    Tracer.CanCollide = false
    Tracer.Transparency = 0.8
    Tracer.Parent = game.Workspace	
    Tracer.Shape = _G.Types.Ball
    Tracer.Size = Vector3.new(5,5,5)
    Tracer.Color = Color3.fromRGB(255, 255, 255)
    
    --
    local plr = game.Players.LocalPlayer
local mouse = plr:GetMouse()
local Runserv = game:GetService("RunService")

circle = Drawing.new("Circle")
circle.Color = Color3.fromRGB(255,255,255)
circle.Thickness = 2
circle.NumSides = 732
circle.Radius = 9999
circle.Thickness = 0
circle.Transparency = 0.7
circle.Visible = false
circle.Filled = false

Runserv.RenderStepped:Connect(function()
    circle.Position = Vector2.new(mouse.X,mouse.Y+35)
end)
    
    	local guimain = Instance.new("Folder", game.CoreGui)
    	local CC = game:GetService"Workspace".CurrentCamera
    local LocalMouse = game.Players.LocalPlayer:GetMouse()
    	local Locking = false
    
    	
    --
    if getgenv().valiansh == true then
       
                        game.StarterGui:SetCore("SendNotification", {
                   Title = "Slammy Tron Rewrite",
                   Text = "Already Loaded!",
                   Duration = 5
        
                   })
        return
    end
    
    getgenv().valiansh = true
  
        local UserInputService = game:GetService("UserInputService")

    UserInputService.InputBegan:Connect(function(keygo,ok)
           if (not ok) then
           if (keygo.KeyCode == getgenv().Key) then
               if getgenv().Target == true then
               Locking = not Locking
               
               if Locking then
               Plr =  getClosestPlayerToCursor()
                if getgenv().ChatMode then
        local A_1 = "Target: "..tostring(Plr.Character.Humanoid.DisplayName) local A_2 = "All" local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest Event:FireServer(A_1, A_2) 
        	end	
               if getgenv().NotifMode then
    			game.StarterGui:SetCore("SendNotification", {
        Title = "Slammy Tron Rewrite";
        Text = "Target: "..tostring(Plr.Character.Humanoid.DisplayName);
    
    })
    end
    elseif not Locking then
         if getgenv().ChatMode then
        local A_1 = "Unlocked!" local A_2 = "All" local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest Event:FireServer(A_1, A_2) 
        	end	
        if getgenv().NotifMode then
                        game.StarterGui:SetCore("SendNotification", {
                   Title = "Slammy Tron Rewrite",
                   Text = "Unlocked",
                   Duration = 5
               })
           elseif getgenv().Target == false then
                        game.StarterGui:SetCore("SendNotification", {
                   Title = "Slammy Tron Rewrite",
                   Text = "Target isn't enabled",
                   Duration = 5
     
                   })
               
               end
                  
 
 end     end   
end
end
end)
	
	function getClosestPlayerToCursor()
		local closestPlayer
		local shortestDistance = circle.Radius

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
--
if getgenv().PartMode then
	game:GetService"RunService".Stepped:connect(function()
		if Locking and Plr.Character and Plr.Character:FindFirstChild("LowerTorso") then
			Tracer.CFrame = CFrame.new(Plr.Character.LowerTorso.Position+(Plr.Character.LowerTorso.Velocity*Prediction))
		else
			Tracer.CFrame = CFrame.new(0, 9999, 0)

		end
	end)
end

    
    
    --
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
	if getgenv.AirshotFunccc then
	if Plr.Character.Humanoid.Jump == true and Plr.Character.Humanoid.FloorMaterial == Enum.Material.Air then
        getgenv().Partz = "RightFoot"
    else
        getgenv().Partz = "RightFoot"
	end
end
    end
})







tab:TextBox({
    Title = "Prediction",
    PlaceHolder = "Here!",

    Callback = function(bool)
        getgenv().Prediction = bool
    end
})

tab:Button({
    Title = "Camlock (C)",
    Callback = function()
    

getgenv().Prediction = 0.15038
getgenv().AimPart = "HumanoidRootPart"
getgenv().Key = "C"
getgenv().DisableKey = "P"

getgenv().FOV = true
getgenv().ShowFOV = false
getgenv().FOVSize = 100

--// Variables (Service)

local Players = game:GetService("Players")
local RS = game:GetService("RunService")
local WS = game:GetService("Workspace")
local GS = game:GetService("GuiService")
local SG = game:GetService("StarterGui")

--// Variables (regular)

local LP = Players.LocalPlayer
local Mouse = LP:GetMouse()
local Camera = WS.CurrentCamera
local GetGuiInset = GS.GetGuiInset

local AimlockState = true
local Locked
local Victim

local SelectedKey = getgenv().Key
local SelectedDisableKey = getgenv().DisableKey

--// Notification function

function Notify(tx)
    SG:SetCore("SendNotification", {
        Title = "Slammy Tron Rewrite",
        Text = tx,
        Duration = 5
    })
end

--// Check if aimlock is loaded

if getgenv().Loaded == true then
    Notify("Aimlock is already loaded!")
    return
end

getgenv().Loaded = true

--// FOV Circle

local fov = Drawing.new("Circle")
fov.Filled = false
fov.Transparency = 1
fov.Thickness = 1
fov.Color = Color3.fromRGB(255, 255, 0)
fov.NumSides = 1000

--// Functions

function update()
    if getgenv().FOV == true then
        if fov then
            fov.Radius = getgenv().FOVSize * 2
            fov.Visible = getgenv().ShowFOV
            fov.Position = Vector2.new(Mouse.X, Mouse.Y + GetGuiInset(GS).Y)

            return fov
        end
    end
end

function WTVP(arg)
    return Camera:WorldToViewportPoint(arg)
end

function WTSP(arg)
    return Camera.WorldToScreenPoint(Camera, arg)
end

function getClosest()
    local closestPlayer
    local shortestDistance = math.huge

    for i, v in pairs(game.Players:GetPlayers()) do
        local notKO = v.Character:WaitForChild("BodyEffects")["K.O"].Value ~= true
        local notGrabbed = v.Character:FindFirstChild("GRABBING_COINSTRAINT") == nil
        
        if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health ~= 0 and v.Character:FindFirstChild(getgenv().AimPart) and notKO and notGrabbed then
            local pos = Camera:WorldToViewportPoint(v.Character.PrimaryPart.Position)
            local magnitude = (Vector2.new(pos.X, pos.Y) - Vector2.new(Mouse.X, Mouse.Y)).magnitude
            
            if (getgenv().FOV) then
                if (fov.Radius > magnitude and magnitude < shortestDistance) then
                    closestPlayer = v
                    shortestDistance = magnitude
                end
            else
                if (magnitude < shortestDistance) then
                    closestPlayer = v
                    shortestDistance = magnitude
                end
            end
        end
    end
    return closestPlayer
end
 
--// Checks if key is down

Mouse.KeyDown:Connect(function(k)
    SelectedKey = SelectedKey:lower()
    SelectedDisableKey = SelectedDisableKey:lower()
    if k == SelectedKey then
        if AimlockState == true then
            Locked = not Locked
            if Locked then
                Victim = getClosest()

                Notify("Locked onto: "..tostring(Victim.Character.Humanoid.DisplayName))
            else
                if Victim ~= nil then
                    Victim = nil

                    Notify("Unlocked!")
                end
            end
        else
            Notify("Aimlock is not enabled!")
        end
    end
    if k == SelectedDisableKey then
        AimlockState = not AimlockState
    end
end)

--// Loop update FOV and loop camera lock onto target

RS.RenderStepped:Connect(function()
    update()
    if AimlockState == true then
        if Victim ~= nil then
            Camera.CFrame = CFrame.new(Camera.CFrame.p, Victim.Character[getgenv().AimPart].Position + Victim.Character[getgenv().AimPart].Velocity*getgenv().Prediction)
        end
    end
end)
	while wait() do
        if getgenv().AutoPrediction == true then
        local pingvalue = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
        local split = string.split(pingvalue,'(')
        local ping = tonumber(split[1])
            if ping < 225 then
            getgenv().Prediction = 1.4
        elseif ping < 215 then
            getgenv().Prediction = 1.2
	    elseif ping < 205 then
            getgenv().Prediction = 1.0
	    elseif ping < 190 then
            getgenv().Prediction = 0.10
        elseif ping < 180 then
            getgenv().Prediction = 0.12
	    elseif ping < 170 then
            getgenv().Prediction = 0.15
	    elseif ping < 160 then
            getgenv().Prediction = 0.18
	    elseif ping < 150 then
            getgenv().Prediction = 0.110
        elseif ping < 140 then
            getgenv().Prediction = 0.113
        elseif ping < 130 then
            getgenv().Prediction = 0.116
        elseif ping < 120 then
            getgenv().Prediction = 0.120
        elseif ping < 110 then
            getgenv().Prediction = 0.124
        elseif ping < 105 then
            getgenv().Prediction = 0.127
        elseif ping < 90 then
            getgenv().Prediction = 0.130
        elseif ping < 80 then
            getgenv().Prediction = 0.133
        elseif ping < 70 then
            getgenv().Prediction = 0.136
        elseif ping < 60 then
            getgenv().Prediction = 0.15038
        elseif ping < 50 then
            getgenv().Prediction = 0.15038
        elseif ping < 40 then
            getgenv().Prediction = 0.145
        elseif ping < 30 then
            getgenv().Prediction = 0.155
        elseif ping < 20 then
            getgenv().Prediction = 0.157
        end
        end
	end    
    end
})

tab:Button({
    Title = "Universal Silent Aim",
    Callback = function()
    getgenv().Prediction =  (  0  )

getgenv().FOV =  (  160  )   -- [ FOV RADIUS: Increases Or Decreases FOV Radius ]

getgenv().AimKey =  (  "c"  )  -- [ TOGGLE KEY: Toggles Silent Aim On And Off ]

local SilentAim = true
local NeckOffSet = Vector3.new(0,-.5,0)
local Players = game:GetService("Players")
local LocalPlayer = game:GetService("Players").LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local Camera = game:GetService("Workspace").CurrentCamera
local connections = getconnections(game:GetService("LogService").MessageOut)
for _, v in ipairs(connections) do
	v:Disable()
end

getgenv = getgenv
Drawing = Drawing
getrawmetatable = getrawmetatable
getconnections = getconnections
hookmetamethod = hookmetamethod

local FOV_CIRCLE = Drawing.new("Circle")
FOV_CIRCLE.Visible = true
FOV_CIRCLE.Filled = false
FOV_CIRCLE.Thickness = 1
FOV_CIRCLE.Transparency = 3
FOV_CIRCLE.Color = Color3.new(0, 1, 0)
FOV_CIRCLE.Radius = getgenv().FOV
FOV_CIRCLE.Position = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)

local Options = {
	Torso = "HumanoidRootPart";
	Head = "Head";
}

local function MoveFovCircle()
	pcall(function()
		local DoIt = true
		spawn(function()
			while DoIt do task.wait()
				FOV_CIRCLE.Position = Vector2.new(UserInputService:GetMouseLocation().X, UserInputService:GetMouseLocation().Y)
			end
		end)
	end)
end coroutine.wrap(MoveFovCircle)()

Mouse.KeyDown:Connect(function(KeyPressed)
	if KeyPressed == (getgenv().AimKey:lower()) then
		if SilentAim == false then
			FOV_CIRCLE.Color = Color3.new(0, 1, 0)
			SilentAim = true
		elseif SilentAim == true then
			FOV_CIRCLE.Color = Color3.new(1, 0, 0)
			SilentAim = false
		end
	end
end)
Mouse.KeyDown:Connect(function(Rejoin)
	if Rejoin == "=" then
		local LocalPlayer = game:GetService("Players").LocalPlayer
		game:GetService("TeleportService"):Teleport(game.PlaceId, LocalPlayer)
	end
end)

getgenv().FORCE_REPEAT = {
  "FORIINDEXRETURNADMININGAME";
	"AimLockPsycho";
	"proboy32007";
	"autofarmaccountgrind";
}

local function InRadius()
	local Target = nil
	local Distance = 9e9
	local Players = game:GetService("Players")
	local LocalPlayer = game:GetService("Players").LocalPlayer
	local Camera = game:GetService("Workspace").CurrentCamera
	for _, v in pairs(Players:GetPlayers()) do 
		if not table.find(getgenv().FORCE_REPEAT, v.Name) then
			if v ~= LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("Humanoid") and v.Character:FindFirstChild("Humanoid").Health > 0 then
				local Enemy = v.Character	
				local CastingFrom = CFrame.new(Camera.CFrame.Position, Enemy[Options.Torso].CFrame.Position) * CFrame.new(0, 0, -4)
				local RayCast = Ray.new(CastingFrom.Position, CastingFrom.LookVector * 9000)
				local World, ToSpace = game:GetService("Workspace"):FindPartOnRayWithIgnoreList(RayCast, {LocalPlayer.Character:FindFirstChild("Head")})
				local RootWorld = (Enemy[Options.Torso].CFrame.Position - ToSpace).magnitude
				if RootWorld < 4 then		
					local RootPartPosition, Visible = Camera:WorldToViewportPoint(Enemy[Options.Torso].Position)
					if Visible then
						local Real_Magnitude = (Vector2.new(Mouse.X, Mouse.Y) - Vector2.new(RootPartPosition.X, RootPartPosition.Y)).Magnitude
						if Real_Magnitude < Distance and Real_Magnitude < FOV_CIRCLE.Radius then
							Distance = Real_Magnitude
							Target = Enemy
						end
					end
				end
			end
		end
	end
	return Target
end

local oldIndex = nil
oldIndex = hookmetamethod(game, "__index", function(self, Index, Screw)
	local Screw = oldIndex(self, Index)
	local CALC = Mouse
	local GG = "hit"
	local MONCLER = GG
    if SilentAim then
	if self == CALC and (Index:lower() == MONCLER) then	
		local Enemy = InRadius()
		local Camera = game:GetService("Workspace").CurrentCamera
		if Enemy ~= nil and Enemy[Options.Head] and Enemy:FindFirstChild("Humanoid") and Enemy:FindFirstChild("Humanoid").Health > 0 then
			local Madox = Enemy[Options.Head]
			local Formulate = Madox.CFrame + (Madox.AssemblyLinearVelocity * getgenv().Prediction + NeckOffSet)	
			return (Index:lower() == MONCLER and Formulate)
		end
		return Screw
	end
    end
	return oldIndex(self, Index, Screw)
end)

--Farewell Atman, Nosss, Toru.
    
    end
})

local tab = win:NewTab({
    Title = "Misc"
})
tab:Button({
    Title = "Cframe (Z)",
    Callback = function()
            	repeat
		wait()
	until game:IsLoaded()
	local L_134_ = game:service('Players')
	local L_135_ = L_134_.LocalPlayer
	repeat
		wait()
	until L_135_.Character
	local L_136_ = game:service('UserInputService')
	local L_137_ = game:service('RunService')
	getgenv().Multiplier = 1
	local L_138_ = true
	local L_139_
	L_136_.InputBegan:connect(function(L_140_arg0)
		if L_140_arg0.KeyCode == Enum.KeyCode.LeftBracket then
			Multiplier = Multiplier + 0.01
			print(Multiplier)
			wait(0.2)
			while L_136_:IsKeyDown(Enum.KeyCode.LeftBracket) do
				wait()
				Multiplier = Multiplier + 0.01
				print(Multiplier)
			end
		end
		if L_140_arg0.KeyCode == Enum.KeyCode.RightBracket then
			Multiplier = Multiplier - 0.01
			print(Multiplier)
			wait(0.2)
			while L_136_:IsKeyDown(Enum.KeyCode.RightBracket) do
				wait()
				Multiplier = Multiplier - 0.01
				print(Multiplier)
			end
		end
		if L_140_arg0.KeyCode == Enum.KeyCode.Z then
			L_138_ = not L_138_
			if L_138_ == true then
				repeat
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + game.Players.LocalPlayer.Character.Humanoid.MoveDirection * Multiplier
					game:GetService("RunService").Stepped:wait()
				until L_138_ == false
			end
		end
	end)
    end
})

tab:Slider({
    Title = "Cframe Speed Changer",
    MinValue = 1,
    Def = 1,
    MaxValue = 7,
    callback = function(s)
        getgenv().Multiplier = s
    end
})

tab:Button({
    Title = "Cframe fixer",
    Callback = function()
            for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
        if v:IsA("Script") and v.Name ~= "Health" and v.Name ~= "Sound" and v:FindFirstChild("LocalScript") then
            v:Destroy()
        end
    end
    game.Players.LocalPlayer.CharacterAdded:Connect(function(char)
        repeat
            wait()
        until game.Players.LocalPlayer.Character
        char.ChildAdded:Connect(function(child)
            if child:IsA("Script") then 
                wait(0.1)
                if child:FindFirstChild("LocalScript") then
                    child.LocalScript:FireServer()
                end
            end
        end)
    end)
    end
})

tab:Button({
    Title = "Antistomp (Toggle M)",
    Callback = function()
        game.Players.LocalPlayer:GetMouse().KeyDown:Connect(function(KeyPressed)
 if KeyPressed == "m" then
    for L_170_forvar0, L_171_forvar1 in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
        if L_171_forvar1:IsA("BasePart") then
            L_171_forvar1:Destroy()
        end
    end
    end
end)
    end
})



tab:TextBox({
    Title = "FOV Changer",
    PlaceHolder = "Change Here!",

    Callback = function(v)
        workspace.CurrentCamera.FieldOfView = v;
    end
})

tab:Button({
    Title = "No Jump Cooldown",
    Callback = function()
    if not game.IsLoaded(game) then 
        game.Loaded.Wait(game.Loaded);
    end

    local IsA = game.IsA;
    local newindex = nil 

    newindex = hookmetamethod(game, "__newindex", function(self, Index, Value)
        if not checkcaller() and IsA(self, "Humanoid") and Index == "JumpPower" then 
            return
        end

        return newindex(self, Index, Value);
    end)    
    end
})

tab:Button({
    Title = "AntiSlow (H)",
    Callback = function()
      repeat
		wait()
	until game:IsLoaded()
	getgenv().Fix = true
	getgenv().TeclasWS = {
		["tecla1"] = "nil",
		["tecla2"] = "nil",
		["tecla3"] = "H"
	}
	local L_121_ = game:GetService("Players")
	local L_122_ = game:GetService("StarterGui") or "son una mierda"
	local L_123_ = L_121_.LocalPlayer
	local L_124_ = L_123_:GetMouse()
	local L_125_ = getrenv()._G
	local L_126_ = getrawmetatable(game)
	local L_127_ = L_126_.__newindex
	local L_128_ = L_126_.__index
	local L_129_ = 22
	local L_130_ = true
	function anunciar_atentado_terrorista(L_138_arg0)
		L_122_:SetCore("SendNotification", {
			Title = "AntiSlow",
			Text = L_138_arg0
		})
	end
	getgenv().TECHWAREWALKSPEED_LOADED = true
	wait(1.5)
	anunciar_atentado_terrorista("Press  " .. TeclasWS.tecla3 .. " to turn on/off antislow")
	L_124_.KeyDown:Connect(
            function(L_139_arg0)
		if L_139_arg0:lower() == TeclasWS.tecla1:lower() then
			L_129_ = L_129_ + 1
			anunciar_atentado_terrorista("播放器速度已提高 (speed = " .. tostring(L_129_) .. ")")
		elseif L_139_arg0:lower() == TeclasWS.tecla2:lower() then
			L_129_ = L_129_ - 1
			anunciar_atentado_terrorista("玩家的速度已降低 (speed = " .. tostring(L_129_) .. ")")
		elseif L_139_arg0:lower() == TeclasWS.tecla3:lower() then
			if L_130_ then
				L_130_ = false
				anunciar_atentado_terrorista("AntiSlow off")
			else
				L_130_ = true
				anunciar_atentado_terrorista("AntiSlow on")
			end
		end
	end
        )
	setreadonly(L_126_, false)
	L_126_.__index =
            newcclosure(
            function(L_140_arg0, L_141_arg1)
		local L_142_ = checkcaller()
		if L_141_arg1 == "WalkSpeed" and not L_142_ then
			return L_125_.CurrentWS
		end
		return L_128_(L_140_arg0, L_141_arg1)
	end
        )
	L_126_.__newindex =
            newcclosure(
            function(L_143_arg0, L_144_arg1, L_145_arg2)
		local L_146_ = checkcaller()
		if L_130_ then
			if L_144_arg1 == "WalkSpeed" and L_145_arg2 ~= 0 and not L_146_ then
				return L_127_(L_143_arg0, L_144_arg1, L_129_)
			end
		end
		return L_127_(L_143_arg0, L_144_arg1, L_145_arg2)
	end
        )
	setreadonly(L_126_, true)
	repeat
		wait()
	until game:IsLoaded()
	local L_131_ = game:service("Players")
	local L_132_ = L_131_.LocalPlayer
	repeat
		wait()
	until L_132_.Character
	local L_133_ = game:service("UserInputService")
	local L_134_ = game:service("RunService")
	local L_135_ = -0.27
	local L_136_ = false
	local L_137_
	L_133_.InputBegan:connect(
            function(L_147_arg0)
		if L_147_arg0.KeyCode == Enum.KeyCode.LeftBracket then
			L_135_ = L_135_ + 0.01
			print(L_135_)
			wait(0.2)
			while L_133_:IsKeyDown(Enum.KeyCode.LeftBracket) do
				wait()
				L_135_ = L_135_ + 0.01
				print(L_135_)
			end
		end
		if L_147_arg0.KeyCode == Enum.KeyCode.RightBracket then
			L_135_ = L_135_ - 0.01
			print(L_135_)
			wait(0.2)
			while L_133_:IsKeyDown(Enum.KeyCode.RightBracket) do
				wait()
				L_135_ = L_135_ - 0.01
				print(L_135_)
			end
		end
		if L_147_arg0.KeyCode == Enum.KeyCode.OP then
			L_136_ = not L_136_
			if L_136_ == true then
				repeat
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame +
                                game.Players.LocalPlayer.Character.Humanoid.MoveDirection * L_135_
					game:GetService("RunService").Stepped:wait()
				until L_136_ == false
			end
		end
	end
        )  
    end
})

tab:Button({
    Title = "No Fog",
    Callback = function()
      while true do
                wait()
                game.Lighting.FogEnd = 1000000000
                wait()
                end  
    end
})

tab:Button({
    Title = "No Recoil",
    Callback = function()
       local CurrentFocus = game:GetService("Workspace").CurrentCamera.CFrame
    game:GetService("Workspace").CurrentCamera:Destroy()
    local Instance = Instance.new("Camera", game:GetService("Workspace"))
    Instance.CameraSubject = game:GetService("Players").LocalPlayer.Character.Humanoid
    Instance.CameraType = Enum.CameraType.Custom
    Instance.CFrame = CurrentFocus 
    end
})

tab:Button({
    Title = "Zombie Animations",
    Callback = function()
    game.Players.LocalPlayer.Character.Animate:ClearAllChildren()
for _, v in pairs(game:GetObjects("rbxassetid://3924238625")[1]:Clone().Animate:GetChildren()) do
    v:Clone().Parent = game.Players.LocalPlayer.Character.Animate
end    
    end
})


tab:Button({
    Title = "Rejoin",
    Callback = function()
        local TeleportService = game:GetService("TeleportService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local Rejoin = coroutine.create(function()
    local Success, ErrorMessage = pcall(function()
        TeleportService:Teleport(game.PlaceId, LocalPlayer)
    end)

    if ErrorMessage and not Success then
        warn(ErrorMessage)
    end
end)

coroutine.resume(Rejoin)
    end
})

tab:Button({
    Title = "Underground AA (N)",
    Callback = function()
        local Toggled = false
local KeyCode = 'n'


function AA()
    local oldVelocity = game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity
    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(oldVelocity.X, -70, oldVelocity.Z)
    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(oldVelocity.X, oldVelocity.Y, oldVelocity.Z)
    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(oldVelocity.X, -70, oldVelocity.Z)
    game.Players.LocalPlayer.Character.Humanoid.HipHeight = 3.3
end

game:GetService('UserInputService').InputBegan:Connect(function(Key)
    if Key.KeyCode == Enum.KeyCode[KeyCode:upper()] and not game:GetService('UserInputService'):GetFocusedTextBox() then
        if Toggled then
            Toggled = false
            game.Players.LocalPlayer.Character.Humanoid.HipHeight = 2

        elseif not Toggled then
            Toggled = true

            while Toggled do
                AA()
                task.wait()
            end
        end
    end
end)
    end
})

tab:Button({
    Title = "Antibag",
    Callback = function()
        game.Players.LocalPlayer.Character["Christmas_Sock"]:Destroy()  
    end
})

tab:Button({
    Title = "Gun Chams",
    Callback = function()
        local Client = game.GetService(game, "Players").LocalPlayer
        Client.Character:FindFirstChildOfClass("Tool").Default.Material = Enum.Material.ForceField
        Client.Character:FindFirstChildOfClass("Tool").Default.BrickColor  = BrickColor.new(255, 255, 255)
  
        
    
    end
})

tab:Button({
    Title = "ESP",
    Callback = function()
    local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/trendyylol/roblox/main/Libraries/ESP/Pikahub"))()
local library = loadstring(game:HttpGet("https://pastebin.com/raw/U2HwmEyF"))()    
    end
})

tab:Toggle({
    Title = "Boxes",
    Description = "Enables Box ESP",
    Callback = function(bool)
        getgenv().PikaESPSettings.Box = bool
    end
})
tab:Toggle({
    Title = "Name",
    Description = "Enables Name ESP (dunno why it says Destory.XYZ",
    Callback = function(bool)
     getgenv().PikaESPSettings.Name = bool   
    end
})

tab:Toggle({
    Title = "Tracers",
    Description = "Enables Tracers ESP",
    Callback = function(bool)
     getgenv().PikaESPSettings.Tracers = bool   
    end
})

tab:Toggle({
    Title = "Tracers Follow Mouse",
    Description = "yeh",
    Callback = function(bool)
     getgenv().PikaESPSettings.UnlockTracers = bool   
    end
})

local tab = win:NewTab({
    Title = "Characteristics"
})

tab:Button({
    Title = "Headless",
    Callback = function()
        local L_393_ = game.Players.LocalPlayer.Character
    local L_394_ = L_393_:WaitForChild("Head")
    local L_395_ = L_394_:WaitForChild("face")
    L_395_.Transparency = 1 
    L_394_.Transparency = 1
    end
})

tab:Button({
    Title = "Korblox",
    Callback = function()
        local L_396_ = game.Players.LocalPlayer.Character
    local L_397_ = game.Players.LocalPlayer.Character
    local L_398_ = L_396_.Head
    local L_399_ = L_398_.face
    local L_400_ = L_397_.RightFoot
    local L_401_ = L_397_.RightLowerLeg
    local L_402_ = L_397_.RightUpperLeg
    local L_403_ = L_397_.LeftFoot
    local L_404_ = L_397_.LeftLowerLeg
    local L_405_ = L_397_.LeftUpperLeg
    
    -- Right
    L_400_.MeshId = "http://www.roblox.com/asset/?id=902942093"
    L_401_.MeshId = "http://www.roblox.com/asset/?id=902942093"
    L_402_.MeshId = "http://www.roblox.com/asset/?id=902942096"
    L_402_.TextureID = "http://roblox.com/asset/?id=902843398"
    L_400_.Transparency = 1
    L_401_.Transparency = 1
    
    end
})
tab:Button({
    Title = "Fat",
    Callback = function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/slammy1/fat/main/3"))() 
    end
})

tab:Button({
    Title = "Playful Vampire",
    Callback = function()
            local L_415_ = game.Players.LocalPlayer.Character
	local L_416_ = L_415_:WaitForChild("Head")
	local L_417_ = L_416_:WaitForChild("face")
	L_417_.Texture = "rbxassetid://2409281591"
    end
})
tab:Button({
    Title = "Beastmode red",
    Callback = function()
        local L_412_ = game.Players.LocalPlayer.Character
	local L_413_ = L_412_:WaitForChild("Head")
	local L_414_ = L_413_:WaitForChild("face")
	L_414_.Texture = "rbxassetid://127959433"
    end
})

tab:Button({
    Title = "Yum!",
    Callback = function()
            local L_415_ = game.Players.LocalPlayer.Character
	local L_416_ = L_415_:WaitForChild("Head")
	local L_417_ = L_416_:WaitForChild("face")
	L_417_.Texture = "rbxassetid://26018945"
    end
})

tab:Button({
    Title = "Super Super Happy Face",
    Callback = function()
            local L_415_ = game.Players.LocalPlayer.Character
	local L_416_ = L_415_:WaitForChild("Head")
	local L_417_ = L_416_:WaitForChild("face")
	L_417_.Texture = "rbxassetid://494290547"
    end
})
tab:Button({
    Title = "Prankster",
    Callback = function()
            local L_415_ = game.Players.LocalPlayer.Character
	local L_416_ = L_415_:WaitForChild("Head")
	local L_417_ = L_416_:WaitForChild("face")
	L_417_.Texture = "rbxassetid://20052028"
    end
})
tab:Button({
    Title = "Trouble Maker",
    Callback = function()
            local L_415_ = game.Players.LocalPlayer.Character
	local L_416_ = L_415_:WaitForChild("Head")
	local L_417_ = L_416_:WaitForChild("face")
	L_417_.Texture = "rbxassetid://22920500"
    end
})

tab:Button({
    Title = "Meanie",
    Callback = function()
           local L_415_ = game.Players.LocalPlayer.Character
	local L_416_ = L_415_:WaitForChild("Head")
	local L_417_ = L_416_:WaitForChild("face")
	L_417_.Texture = "rbxassetid://508490451"
    end
})

tab:Button({
    Title = "StitchFace",
    Callback = function()
            local L_415_ = game.Players.LocalPlayer.Character
	local L_416_ = L_415_:WaitForChild("Head")
	local L_417_ = L_416_:WaitForChild("face")
	L_417_.Texture = "rbxassetid://8329438"
    end
})

tab:Button({
    Title = "Madness",
    Callback = function()
            local L_415_ = game.Players.LocalPlayer.Character
	local L_416_ = L_415_:WaitForChild("Head")
	local L_417_ = L_416_:WaitForChild("face")
	L_417_.Texture = "rbxassetid://129900258"
    end
})

tab:Button({
    Title = "FE Korblox",
    Callback = function()
       game.Players.LocalPlayer.Character.RightUpperLeg:Destroy() 
    end
})

tab:Button({
    Title = "Body Chams",
    Callback = function()
               game.Players.LocalPlayer.Character.LeftHand.Material = "ForceField"
        game.Players.LocalPlayer.Character.RightHand.Material = "ForceField"
        game.Players.LocalPlayer.Character.LeftLowerArm.Material = "ForceField"
        game.Players.LocalPlayer.Character.RightLowerArm.Material = "ForceField"
        game.Players.LocalPlayer.Character.LeftUpperArm.Material = "ForceField"
        game.Players.LocalPlayer.Character.RightUpperArm.Material = "ForceField"
        game.Players.LocalPlayer.Character.LeftFoot.Material = "ForceField"
        game.Players.LocalPlayer.Character.RightFoot.Material = "ForceField"
        game.Players.LocalPlayer.Character.LeftLowerLeg.Material = "ForceField"
        game.Players.LocalPlayer.Character.RightLowerLeg.Material = "ForceField"
        game.Players.LocalPlayer.Character.UpperTorso.Material = "ForceField"
        game.Players.LocalPlayer.Character.LowerTorso.Material = "ForceField"
        game.Players.LocalPlayer.Character.LeftUpperLeg.Material = "ForceField"
        game.Players.LocalPlayer.Character.RightUpperLeg.Material = "ForceField"
        game.Players.LocalPlayer.Character.Head.Material = "ForceField"

    end
})
local tab = win:NewTab({
    Title = "Tp's"
})

tab:Button({
    Title = "Food",
    Callback = function()
        
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
        CFrame.new(-788.39318847656, -39.649200439453, -935.27795410156)
    end
})

tab:Button({
    Title = "Admin Base",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-874.903992, -32.6492004, -525.215698)
    end
})

tab:Button({
    Title = "Casino",
    Callback = function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-962.72345, 21.2549973, -186.814987, -0.0274876002, 2.91178949e-05, 0.999621451, -5.5798846e-06, 1, -2.92823333e-05, -0.999621451, -6.38268148e-06, -0.0274876002)
    end
})

tab:Button({
    Title = "Bank",
    Callback = function()
          game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-402.123718, 21.75, -283.988617, 0.0159681588, -0.000121377925, -0.999872446, -2.60148026e-05, 1, -0.000121808866, 0.999872506, 2.79565484e-05, 0.0159681737)
    end
})

local tab = win:NewTab({
    Title = "Autobuys"
})
tab:Button({
    Title = "PopCorn",
    Callback = function()
               local LocalPlayer = game:GetService "Players".LocalPlayer
        local k = game.Workspace.Ignored.Shop["[Popcorn] - $7"]
        local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
        wait(0.5)
        fireclickdetector(game.Workspace.Ignored.Shop["[Popcorn] - $7"].ClickDetector)
        fireclickdetector(game.Workspace.Ignored.Shop["[Popcorn] - $7"].ClickDetector)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos) 
    end
})

tab:Button({
    Title = "Revolver",
    Callback = function()
                LocalPlayer = game:GetService "Players".LocalPlayer
        local gunName = "[Revolver] - $1300"
        local k = game.Workspace.Ignored.Shop[gunName]
        local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
        wait(0.5)
        fireclickdetector(game.Workspace.Ignored.Shop[gunName].ClickDetector)
        fireclickdetector(game.Workspace.Ignored.Shop[gunName].ClickDetector)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
    end
})

tab:Button({
    Title = "Double Barrel",
    Callback = function()
         
        LocalPlayer = game:GetService "Players".LocalPlayer
        local k = game.Workspace.Ignored.Shop["[Double-Barrel SG] - $1400"]
        local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
        wait(0.5)
        fireclickdetector(game.Workspace.Ignored.Shop["[Double-Barrel SG] - $1400"].ClickDetector)
        fireclickdetector(game.Workspace.Ignored.Shop["[Double-Barrel SG] - $1400"].ClickDetector)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
    end
})

tab:Button({
    Title = "Smg",
    Callback = function()
              LocalPlayer = game:GetService "Players".LocalPlayer
        local k = game.Workspace.Ignored.Shop["[SMG] - $750"]
        local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
        wait(0.5)
        fireclickdetector(game.Workspace.Ignored.Shop["[SMG] - $750"].ClickDetector)
        fireclickdetector(game.Workspace.Ignored.Shop["[SMG] - $750"].ClickDetector)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)  
    end
})
tab:Button({
    Title = "AK47",
    Callback = function()
            LocalPlayer = game:GetService "Players".LocalPlayer
        local k = game.Workspace.Ignored.Shop["[AK47] - $2250"]
        local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
        wait(0.5)
        fireclickdetector(game.Workspace.Ignored.Shop["[AK47] - $2250"].ClickDetector)
        fireclickdetector(game.Workspace.Ignored.Shop["[AK47] - $2250"].ClickDetector)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos) 
    end
})

tab:Button({
    Title = "LMG",
    Callback = function()
           LocalPlayer = game:GetService "Players".LocalPlayer
    local k = game.Workspace.Ignored.Shop["[LMG] - $3750"]
    local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
    wait(0.5)
    fireclickdetector(game.Workspace.Ignored.Shop["[LMG] - $3750"].ClickDetector)
    fireclickdetector(game.Workspace.Ignored.Shop["[LMG] - $3750"].ClickDetector)
    LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
    end
})

tab:Button({
    Title = "Glock",
    Callback = function()
            LocalPlayer = game:GetService "Players".LocalPlayer
        local k = game.Workspace.Ignored.Shop["[Glock] - $500"]
        local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
        wait(0.5)
        fireclickdetector(game.Workspace.Ignored.Shop["[Glock] - $500"].ClickDetector)
        fireclickdetector(game.Workspace.Ignored.Shop["[Glock] - $500"].ClickDetector)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos) 
    end
})

tab:Button({
    Title = "Silencer",
    Callback = function()
           LocalPlayer = game:GetService "Players".LocalPlayer
    local k = game.Workspace.Ignored.Shop["[Silencer] - $550"]
    local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
    wait(0.5)
    fireclickdetector(game.Workspace.Ignored.Shop["[Silencer] - $550"].ClickDetector)
    fireclickdetector(game.Workspace.Ignored.Shop["[Silencer] - $550"].ClickDetector)
    LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
    end
})

tab:Button({
    Title = "RPG",
    Callback = function()
        LocalPlayer = game:GetService "Players".LocalPlayer
        local k = game.Workspace.Ignored.Shop["[RPG] - $6000"]
        local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
        wait(0.5)
        fireclickdetector(game.Workspace.Ignored.Shop["[RPG] - $6000"].ClickDetector)
        fireclickdetector(game.Workspace.Ignored.Shop["[RPG] - $6000"].ClickDetector)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos) 
    end
})

tab:Button({
    Title = "Flamethrower",
    Callback = function()
            LocalPlayer = game:GetService "Players".LocalPlayer
        local k = game.Workspace.Ignored.Shop["[Flamethrower] - $25000"]
        local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
        wait(0.5)
        fireclickdetector(game.Workspace.Ignored.Shop["[Flamethrower] - $25000"].ClickDetector)
        fireclickdetector(game.Workspace.Ignored.Shop["[Flamethrower] - $25000"].ClickDetector)

        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)

    end
})

tab:Button({
    Title = "Revolver Ammo",
    Callback = function()
       local LocalPlayer = game:GetService "Players".LocalPlayer
        local gunName = "12 [Revolver Ammo] - $75"
        local k = game.Workspace.Ignored.Shop[gunName]
        local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
        wait(0.5)
        fireclickdetector(game.Workspace.Ignored.Shop[gunName].ClickDetector)
        fireclickdetector(game.Workspace.Ignored.Shop[gunName].ClickDetector)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)   
    end
})

tab:Button({
    Title = "Double-Barrel Ammo",
    Callback = function()
          local LocalPlayer = game:GetService "Players".LocalPlayer
        local k = game.Workspace.Ignored.Shop["18 [Double-Barrel SG Ammo] - $60"]
        local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
        wait(0.5)
        fireclickdetector(game.Workspace.Ignored.Shop["18 [Double-Barrel SG Ammo] - $60"].ClickDetector)
        fireclickdetector(game.Workspace.Ignored.Shop["18 [Double-Barrel SG Ammo] - $60"].ClickDetector)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)    
    end
})

tab:Button({
    Title = "SMG Ammo",
    Callback = function()
           LocalPlayer = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["80 [SMG Ammo] - $60"]
            local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["80 [SMG Ammo] - $60"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["80 [SMG Ammo] - $60"].ClickDetector)
            LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)   
    end
})

tab:Button({
    Title = "AK47 Ammo",
    Callback = function()
                LocalPlayer = game:GetService "Players".LocalPlayer
                local k = game.Workspace.Ignored.Shop["90 [AK47 Ammo] - $80"]
                local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
                wait(0.5)
                fireclickdetector(game.Workspace.Ignored.Shop["90 [AK47 Ammo] - $80"].ClickDetector)
                fireclickdetector(game.Workspace.Ignored.Shop["90 [AK47 Ammo] - $80"].ClickDetector)
                LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)   
    end
})

tab:Button({
    Title = "LMG Ammo",
    Callback = function()
                 local LocalPlayer = game:GetService "Players".LocalPlayer
        local k = game.Workspace.Ignored.Shop["200 [LMG Ammo] - $300"]
        local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
        wait(0.5)
        fireclickdetector(game.Workspace.Ignored.Shop["200 [LMG Ammo] - $300"].ClickDetector)
        fireclickdetector(game.Workspace.Ignored.Shop["200 [LMG Ammo] - $300"].ClickDetector)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)   
    end
})

tab:Button({
    Title = "Glock Ammo",
    Callback = function()
            local LocalPlayer = game:GetService "Players".LocalPlayer
            local k = game.Workspace.Ignored.Shop["25 [Glock Ammo] - $60"]
            local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
            wait(0.5)
            fireclickdetector(game.Workspace.Ignored.Shop["25 [Glock Ammo] - $60"].ClickDetector)
            fireclickdetector(game.Workspace.Ignored.Shop["25 [Glock Ammo] - $60"].ClickDetector)
            LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)  
    end
})

tab:Button({
    Title = "Silencer Ammo",
    Callback = function()
                local LocalPlayer = game:GetService "Players".LocalPlayer
        local k = game.Workspace.Ignored.Shop["25 [Silencer Ammo] - $50"]
        local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
        wait(0.5)
        fireclickdetector(game.Workspace.Ignored.Shop["25 [Silencer Ammo] - $50"].ClickDetector)
        fireclickdetector(game.Workspace.Ignored.Shop["25 [Silencer Ammo] - $50"].ClickDetector)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
    end
})

tab:Button({
    Title = "RPG Ammo",
    Callback = function()
                 local LocalPlayer = game:GetService "Players".LocalPlayer
        local k = game.Workspace.Ignored.Shop["5 [RPG Ammo] - $1000"]
        local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
        wait(0.5)
        fireclickdetector(game.Workspace.Ignored.Shop["5 [RPG Ammo] - $1000"].ClickDetector)
        fireclickdetector(game.Workspace.Ignored.Shop["5 [RPG Ammo] - $1000"].ClickDetector)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)   
    end
})
tab:Button({
    Title = "Flamethrower Ammo",
    Callback = function()
     local LocalPlayer = game:GetService "Players".LocalPlayer
        local k = game.Workspace.Ignored.Shop["140 [Flamethrower Ammo] - $1550"]
        local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
        wait(0.5)
        fireclickdetector(game.Workspace.Ignored.Shop["140 [Flamethrower Ammo] - $1550"].ClickDetector)
        fireclickdetector(game.Workspace.Ignored.Shop["140 [Flamethrower Ammo] - $1550"].ClickDetector)

        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)   
    end
})

tab:Button({
    Title = "Pizza",
    Callback = function()
           local LocalPlayer = game:GetService "Players".LocalPlayer
        local k = game.Workspace.Ignored.Shop["[Pizza] - $5"]
        local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
        wait(0.5)
        fireclickdetector(game.Workspace.Ignored.Shop["[Pizza] - $5"].ClickDetector)
        fireclickdetector(game.Workspace.Ignored.Shop["[Pizza] - $5"].ClickDetector)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)   
    end
})

tab:Button({
    Title = "Chicken",
    Callback = function()
            local LocalPlayer = game:GetService "Players".LocalPlayer
        local k = game.Workspace.Ignored.Shop["[Chicken] - $7"]
        local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
        wait(0.5)
        fireclickdetector(game.Workspace.Ignored.Shop["[Chicken] - $7"].ClickDetector)
        fireclickdetector(game.Workspace.Ignored.Shop["[Chicken] - $7"].ClickDetector)

        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)    
    end
})

tab:Button({
    Title = "Taco",
    Callback = function()
           local LocalPlayer = game:GetService "Players".LocalPlayer
        local k = game.Workspace.Ignored.Shop["[Taco] - $2"]
        local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
        wait(0.5)
        fireclickdetector(game.Workspace.Ignored.Shop["[Taco] - $2"].ClickDetector)
        fireclickdetector(game.Workspace.Ignored.Shop["[Taco] - $2"].ClickDetector)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)   
    end
})

tab:Button({
    Title = "HotDog",
    Callback = function()
          local LocalPlayer = game:GetService "Players".LocalPlayer
        local k = game.Workspace.Ignored.Shop["[HotDog] - $8"]
        local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
        wait(0.5)
        fireclickdetector(game.Workspace.Ignored.Shop["[HotDog] - $8"].ClickDetector)
        fireclickdetector(game.Workspace.Ignored.Shop["[HotDog] - $8"].ClickDetector)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)    
    end
})

tab:Button({
    Title = "Hamburger",
    Callback = function()
             local LocalPlayer = game:GetService "Players".LocalPlayer
        local k = game.Workspace.Ignored.Shop["[Hamburger] - $5"]
        local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
        wait(0.5)
        fireclickdetector(game.Workspace.Ignored.Shop["[Hamburger] - $5"].ClickDetector)
        fireclickdetector(game.Workspace.Ignored.Shop["[Hamburger] - $5"].ClickDetector)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)   
    end
})

tab:Button({
    Title = "Lettuce",
    Callback = function()
           local LocalPlayer = game:GetService "Players".LocalPlayer
        local k = game.Workspace.Ignored.Shop["[Lettuce] - $5"]
        local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
        wait(0.5)
        fireclickdetector(game.Workspace.Ignored.Shop["[Lettuce] - $5"].ClickDetector)
        fireclickdetector(game.Workspace.Ignored.Shop["[Lettuce] - $5"].ClickDetector)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)   
    end
})

tab:Button({
    Title = "Donut",
    Callback = function()
           local LocalPlayer = game:GetService "Players".LocalPlayer
        local k = game.Workspace.Ignored.Shop["[Donut] - $5"]
        local savedsilencerpos = LocalPlayer.Character.HumanoidRootPart.Position
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.Head.CFrame + Vector3.new(0, 3, 0)
        wait(0.5)
        fireclickdetector(game.Workspace.Ignored.Shop["[Donut] - $5"].ClickDetector)
        fireclickdetector(game.Workspace.Ignored.Shop["[Donut] - $5"].ClickDetector)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)
        LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(savedsilencerpos)   
    end
})

