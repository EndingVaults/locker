_G.config = {
    -- Aimlock,
    aimlockpred = 0.14824,
    aimlocktogglemode = true,
    aimlocktogglekey = "e",
    aimlockpart = "HumanoidRootPart",
    smoothing = true,
    smoothamount = 2
}
if not _G.isloaded then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/nyulachan/nyula/main/smooth"))()
end
