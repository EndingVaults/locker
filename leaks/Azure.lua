

local repo = 'https://raw.githubusercontent.com/wally-rblx/LinoriaLib/main/'

local Library = loadstring(game:HttpGet(repo .. 'Library.lua'))()
local ThemeManager = loadstring(game:HttpGet(repo .. 'addons/ThemeManager.lua'))()
local SaveManager = loadstring(game:HttpGet(repo .. 'addons/SaveManager.lua'))()

local Window = Library:CreateWindow({


    Title = 'Pirus.cc',
    Center = true, 
    AutoShow = true,
})

local Tabs = {
    -- Creates a new tab titled Main
    Main = Window:AddTab('Main'), 
    ['UI Settings'] = Window:AddTab('UI Settings'),
}

local LeftGroupBox = Tabs.Main:AddLeftGroupbox('Groupbox')


LeftGroupBox:AddToggle('MyToggle', {
    Text = 'Enable Aimlock',
    Default = true, 
    Tooltip = 'Enables the Aimlock', 
})

Toggles.MyToggle:OnChanged(function()

end)

-- This should print to the console: "My toggle state changed! New value: false"
Toggles.MyToggle:SetValue(false)

-- Groupbox:AddButton
-- Arguments: Text, Callback

local MyButton = LeftGroupBox:AddButton('Button', function()
    print('You clicked a button!')
end)

-- Button:AddButton
-- Arguments: Text, Callback
-- Adds a sub button to the side of the main button

local MyButton2 = MyButton:AddButton('Sub button', function()
    print('You clicked a sub button!')
end)

-- Button:AddTooltip
-- Arguments: ToolTip

MyButton:AddTooltip('This is a button')
MyButton2:AddTooltip('This is a sub button')

-- NOTE: You can chain the button methods!
--[[
    EXAMPLE: 

    LeftGroupBox:AddButton('Kill all', Functions.KillAll):AddTooltip('This will kill everyone in the game!')
        :AddButton('Kick all', Functions.KickAll):AddTooltip('This will kick everyone in the game!')
]]

-- Groupbox:AddLabel
-- Arguments: Text, DoesWrap
LeftGroupBox:AddLabel('This is a label')
LeftGroupBox:AddLabel('This is a label\n\nwhich wraps its text!', true)

-- Groupbox:AddDivider
-- Arguments: None
LeftGroupBox:AddDivider()

-- Groupbox:AddSlider
-- Arguments: Idx, Options
LeftGroupBox:AddSlider('MySlider', {
    Text = 'This is my slider!',

    -- Text, Default, Min, Max, Rounding must be specified.
    -- Rounding is the number of decimal places for precision.

    -- Example:
    -- Rounding 0 - 5
    -- Rounding 1 - 5.1
    -- Rounding 2 - 5.15
    -- Rounding 3 - 5.155

    Default = 0,
    Min = 0,
    Max = 5,
    Rounding = 1,

    Compact = false, -- If set to true, then it will hide the label
})

-- Options is a table added to getgenv() by the library
-- You index Options with the specified index, in this case it is 'MySlider'
-- To get the value of the slider you do slider.Value

local Number = Options.MySlider.Value
Options.MySlider:OnChanged(function()
    print('MySlider was changed! New value:', Options.MySlider.Value)
end)

-- This should print to the console: "MySlider was changed! New value: 3"
Options.MySlider:SetValue(3)

-- Groupbox:AddInput
-- Arguments: Idx, Info
LeftGroupBox:AddInput('MyTextbox', {
    Default = 'My textbox!',
    Numeric = false, -- true / false, only allows numbers
    Finished = false, -- true / false, only calls callback when you press enter

    Text = 'This is a textbox',
    Tooltip = 'This is a tooltip', -- Information shown when you hover over the textbox

    Placeholder = 'Placeholder text', -- placeholder text when the box is empty
    -- MaxLength is also an option which is the max length of the text
})

Options.MyTextbox:OnChanged(function()
    print('Text updated. New text:', Options.MyTextbox.Value)
end)

-- Groupbox:AddDropdown
-- Arguments: Idx, Info

LeftGroupBox:AddDropdown('MyDropdown', {
    Values = { 'Head', 'UpperTorso', 'HumanoidRootPart', 'LowerTorso' },
    Default = 1, 
    Multi = false, 

    Text = 'Aimpart',
    Tooltip = 'Changes Aimlock Aimpart, 
})

Options.MyDropdown:OnChanged(function(bool)
    getgenv().ZyZPart = bool      
end)

Options.MyDropdown:SetValue('This')





Options.ColorPicker:SetValueRGB(Color3.fromRGB(0, 255, 140))


Library:SetWatermarkVisibility(true)


Library:SetWatermark('Pirus.cc')

Library.KeybindFrame.Visible = true; 

Library:OnUnload(function()
    print('Unloaded!')
    Library.Unloaded = true
end)


local MenuGroup = Tabs['UI Settings']:AddLeftGroupbox('Menu')


MenuGroup:AddButton('Unload', function() Library:Unload() end)
MenuGroup:AddLabel('Menu bind'):AddKeyPicker('MenuKeybind', { Default = 'RightShift', NoUI = true, Text = 'Menu keybind' }) 

Library.ToggleKeybind = Options.MenuKeybind 


ThemeManager:SetLibrary(Library)
SaveManager:SetLibrary(Library)

SaveManager:IgnoreThemeSettings() 

SaveManager:SetIgnoreIndexes({ 'MenuKeybind' }) 

ThemeManager:SetFolder('MyScriptHub')
SaveManager:SetFolder('MyScriptHub/specific-game')


SaveManager:BuildConfigSection(Tabs['UI Settings']) 


ThemeManager:ApplyToTab(Tabs['UI Settings'])

