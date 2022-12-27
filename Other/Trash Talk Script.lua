local plr = game.Players.LocalPlayer
repeat wait() until plr.Character
local char = plr.Character

local garbage = {
    "ur garbage";
    "did you start today?";
    "my grandma has more skill than you";
    "L";
    "you should leave already";
    "beta male energy";
    "imagine being you right now";
    "ez";
    "no skill";
    "time to take out the trash";
    "you're nothing";
    "thank you for your time";
    "did you get worse?";
    "I didn't think being this bad was possible";
    "why do you even try";
    "look he's mad";
    "cry more";
    "keep crying";
    "dog water";
    "lol I win";
    "no one likes u";
    "thank you for your time";
    "darn ;/";
}

function TrashTalk(inputObject, gameProcessedEvent)
    if inputObject.KeyCode == Enum.KeyCode.K and gameProcessedEvent == false then
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(
        garbage[math.random(1,#garbage)],
        "All"
    )
    end
end
 
game:GetService("UserInputService").InputBegan:connect(TrashTalk)
