-- Nigger Hub

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Porn hub v1", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

local PlayerTab = Window:MakeTab({
	Name = "Player",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = PlayerTab:AddSection({
	Name = "Movement"
})

PlayerTab:AddSlider({
	Name = "WalkSpeed",
	Min = 16,
	Max = 500,
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
	Max = 500,
	Default = 16,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Height",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
	end    
})

-- Visual Tab

local VisualTab = Window:MakeTab({
	Name = "Visual",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = VisualTab:AddSection({
	Name = "Esp"
})

VisualTab:AddButton({
	Name = "Chams",
	Callback = function()
        for _, player in pairs(Players:GetPlayers()) do
            if player ~= Players.LocalPlayer then
                local Target = Players:GetPlayerFromCharacter(char)
				
				local Folder = Chams['Team']:FindFirstChild(Target['Name'])
					or Create('Folder', Chams['Team']){Name = Target['Name']}
					
				for __, part in next, (char:GetChildren()) do
					if part:IsA('BasePart') then
						Create('BoxHandleAdornment', Folder)
						{
							Name = part.Name .. '_CHAM';
							Color3 = Settings['TCC'][2];
							AlwaysOnTop = true;
							Transparency = Settings['CT'];
							Visible = true;
							ZIndex = 10;
							
							Size = (part['Name'] == 'Head' and Vector3.new(1.25, 1.3, 1.25)) or (Vector3.new(.5, .5, .5) + part.Size)
						}
                        ['Adornee'] = part
					end
				end
            end
        end
  	end    
})