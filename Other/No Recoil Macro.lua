-- Times can be edited to your liking, as each uses its own DPI and in-game sensitivity
-- DPI: 600
-- Sensitivity: 12
function OnEvent(event, arg)
OutputLogMessage("event = %s, arg = %d\n", event, arg)
if (event == "PROFILE_ACTIVATED") then
EnablePrimaryMouseButtonEvents(true)
elseif event == "PROFILE_DEACTIVATED" then
ReleaseMouseButton(2) -- to prevent it from being stuck on
end
if (event == "MOUSE_BUTTON_PRESSED" and arg == 5) then
recoilx4 = not recoilx4
spot = not spot
end
if (event == "MOUSE_BUTTON_PRESSED" and arg == 1 and recoilx4) then
if recoilx4 then
repeat
MoveMouseRelative(0, 2)
Sleep(5)
MoveMouseRelative(-1,6)
Sleep(15)
MoveMouseRelative(1,-6)
Sleep(15)
MoveMouseRelative(0, 2)
Sleep(5)
until not IsMouseButtonPressed(1)
end
end
end
