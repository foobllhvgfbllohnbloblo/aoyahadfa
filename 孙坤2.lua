Tab:AddButton({
    Name = "FE崩服",
    Callback = function()
-- be R15 and wear layered clothing
for _,s in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
    if s:IsA("Motor6D") and s.Name ~= "Neck" then
        local fard = s.Parent
        s:Destroy()
        fard.CFrame = CFrame.new(9e9 * _,9e9* _,9e9*_)
        wait()
    end
end
    end
})


Tab:AddButton({
    Name = "FE穿墙工具",
    Callback = function()
--Made By JersonPlayz#2963
mouse = game.Players.LocalPlayer:GetMouse()
tool = Instance.new("Tool")
tool.RequiresHandle = false
tool.Name = ("Equip To Noclip")
tool.Activated:Connect(function()
game.Players.LocalPlayer.Character.Humanoid.MaxHealth = math.huge
game.Players.LocalPlayer.Character.Humanoid.Health = math.huge
while true do
		game:GetService("RunService").Stepped:wait()
		game.Players.LocalPlayer.Character.Head.CanCollide = false
		game.Players.LocalPlayer.Character.Torso.CanCollide = false
end
end)
tool.Parent = game.Players.LocalPlayer.Backpack
    end
})
