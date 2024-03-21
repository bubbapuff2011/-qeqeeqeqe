-- Nigger Hub

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Porn hub v1", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

local Tab = Window:MakeTab({
	Name = "Player",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Tab = Window:MakeTab({
	Name = "Visual",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

PlayerTab:AddSlider({
	Name = "WalkSpeed",
	Min = 16,
	Max = 50,
	Default = 16,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "WS",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end    
})

PlayerTab:AddSlider({
	Name = "Jump Height",
	Min = 16,
	Max = 50,
	Default = 16,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "JH",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
	end    
})

VisualTab:AddButton({
	Name = "Chams",
	Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/ZyRZ3ruy"))()
  	end    
})

VisualTab:AddButton({
	Name = "Box Esp + Healthbars",
	Callback = function()
        loadstring(game:HttpGet("https://github.com/Blissful4992/ESPs/blob/main/2D%20Box%20ESP/ESP%20%2B%20Health%20Bars.lua"))()
  	end    
})

