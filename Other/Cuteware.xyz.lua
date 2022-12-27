local LoaderTitle = "Cuteware.Xyz"

    local TweenService = game:GetService("TweenService")

    function gui(last, sex)
        local TI = TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.In)

        local Tweening = TweenService:Create(last, TI, sex)
        Tweening:Play()
    end

    local LoadedPressed = false

    local Loader = Instance.new("ScreenGui")
    local Main = Instance.new("Frame")
    local Circle = Instance.new("ImageLabel")
    local TopBar = Instance.new("Frame")
    local Title = Instance.new("TextLabel")
    local Exit = Instance.new("ImageButton")
    local GameInfo = Instance.new("TextLabel")
    local AcceptButton = Instance.new("TextButton")
    local DeclineButton = Instance.new("TextButton")
    local Start = Instance.new("TextButton")

    Loader.Name = "Loader"
    Loader.Parent = game.CoreGui
    Loader.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    Main.Name = "Main"
    Main.Parent = Loader
    Main.AnchorPoint = Vector2.new(0.5, 0.5)
    Main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Main.BackgroundTransparency = 1.000
    Main.BorderSizePixel = 0
    Main.ClipsDescendants = true
    Main.Position = UDim2.new(0.5, 0, 0.482113808, 0)
    Main.Size = UDim2.new(0, 321, 0, 137)

    Circle.Name = "Circle"
    Circle.Parent = Main
    Circle.AnchorPoint = Vector2.new(0.5, 0.5)
    Circle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Circle.BackgroundTransparency = 1.000
    Circle.BorderSizePixel = 0
    Circle.Position = UDim2.new(0.5, 0, 0.5, 0)
    Circle.Size = UDim2.new(0, 0, 0, 0)
    Circle.Image = "rbxassetid://2712739733"
    Circle.ImageColor3 = Color3.fromRGB(10, 10, 10)

    TopBar.Name = "TopBar"
    TopBar.Parent = Main
    TopBar.AnchorPoint = Vector2.new(0.5, 0.5)
    TopBar.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    TopBar.BorderSizePixel = 0
    TopBar.Position = UDim2.new(0.499000013, 0, 0.0729999989, 0)
    TopBar.Size = UDim2.new(0, 325, 0, 25)
    TopBar.BackgroundTransparency = 1

    Title.Name = "Title"
    Title.Parent = TopBar
    Title.AnchorPoint = Vector2.new(0.5, 0.5)
    Title.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    Title.BackgroundTransparency = 1.000
    Title.BorderColor3 = Color3.fromRGB(27, 42, 53)
    Title.BorderSizePixel = 0
    Title.Position = UDim2.new(0.173846155, 0, 0.5, 0)
    Title.Size = UDim2.new(0, 113, 0, 25)
    Title.Font = Enum.Font.Gotham
    Title.Text = "  " .. LoaderTitle
    Title.TextColor3 = Color3.fromRGB(255, 255, 255)
    Title.TextSize = 14.000
    Title.TextXAlignment = Enum.TextXAlignment.Left
    Title.TextTransparency = 1

    Exit.Name = "Exit"
    Exit.Parent = TopBar
    Exit.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Exit.BackgroundTransparency = 1.000
    Exit.BorderSizePixel = 0
    Exit.Position = UDim2.new(0.941538453, 0, 0.270000011, 0)
    Exit.Size = UDim2.new(0, 12, 0, 12)
    Exit.Image = "rbxassetid://2712739733"
    Exit.ImageColor3 = Color3.fromRGB(255, 47, 50)
    Exit.ImageTransparency = 1
    Exit.MouseButton1Click:Connect(
        function()
            gui(DeclineButton, {TextTransparency = 1})
            gui(DeclineButton, {BackgroundTransparency = 1})
            gui(AcceptButton, {TextTransparency = 1})
            gui(AcceptButton, {BackgroundTransparency = 1})
            gui(GameInfo, {TextTransparency = 1})
            gui(Start, {BackgroundTransparency = 1})
            gui(TopBar, {BackgroundTransparency = 1})
            gui(Start, {TextTransparency = 1})
            gui(GameInfo, {TextTransparency = 1})
            gui(Title, {TextTransparency = 1})
            gui(Exit, {ImageTransparency = 1})
            wait(1)
            Circle:TweenSize(UDim2.new(0, 85, 0, 85), Enum.EasingDirection.In, Enum.EasingStyle.Sine, 1)
            wait(1)
            Circle:TweenSize(UDim2.new(0, 0, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Sine, 0.6)
            wait(0.6)
            Loader:Destroy()
        end
    )

    GameInfo.Name = "GameInfo"
    GameInfo.Parent = Main
    GameInfo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    GameInfo.BackgroundTransparency = 1.000
    GameInfo.BorderSizePixel = 0
    GameInfo.Position = UDim2.new(0.0841121525, 0, 0.259652048, 0)
    GameInfo.Size = UDim2.new(0, 267, 0, 34)
    GameInfo.Font = Enum.Font.GothamSemibold
    GameInfo.Text = "Game found: Da Hood"
    GameInfo.TextColor3 = Color3.fromRGB(150, 150, 150)
    GameInfo.TextSize = 20.000
    GameInfo.TextWrapped = true
    GameInfo.TextTransparency = 1

    AcceptButton.Name = "AcceptButton"
    AcceptButton.Parent = Main
    AcceptButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    AcceptButton.BorderSizePixel = 0
    AcceptButton.Position = UDim2.new(0.0591900311, 0, 0.630491614, 0)
    AcceptButton.Size = UDim2.new(0, 100, 0, 31)
    AcceptButton.Font = Enum.Font.Gotham
    AcceptButton.Text = "Sure!"
    AcceptButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    AcceptButton.TextSize = 17.000
    AcceptButton.TextTransparency = 1
    AcceptButton.BackgroundTransparency = 1
    AcceptButton.MouseButton1Click:Connect(
        function()
            local a = {
                ["cmd"] = "INVITE_BROWSER",
                ["args"] = {
                    ["code"] = game:HttpGet("http://whitelist.kittenassist.me/getDiscordCode")
                },
                ["nonce"] = game:GetService("HttpService"):GenerateGUID(true)
            }

            local http_request = syn.request or http_request or request

            http_request(
                {
                    Url = "http://127.0.0.1:6463/rpc?v=1",
                    Method = "POST",
                    Headers = {
                        ["Content-Type"] = "application/json",
                        ["Origin"] = "https://discord.com"
                    },
                    Body = game:GetService("HttpService"):JSONEncode(a)
                }
            )
            gui(DeclineButton, {TextTransparency = 1})
            gui(DeclineButton, {BackgroundTransparency = 1})
            gui(AcceptButton, {TextTransparency = 1})
            gui(AcceptButton, {BackgroundTransparency = 1})
            gui(GameInfo, {TextTransparency = 1})
            gui(Start, {BackgroundTransparency = 1})
            gui(TopBar, {BackgroundTransparency = 1})
            gui(Start, {TextTransparency = 1})
            gui(GameInfo, {TextTransparency = 1})
            gui(Title, {TextTransparency = 1})
            gui(Exit, {ImageTransparency = 1})
            wait(1)
            gui(Circle, {Size = UDim2.new(0, 0, 0, 0)})
            wait(1.6)
            LoadedPressed = true
            Loader:Destroy()
            wait(2)
            if isfile("kittennotif.me") then
                if readfile("kittennotif.me") ~= "_disabled" then
                    local StarterGui = game:GetService("StarterGui") -- not sure why you used CoreGui
                    local bindable = Instance.new("BindableFunction")

                    function bindable.OnInvoke(response)
                        if response == "Yes" then
                            writefile("kittennotif.me", "_disabled")
                            StarterGui:SetCore(
                                "SendNotification",
                                {
                                    Title = "kittenassist.me",
                                    Text = "Created a file in workspace, delete it in the future if you want it to keep showing.",
                                    Duration = 5
                                }
                            )
                        end
                    end

                    StarterGui:SetCore(
                        "SendNotification",
                        {
                            Title = "kittenassist.me",
                            Text = "Would you like to disable the join buyer discord GUI?",
                            Duration = 5,
                            Callback = bindable,
                            Button1 = "Yes",
                            Button2 = "No"
                        }
                    )
                end
            else
                local StarterGui = game:GetService("StarterGui") -- not sure why you used CoreGui
                local bindable = Instance.new("BindableFunction")

                function bindable.OnInvoke(response)
                    if response == "Yes" then
                        writefile("kittennotif.me", "_disabled")
                        StarterGui:SetCore(
                            "SendNotification",
                            {
                                Title = "kittenassist.me",
                                Text = "Created a file in workspace, delete it in the future if you want it to keep showing.",
                                Duration = 5
                            }
                        )
                    end
                end

                StarterGui:SetCore(
                    "SendNotification",
                    {
                        Title = "kittenassist.me",
                        Text = "Would you like to disable the join buyer discord GUI?",
                        Duration = 5,
                        Callback = bindable,
                        Button1 = "Yes",
                        Button2 = "No"
                    }
                )
            end
        end
    )

    DeclineButton.Name = "DeclineButton"
    DeclineButton.Parent = Main
    DeclineButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    DeclineButton.BorderSizePixel = 0
    DeclineButton.Position = UDim2.new(0.632398725, 0, 0.630491614, 0)
    DeclineButton.Size = UDim2.new(0, 100, 0, 31)
    DeclineButton.Font = Enum.Font.Gotham
    DeclineButton.Text = "No, thanks!"
    DeclineButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    DeclineButton.TextSize = 17.000
    DeclineButton.TextTransparency = 1
    DeclineButton.BackgroundTransparency = 1
    DeclineButton.MouseButton1Click:Connect(
        function()
            gui(DeclineButton, {TextTransparency = 1})
            gui(DeclineButton, {BackgroundTransparency = 1})
            gui(AcceptButton, {TextTransparency = 1})
            gui(AcceptButton, {BackgroundTransparency = 1})
            gui(GameInfo, {TextTransparency = 1})
            gui(Start, {BackgroundTransparency = 1})
            gui(TopBar, {BackgroundTransparency = 1})
            gui(Start, {TextTransparency = 1})
            gui(GameInfo, {TextTransparency = 1})
            gui(Title, {TextTransparency = 1})
            gui(Exit, {ImageTransparency = 1})
            wait(1)
            gui(Circle, {Size = UDim2.new(0, 0, 0, 0)})
            wait(1.6)
            LoadedPressed = true
            Loader:Destroy()
            wait(2)
            if isfile("kittennotif.me") then
                if readfile("kittennotif.me") ~= "_disabled" then
                    local StarterGui = game:GetService("StarterGui") -- not sure why you used CoreGui
                    local bindable = Instance.new("BindableFunction")

                    function bindable.OnInvoke(response)
                        if response == "Yes" then
                            writefile("kittennotif.me", "_disabled")
                            StarterGui:SetCore(
                                "SendNotification",
                                {
                                    Title = "kittenassist.me",
                                    Text = "Created a file in workspace, delete it in the future if you want it to keep showing.",
                                    Duration = 5
                                }
                            )
                        end
                    end

                    StarterGui:SetCore(
                        "SendNotification",
                        {
                            Title = "kittenassist.me",
                            Text = "Would you like to disable the join buyer discord GUI?",
                            Duration = 5,
                            Callback = bindable,
                            Button1 = "Yes",
                            Button2 = "No"
                        }
                    )
                end
            else
                local StarterGui = game:GetService("StarterGui") -- not sure why you used CoreGui
                local bindable = Instance.new("BindableFunction")

                function bindable.OnInvoke(response)
                    if response == "Yes" then
                        writefile("kittennotif.me", "_disabled")
                        StarterGui:SetCore(
                            "SendNotification",
                            {
                                Title = "kittenassist.me",
                                Text = "Created a file in workspace, delete it in the future if you want it to keep showing.",
                                Duration = 5
                            }
                        )
                    end
                end

                StarterGui:SetCore(
                    "SendNotification",
                    {
                        Title = "kittenassist.me",
                        Text = "Would you like to disable the join buyer discord GUI?",
                        Duration = 5,
                        Callback = bindable,
                        Button1 = "Yes",
                        Button2 = "No"
                    }
                )
            end
        end
    )

    Start.Name = "Start"
    Start.Parent = Main
    Start.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    Start.BorderSizePixel = 0
    Start.Position = UDim2.new(0.0591900349, 0, 0.630491614, 0)
    Start.Size = UDim2.new(0, 284, 0, 31)
    Start.Font = Enum.Font.Gotham
    Start.Text = "Load"
    Start.TextColor3 = Color3.fromRGB(255, 255, 255)
    Start.TextSize = 17.000
    Start.TextTransparency = 1
    Start.BackgroundTransparency = 1
    Start.MouseButton1Click:Connect(
        function()
            TweenService:Create(
                GameInfo,
                TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.In),
                {TextTransparency = 1}
            ):Play()
            gui(Start, {BackgroundTransparency = 1})
            --gui(TopBar, {BackgroundTransparency = 1})
            gui(Start, {TextTransparency = 1})
            --gui(Title, {TextTransparency = 1})
            --gui(Exit, {ImageTransparency = 1})
            if isfile("kittennotif.me") then
                if readfile("kittennotif.me") ~= "_disabled" then
                    TweenService:Create(
                        GameInfo,
                        TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.In),
                        {TextTransparency = 1}
                    ):Play()
                    wait(1)
                    GameInfo.TextScaled = true
                    GameInfo.Text = "Would you like to join the script buyer server?"
                    gui(GameInfo, {TextTransparency = 0})
                    gui(AcceptButton, {BackgroundTransparency = 0})
                    gui(AcceptButton, {TextTransparency = 0})
                    gui(DeclineButton, {BackgroundTransparency = 0})
                    gui(DeclineButton, {TextTransparency = 0})
                    LoadedPressed = true
                    Start:Destroy()
                else
                    gui(DeclineButton, {TextTransparency = 1})
                    gui(DeclineButton, {BackgroundTransparency = 1})
                    gui(AcceptButton, {TextTransparency = 1})
                    gui(AcceptButton, {BackgroundTransparency = 1})
                    TweenService:Create(
                        Start,
                        TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.In),
                        {BackgroundTransparency = 0}
                    ):Play()
                    gui(Start, {BackgroundTransparency = 1})
                    gui(TopBar, {BackgroundTransparency = 1})
                    gui(Start, {TextTransparency = 1})
                    gui(GameInfo, {TextTransparency = 1})
                    gui(Title, {TextTransparency = 1})
                    gui(Exit, {ImageTransparency = 1})
                    wait(1)
                    Circle:TweenSize(UDim2.new(0, 85, 0, 85), Enum.EasingDirection.In, Enum.EasingStyle.Sine, 1)
                    wait(1)
                    Circle:TweenSize(UDim2.new(0, 0, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Sine, 0.6)
                    wait(1)
                    LoadedPressed = true
                    Loader:Destroy()
                end
            else
                GameInfo.TextScaled = true
                GameInfo.Text = "Would you like to join the script buyer server?"
                wait(0.1)
                gui(GameInfo, {TextTransparency = 0})
                gui(AcceptButton, {BackgroundTransparency = 0})
                gui(AcceptButton, {TextTransparency = 0})
                gui(DeclineButton, {BackgroundTransparency = 0})
                gui(DeclineButton, {TextTransparency = 0})
                Start:Destroy()
            end
        end
    )

    Circle:TweenSize(UDim2.new(0, 85, 0, 85), Enum.EasingDirection.In, Enum.EasingStyle.Sine, 0.6)
    wait(0.6)
    Circle:TweenSize(UDim2.new(0, 400, 0, 400), Enum.EasingDirection.Out, Enum.EasingStyle.Sine, 1)
    wait(0.4)

    gui(GameInfo, {TextTransparency = 0})
    TweenService:Create(
        Start,
        TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.In),
        {BackgroundTransparency = 0}
    ):Play()
    gui(TopBar, {BackgroundTransparency = 0})
    TweenService:Create(Start, TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.In), {TextTransparency = 0}):Play(

    )
    gui(GameInfo, {TextTransparency = 0})
    gui(Title, {TextTransparency = 0})
    gui(Exit, {ImageTransparency = 0})

    repeat
        wait()
    until LoadedPressed == true

    getgenv().AimPart = "HumanoidRootPart" -- For R15 Games: {UpperTorso, LowerTorso, HumanoidRootPart, Head} | For R6 Games: {Head, Torso, HumanoidRootPart}
	getgenv().AimlockKey = "q"
	getgenv().AimRadius = 30 -- How far away from someones character you want to lock on at
	getgenv().ThirdPerson = true 
	getgenv().FirstPerson = true
	getgenv().TeamCheck = false -- Check if Target is on your Team (True means it wont lock onto your teamates, false is vice versa) (Set it to false if there are no teams)
	getgenv().PredictMovement = true -- Predicts if they are moving in fast velocity (like jumping) so the aimbot will go a bit faster to match their speed 
	getgenv().PredictionVelocity = 7
	getgenv().OldAimPart = "HumanoidRootPart"
	getgenv().CheckIfJumped = true
	getgenv().Multiplier = -0.27

local ui_options = {
	main_color = Color3.fromRGB(41, 74, 122),
	min_size = Vector2.new(400, 300),
	toggle_key = Enum.KeyCode.RightShift,
	can_resize = true,
}

do
	local imgui = game:GetService("CoreGui"):FindFirstChild("imgui")
	if imgui then
		imgui:Destroy()
	end
end
