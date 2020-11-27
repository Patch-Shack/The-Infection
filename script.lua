local Teleports = {
	["hut thing"] = {"House??", CFrame.new(-39, 5, -250)},
	["room1"] = {"Arsenal", CFrame.new(-188, 4, -252)},
	["room2"] = {"Safe Room", CFrame.new(-239, 4, -160)},
	["white goo"] = {"White Latex", CFrame.new(-169, 4, -131)},
	["gun store"] = {"Gun Store", CFrame.new(-241, 4, -19)},
	["bat"] = {"Baseball Bat", CFrame.new(226, 7, -85)},
	["cave entrance"] = {"Cave", CFrame.new(73, 4, -86)},
	["white goo pit"] = {"White Pit", CFrame.new(-157, -4, -40)},
	["red door"] = {"Red Door", CFrame.new(-105, 4, 104)},
	["border safe"] = {"Border Safe Zone?", CFrame.new(-214, 4, 82)},
	["rules xd"] = {"Rules Board", CFrame.new(-191, 4, 98)},
	["in gun store"] = {"Inside Gun Store", CFrame.new(-249, 4, -33)},
}

function tel(pos)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
end

local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Patch-Shack/The-Infection/main/ui_lib.lua"))();
local Main = library:CreateSection("Teleports")
local Misc = library:CreateSection("Misc")

for i,v in pairs(Teleports) do
	Main:Button(Teleports[i][1], function()
		tel(Teleports[i][2])
	end)
end

Misc:Button("Reset", function()
	game.Players.LocalPlayer.Character:BreakJoints()
end)

Misc:Button("Infinite Yield", function()
	loadstring(game:HttpGet(('https://pastebin.com/raw/i4gJFss1'),true))();
end)

Misc:Button("16 WalkSpeed (Default)", function()
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
end)

Misc:Button("32 WalkSpeed", function()
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 32
end)

Misc:Button("50 WalkSpeed", function()
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 50
end)

Misc:Button("100 WalkSpeed", function()
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 100
end)

Misc:Button("200 WalkSpeed", function()
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 200
end)

library:Ready()

local Ped = game.CoreGui:WaitForChild("TheInf")

game:GetService("UserInputService").InputBegan:Connect(function(Key,IsChat)
	if IsChat then return end
	if Key.KeyCode == Enum.KeyCode.M then
		Ped.Enabled = (not Ped.Enabled)
	end
end)

game.StarterGui:SetCore("SendNotification", {
	Title = "Toggle UI",
	Text = "M",
	Duration = 3,
})

spawn(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Patch-Shack/newLoad/master/Never%20Get%20Kicked%20for%20Being%20AFK"))();
end)
