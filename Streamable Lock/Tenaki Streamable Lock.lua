getgenv().AimingSettings = {
    Aimbot = {
        Radius = 55,
        Hitbox = "UpperTorso",
        CameraMode = true,
        MouseMode = false,
        HitAirshots = true,
        AutoPrediction = false,
        NotificationMode = true,
        Keybind = Enum.KeyCode.Q,
        PredictionAmount = 0.134,



        Smoothing = {
        Enabled = true,
        Amount = 0.056
    },
 }
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/Tenakii/tenaaki/main/genericaimbot.v.2.0.0"))()
