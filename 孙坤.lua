local OrionLib = loadstring(game:HttpGet("https://pastebin.com/raw/VeaMSRZK"))()
local LBLG = Instance.new("ScreenGui", getParent)
local LBL = Instance.new("TextLabel", getParent)
local player = game.Players.LocalPlayer

LBLG.Name = "LBLG"
LBLG.Parent = game.CoreGui
LBLG.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
LBLG.Enabled = true
LBL.Name = "LBL"
LBL.Parent = LBLG
LBL.BackgroundColor3 = Color3.new(1, 1, 1)
LBL.BackgroundTransparency = 1
LBL.BorderColor3 = Color3.new(0, 0, 0)
LBL.Position = UDim2.new(0.75,0,0.010,0)
LBL.Size = UDim2.new(0, 133, 0, 30)
LBL.Font = Enum.Font.GothamSemibold
LBL.Text = "Test"
LBL.TextColor3 = Color3.new(155, 155, 155)
LBL.TextScaled = true
LBL.TextSize = 14
LBL.TextWrapped = true
LBL.Visible = true

local FpsLabel = LBL
local Heartbeat = game:GetService("RunService").Heartbeat
local LastIteration, Start
local FrameUpdateTable = { }

local function HeartbeatUpdate()
	LastIteration = tick()
	for Index = #FrameUpdateTable, 1, -1 do
		FrameUpdateTable[Index + 1] = (FrameUpdateTable[Index] >= LastIteration - 1) and FrameUpdateTable[Index] or nil
	end
	FrameUpdateTable[1] = LastIteration
	local CurrentFPS = (tick() - Start >= 1 and #FrameUpdateTable) or (#FrameUpdateTable / (tick() - Start))
	CurrentFPS = CurrentFPS - CurrentFPS % 1
	FpsLabel.Text = ("当前德国时间:"..os.date("%H").."时"..os.date("%M").."分"..os.date("%S"))
end

OrionLib:MakeNotification({
                    Name = "正在开启反踢请稍等...",
                    Content = "孙坤 开启中...",
                    Time = 2
                })     
                
		local vu = game:GetService("VirtualUser")
		game:GetService("Players").LocalPlayer.Idled:connect(function()
		   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		   wait(1)
		   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		end)      

OrionLib:MakeNotification({
                    Name = "开启成功",
                    Content = "孙坤",
                    Time = 1
                })
Start = tick()
Heartbeat:Connect(HeartbeatUpdate)
local Window = OrionLib:MakeWindow({Name = "孙坤", HidePremium = false, SaveConfig =true,IntroText="孙坤脚本", ConfigFolder = "孙坤文件夹"})
local Tab = Window:MakeTab({
	Name = "主页",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddParagraph("作者","孙坤")
Tab:AddParagraph("副作者","KG.孙坤")
Tab:AddParagraph("孙坤的脚本")
Tab:AddParagraph("QQ群： 暂无")
Tab:AddParagraph("作者QQ号： 3851074929")
Tab:AddParagraph("副作者QQ号： 3760926916")
Tab:AddParagraph("暂时公益")


Tab:AddButton ({
	Name = "复制群",
	Callback = function ()
	 setclipboard("sudh")
	 OrionLib:MakeNotification({
                    Name = "信息",
                    Content = "复制请在粘贴板中查看",
                    Time = 2
                })
	end
})

local Tab = Window:MakeTab({
	Name = "通用1",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddSlider({

	Name = "速度",

	Min = 16,

	Max = 200,

	Default = 16,

	Color = Color3.fromRGB(255,255,255),

	Increment = 1,

	ValueName = "数值",

	Callback = function(Value)

		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value

	end    

})
Tab:AddSlider({

	Name = "跳跃高度",

	Min = 50,

	Max = 200,

	Default = 50,

	Color = Color3.fromRGB(255,255,255),

	Increment = 1,

	ValueName = "数值",

	Callback = function(Value)

		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value

	end    

})
Tab:AddTextbox({

	Name = "移动速度设置",

	Default = "",

	TextDisappear = true,

	Callback = function(Value)

		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
		
		OrionLib:MakeNotification({
                    Name = "成功设置速度:  "..game.Players.LocalPlayer.Character.Humanoid.WalkSpeed.."   |速度",
                    Content = "成功",
                    Time = 3
                })
	end
})
Tab:AddTextbox({
	Name = "重力设置",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Workspace.Gravity = Value
		
		OrionLib:MakeNotification({
                    Name = "成功设置重力:  "..game.Workspace.Gravity.."   |重力",
                    Content = "成功",
                    Time = 3
                })
	end
})
Tab:AddTextbox({
	Name = "跳跃高度设置",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
		
		OrionLib:MakeNotification({
                    Name = "成功设置跳跃高度:  "..game.Players.LocalPlayer.Character.Humanoid.WalkSpeed.."   |高度",
                    Content = "成功",
                    Time = 3
                })
	end
})

local Section = Tab:AddSection({
	Name = "通用1"
})

Tab:AddToggle({
	Name = "夜视",
	Default = false,
	Callback = function(Value)
		if Value then

		    game.Lighting.Ambient = Color3.new(1, 1, 1)

		else

		    game.Lighting.Ambient = Color3.new(0, 0, 0)		    		    

		end

	end	
})

Tab:AddButton({
	Name = "孙坤飞行",
	Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/fly/main/%E4%B8%81%E4%B8%81%E9%A3%9E%E8%A1%8C.txt"))()
  	end    
})

Tab:AddButton({
	Name = "隐身(E)",
	Callback = function()
  loadstring(game:HttpGet('https://pastebin.com/raw/nwGEvkez'))()
  	end    
})


Tab:AddButton({
	Name = "透视",
	Callback = function()
loadstring(game:GetObjects("rbxassetid://10092697033")[1].Source)()
	end 
})


Tab:AddButton({
    Name="紫砂",
    Callback=function()
        game.Players.LocalPlayer.Character.Humanoid.Health=0
    end
})


Tab:AddButton({
	Name = "转圈（使用此项关闭移位锁）",
	Callback = function()
      	loadstring(game:HttpGet('https://pastebin.com/raw/r97d7dS0', true))()
  	end
})


Tab:AddButton({
	Name = "踏空行走",
	Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Float'))()
	end
})


Tab:AddButton({
	Name = "伪名说话（娱乐）",
	Callback = function()
loadstring(game:HttpGet(('https://pastefy.ga/zCFEwaYq/raw'),true))()
	end 
})


Tab:AddButton({
	Name = "跟踪玩家",
	Callback = function()
      	loadstring(game:HttpGet("https://pastebin.com/raw/F9PNLcXk"))()
  	end
})


Tab:AddButton({
	Name = "鼠标（手机非常不建议用）",
	Callback = function()
loadstring(game:HttpGet(('https://pastefy.ga/V75mqzaz/raw'),true))()
	end
})


Tab:AddToggle({
	Name = "穿墙",
	Default = false,
	Callback = function(Value)
		if Value then
		    Noclip = true
		    Stepped = game.RunService.Stepped:Connect(function()
			    if Noclip == true then
				    for a, b in pairs(game.Workspace:GetChildren()) do
                        if b.Name == game.Players.LocalPlayer.Name then
                            for i, v in pairs(game.Workspace[game.Players.LocalPlayer.Name]:GetChildren()) do
                                if v:IsA("BasePart") then
                                    v.CanCollide = false
                                end
                            end
                        end
                    end
			    else
				    Stepped:Disconnect()
			    end
		    end)
	    else
		    Noclip = false
	    end
	end
})

Tab:AddButton({
  Name = "超级足球联赛1脚本",
  Callback = function()
  
loadstring(game:HttpGet"https://raw.githubusercontent.com/xtrey10x/xtrey10x-hub/main/neo")()
  end
})

local Tab = Window:MakeTab({
    Name = "脚本中心",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
    Name = "USA脚本卡密:USA AER",
	Callback = function()
	getgenv().USA="作者莫羽免费请勿倒卖"loadstring(game:HttpGet("https://raw.githubusercontent.com/boyscp/beta/main/USA.lua"))()
	end
})


Tab:AddButton({
    Name = "星河脚本(河流)",
	Callback = function()
	
	loadstring(game:HttpGet("https://raw.githubusercontent.com/AWDX-DYVB/test/main/%E6%B2%B3%E6%B5%81%E6%97%A0%E5%AF%86%E9%92%A5.lua"))()
	end
})

local OrionLib = loadstring(game:HttpGet("https://pastebin.com/raw/VeaMSRZK"))()
local LBLG = Instance.new("ScreenGui", getParent)
local LBL = Instance.new("TextLabel", getParent)
local player = game.Players.LocalPlayer

LBLG.Name = "LBLG"
LBLG.Parent = game.CoreGui
LBLG.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
LBLG.Enabled = true
LBL.Name = "LBL"
LBL.Parent = LBLG
LBL.BackgroundColor3 = Color3.new(1, 1, 1)
LBL.BackgroundTransparency = 1
LBL.BorderColor3 = Color3.new(0, 0, 0)
LBL.Position = UDim2.new(0.75,0,0.010,0)
LBL.Size = UDim2.new(0, 133, 0, 30)
LBL.Font = Enum.Font.GothamSemibold
LBL.Text = "Test"
LBL.TextColor3 = Color3.new(155, 155, 155)
LBL.TextScaled = true
LBL.TextSize = 14
LBL.TextWrapped = true
LBL.Visible = true

local FpsLabel = LBL
local Heartbeat = game:GetService("RunService").Heartbeat
local LastIteration, Start
local FrameUpdateTable = { }

local function HeartbeatUpdate()
	LastIteration = tick()
	for Index = #FrameUpdateTable, 1, -1 do
		FrameUpdateTable[Index + 1] = (FrameUpdateTable[Index] >= LastIteration - 1) and FrameUpdateTable[Index] or nil
	end
	FrameUpdateTable[1] = LastIteration
	local CurrentFPS = (tick() - Start >= 1 and #FrameUpdateTable) or (#FrameUpdateTable / (tick() - Start))
	CurrentFPS = CurrentFPS - CurrentFPS % 1
	FpsLabel.Text = ("标准时间:"..os.date("%H").."时"..os.date("%M").."分"..os.date("%S"))
end

OrionLib:MakeNotification({
                    Name = "正在开启反踢请稍等...",
                    Content = "孙坤 开启中...",
                    Time = 2
                })     
                
		local vu = game:GetService("VirtualUser")
		game:GetService("Players").LocalPlayer.Idled:connect(function()
		   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		   wait(1)
		   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		end)      

OrionLib:MakeNotification({
                    Name = "开启成功",
                    Content = "孙坤",
                    Time = 1
                })
Start = tick()
Heartbeat:Connect(HeartbeatUpdate)
local Window = OrionLib:MakeWindow({Name = "孙坤", HidePremium = false, SaveConfig =true,IntroText="孙坤加载", ConfigFolder = "孙坤文件夹"})
local Tab = Window:MakeTab({
	Name = "主页",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddParagraph("作者","孙坤")
Tab:AddParagraph("副作者","KG.孙坤")
Tab:AddParagraph("孙坤的脚本")
Tab:AddParagraph("QQ群： 暂无")
Tab:AddParagraph("作者QQ号： 3851074929")
Tab:AddParagraph("副作者QQ号： 3760926916")


Tab:AddButton ({
	Name = "复制群",
	Callback = function ()
	 setclipboard("sudh")
	 OrionLib:MakeNotification({
                    Name = "信息",
                    Content = "复制请在粘贴板中查看",
                    Time = 2
                })
	end
})

local Tab = Window:MakeTab({
	Name = "通用1",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddSlider({

	Name = "速度",

	Min = 16,

	Max = 200,

	Default = 16,

	Color = Color3.fromRGB(255,255,255),

	Increment = 1,

	ValueName = "数值",

	Callback = function(Value)

		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value

	end    

})
Tab:AddSlider({

	Name = "跳跃高度",

	Min = 50,

	Max = 200,

	Default = 50,

	Color = Color3.fromRGB(255,255,255),

	Increment = 1,

	ValueName = "数值",

	Callback = function(Value)

		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value

	end    

})
Tab:AddTextbox({

	Name = "移动速度设置",

	Default = "",

	TextDisappear = true,

	Callback = function(Value)

		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
		
		OrionLib:MakeNotification({
                    Name = "成功设置速度:  "..game.Players.LocalPlayer.Character.Humanoid.WalkSpeed.."   |速度",
                    Content = "成功",
                    Time = 3
                })
	end
})
Tab:AddTextbox({
	Name = "重力设置",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Workspace.Gravity = Value
		
		OrionLib:MakeNotification({
                    Name = "成功设置重力:  "..game.Workspace.Gravity.."   |重力",
                    Content = "成功",
                    Time = 3
                })
	end
})
Tab:AddTextbox({
	Name = "跳跃高度设置",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
		
		OrionLib:MakeNotification({
                    Name = "成功设置跳跃高度:  "..game.Players.LocalPlayer.Character.Humanoid.WalkSpeed.."   |高度",
                    Content = "成功",
                    Time = 3
                })
	end
})

local Section = Tab:AddSection({
	Name = "通用1"
})

Tab:AddToggle({
	Name = "夜视",
	Default = false,
	Callback = function(Value)
		if Value then

		    game.Lighting.Ambient = Color3.new(1, 1, 1)

		else

		    game.Lighting.Ambient = Color3.new(0, 0, 0)		    		    

		end

	end	
})

Tab:AddButton({
	Name = "孙坤飞行",
	Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/fly/main/%E4%B8%81%E4%B8%81%E9%A3%9E%E8%A1%8C.txt"))()
  	end    
})

Tab:AddButton({
	Name = "隐身(E)",
	Callback = function()
  loadstring(game:HttpGet('https://pastebin.com/raw/nwGEvkez'))()
  	end    
})


Tab:AddButton({
	Name = "透视",
	Callback = function()
loadstring(game:GetObjects("rbxassetid://10092697033")[1].Source)()
	end 
})


Tab:AddButton({
    Name="紫砂",
    Callback=function()
        game.Players.LocalPlayer.Character.Humanoid.Health=0
    end
})


Tab:AddButton({
	Name = "转圈（使用此项关闭移位锁）",
	Callback = function()
      	loadstring(game:HttpGet('https://pastebin.com/raw/r97d7dS0', true))()
  	end
})


Tab:AddButton({
	Name = "踏空行走",
	Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Float'))()
	end
})


Tab:AddButton({
	Name = "伪名说话（娱乐）",
	Callback = function()
loadstring(game:HttpGet(('https://pastefy.ga/zCFEwaYq/raw'),true))()
	end 
})


Tab:AddButton({
	Name = "跟踪玩家",
	Callback = function()
      	loadstring(game:HttpGet("https://pastebin.com/raw/F9PNLcXk"))()
  	end
})


Tab:AddButton({
	Name = "鼠标（手机非常不建议用）",
	Callback = function()
loadstring(game:HttpGet(('https://pastefy.ga/V75mqzaz/raw'),true))()
	end
})


Tab:AddToggle({
	Name = "穿墙",
	Default = false,
	Callback = function(Value)
		if Value then
		    Noclip = true
		    Stepped = game.RunService.Stepped:Connect(function()
			    if Noclip == true then
				    for a, b in pairs(game.Workspace:GetChildren()) do
                        if b.Name == game.Players.LocalPlayer.Name then
                            for i, v in pairs(game.Workspace[game.Players.LocalPlayer.Name]:GetChildren()) do
                                if v:IsA("BasePart") then
                                    v.CanCollide = false
                                end
                            end
                        end
                    end
			    else
				    Stepped:Disconnect()
			    end
		    end)
	    else
		    Noclip = false
	    end
	end
})

Tab:AddButton({
  Name = "超级足球联赛1脚本",
  Callback = function()
  
loadstring(game:HttpGet"https://raw.githubusercontent.com/xtrey10x/xtrey10x-hub/main/neo")()
  end
})

local Tab = Window:MakeTab({
    Name = "脚本中心",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
    Name = "USA脚本卡密:USA AER",
	Callback = function()
	getgenv().USA="作者莫羽免费请勿倒卖"loadstring(game:HttpGet("https://raw.githubusercontent.com/boyscp/beta/main/USA.lua"))()
	end
})


Tab:AddButton({
    Name = "XA脚本",
	Callback = function()
	
	loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\66\73\78\106\105\97\111\98\122\120\54\47\66\73\78\106\105\97\111\47\109\97\105\110\47\88\75\46\84\88\84\34\41\41\40\41\10")()
	end
})


Tab:AddButton({
    Name = "猫脚本(卡密是:猫王)",
	Callback = function()
	
	loadstring(game:HttpGet("https://ayangwp.cn/api/v3/file/get/9281/m%E8%84%9A%E6%9C%AC%E4%BA%8C%E4%BB%A3.txt?sign=JBB6aabVopKLdV2EdLGV0RUN1kDDNLxk7fWCcbZlDkk%3D%3A0"))()
	end
})

Tab:AddButton({
    Name = "导管中心",
	Callback = function()
	
loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\117\115\101\114\97\110\101\119\114\102\102\47\114\111\98\108\111\120\45\47\109\97\105\110\47\37\69\54\37\57\68\37\65\49\37\69\54\37\65\67\37\66\69\37\69\53\37\56\68\37\56\70\37\69\56\37\65\69\37\65\69\34\41\41\40\41\10")()
	end
})

Tab:AddButton({
    Name = "SF脚本",
	Callback = function()

loadstring(game:HttpGet(('https://raw.githubusercontent.com/WDQi/SF/main/%E7%9C%8B%E4%BD%A0M.txt')))()
	end
})


Tab:AddButton({
    Name = "北极脚本",
	Callback = function()
	
loadstring(game:HttpGet("https://pastebin.com/raw/KwARpDxV",true))()
	end
})


Tab:AddButton({
    Name = "青风脚本",
	Callback = function()
	
loadstring(game:HttpGet(utf8.char((function() return table.unpack({104,116,116,112,115,58,47,47,112,97,115,116,101,98,105,110,46,99,111,109,47,114,97,119,47,116,53,87,75,53,72,48,72})end)())))("青风脚本")
	end
})


Tab:AddButton({
    Name = "静新脚本",
	Callback = function()

loadstring(game:HttpGet("https://raw.githubusercontent.com/jxdjbx/gggggghjjnbb/main/jdjdd"))()
	end
})


Tab:AddButton({
    Name = "黑洞脚本",
	Callback = function()
	
loadstring(game:HttpGet('https://raw.githubusercontent.com/Asddffgujhh/-/refs/heads/main/BS'))()
	end
})


local Tab = Window:MakeTab({
	Name = "通用2",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})


Tab:AddButton({	
Name = "工具包",	
Callback = function()	loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/BTools.txt"))()	  	
     end
})


Tab:AddButton({
	Name = "飞车",
	Callback = function() loadstring(game:HttpGet("https://pastebin.com/raw/MHE1cbWF"))()
	end
})


Tab:AddButton({
	Name = "甩飞",
	Callback = function() loadstring(game:HttpGet("https://pastebin.com/raw/GnvPVBEi"))()
	end
})


Tab:AddButton({	
Name = "无限连跳",	
Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/V5PQy3y0", true))()
	end	
})



Tab:AddButton({
	Name = "电脑键盘",
	Callback = function()

     loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()
  	end    
})


Tab:AddButton({
	Name = "飞行V3",
	Callback = function()
    loadstring(game:HttpGet("https://pastebin.com/raw/gEd1QwJE"))()
  	end    
})


Tab:AddButton({
	Name = "点击传送工具",
	Callback = function()
mouse = game.Players.LocalPlayer:GetMouse() tool = Instance.new("Tool") tool.RequiresHandle = false tool.Name = "[FE] TELEPORT TOOL" tool.Activated:connect(function() local pos = mouse.Hit+Vector3.new(0,2.5,0) pos = CFrame.new(pos.X,pos.Y,pos.Z) game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos end) tool.Parent = game.Players.LocalPlayer.Backpack
	end
})


Tab:AddButton({
	Name = "穿墙",
	Callback = function()
loadstring(game:HttpGet("https://github.com/DXuwu/OK/raw/main/clip"))()
	end
})


Tab:AddButton({
	Name = "铁拳",
	Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/0Ben1/fe/main/obf_rf6iQURzu1fqrytcnLBAvW34C9N55kS9g9G3CKz086rC47M6632sEd4ZZYB0AYgV.lua.txt'))()
	end
})


local Tab = Window:MakeTab({
	Name = "通用3",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})


Tab:AddButton({
	Name = "立即击败",
	Callback = function()
game.Players.LocalPlayer.Character.Humanoid.Health=0
	end
})


Tab:AddButton({
	Name = "爬墙",
	Callback = function()
  loadstring(game:HttpGet("https://pastebin.com/raw/zXk4Rq2r"))()
	end
})


Tab:AddParagraph("用户名:"," "..game.Players.LocalPlayer.Name.."")
Tab:AddParagraph("注入器:"," "..identifyexecutor().."")
Tab:AddParagraph("服务器的ID"," "..game.GameId.."")


local Section = Tab:AddSection({
	Name = "通用1"
})


Tab:AddButton({
	Name = "开启玩家进出服务器提示",
	Callback = function()
      	loadstring(game:HttpGet("https://raw.githubusercontent.com/boyscp/scriscriptsc/main/bbn.lua"))()
  	end
})


Tab:AddTextbox({
	Name = "血量设置(只能自己看)",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.Health = Value
	end
})


Tab:AddTextbox({
	Name = "超广角设置",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		Workspace.CurrentCamera.FieldOfView = Value
	end
})


Tab:AddTextbox({
	Name = "最大视野设置",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		Workspace.CurrentCamera.FieldOfView = Value
	end
})


Tab:AddTextbox({
	Name = "最小视野设置",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Workspace.CurrentCamera.FieldOfView = v
	end
})


Tab:AddButton({
  Name = "重新加入服务器",
  Callback = function()
game:GetService("TeleportService"):TeleportToPlaceInstance(
            game.PlaceId,
            game.JobId,
            game:GetService("Players").LocalPlayer
        )
  end
})


Tab:AddButton({
  Name = "离开服务器",
  Callback = function()
     game:Shutdown()
  end
})


Tab:AddButton({
  Name = "帧率显示",
  Callback = function()
 -- Gui to Lua 
 -- Version: 3.2 
  
 -- Instances:
 local ScreenGui = Instance.new("ScreenGui") 
 local FpsLabel = Instance.new("TextLabel")
 
 --Properties:
 
 ScreenGui.Name = "FPSGui" 
 ScreenGui.ResetOnSpawn = false 
 ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling 
 
 FpsLabel.Name = "FPSLabel" 
 FpsLabel.Size = UDim2.new(0, 100, 0, 50) 
 FpsLabel.Position = UDim2.new(0, 10, 0, 10) 
 FpsLabel.BackgroundTransparency = 1 
 FpsLabel.Font = Enum.Font.SourceSansBold 
 FpsLabel.Text = "帧率: 0" 
 FpsLabel.TextSize = 20 
 FpsLabel.TextColor3 = Color3.new(1, 1, 1) 
 FpsLabel.Parent = ScreenGui 
  
 function updateFpsLabel() 
     local fps = math.floor(1 / game:GetService("RunService").RenderStepped:Wait()) 
     FpsLabel.Text = "帧率: " .. fps 
 end 
  
  game:GetService("RunService").RenderStepped:Connect(updateFpsLabel) 
  
 ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")


 animateCredits()
  end
})


Tab:AddButton({
  Name = "显示时间",
  Callback = function()
local LBLG = Instance.new("ScreenGui", getParent)
local LBL = Instance.new("TextLabel", getParent)
local player = game.Players.LocalPlayer

LBLG.Name = "LBLG"
LBLG.Parent = game.CoreGui
LBLG.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
LBLG.Enabled = true
LBL.Name = "LBL"
LBL.Parent = LBLG
LBL.BackgroundColor3 = Color3.new(1, 1, 1)
LBL.BackgroundTransparency = 1
LBL.BorderColor3 = Color3.new(0, 0, 0)
LBL.Position = UDim2.new(0.75,0,0.010,0)
LBL.Size = UDim2.new(0, 133, 0, 30)
LBL.Font = Enum.Font.GothamSemibold
LBL.Text = "TextLabel"
LBL.TextColor3 = Color3.new(1, 1, 1)
LBL.TextScaled = true
LBL.TextSize = 14
LBL.TextWrapped = true
LBL.Visible = true

local FpsLabel = LBL
local Heartbeat = game:GetService("RunService").Heartbeat
local LastIteration, Start
local FrameUpdateTable = { }

local function HeartbeatUpdate()
	LastIteration = tick()
	for Index = #FrameUpdateTable, 1, -1 do
		FrameUpdateTable[Index + 1] = (FrameUpdateTable[Index] >= LastIteration - 1) and FrameUpdateTable[Index] or nil
	end
	FrameUpdateTable[1] = LastIteration
	local CurrentFPS = (tick() - Start >= 1 and #FrameUpdateTable) or (#FrameUpdateTable / (tick() - Start))
	CurrentFPS = CurrentFPS - CurrentFPS % 1
	FpsLabel.Text = ("德国时间:"..os.date("%H").."时"..os.date("%M").."分"..os.date("%S")).."秒"
end
Start = tick()
Heartbeat:Connect(HeartbeatUpdate)
  end
})


Tab:AddButton({
  Name = "重开",
  Callback = function()

game.Players.LocalPlayer.Character.Head:Remove()

  end
})


local Tab = Window:MakeTab({
	Name = "通用4",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})


Tab:AddButton({
  Name = "自瞄",
  Callback = function()
   loadstring(game:HttpGet("https://pastebin.com/raw/tYuVRD8r"))()
  end
})


Tab:AddButton({
  Name = "定住自己",
  Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/YrfBSuWw"))()
  end
})


Tab:AddButton({
  Name = "认真反复横跳",
  Callback = function()

loadstring(game:HttpGet("https://raw.githubusercontent.com/0Ben1/fe/main/obf_11l7Y131YqJjZ31QmV5L8pI23V02b3191sEg26E75472Wl78Vi8870jRv5txZyL1.lua.txt"))()
  end
})


Tab:AddButton({
  Name = "控制玩家",
  Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/BOOSBS/BOOSBS/refs/heads/main/README.md"))()
  end
})


Tab:AddButton({
  Name = "动画包",
  Callback = function()

loadstring(game:HttpGet("https://pastebin.com/raw/fTsp2ZgP"))()

  end
})


Tab:AddButton({
  Name = "滚动",
  Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/BOOSBS/111/refs/heads/main/192"))()
  end
})


Tab:AddButton({
  Name = "飞檐走壁",
  Callback = function()
  loadstring(game:HttpGet("https://pastebin.com/raw/zXk4Rq2r"))()
  end
})


Tab:AddButton({
  Name = "让走路和跳跃变卡(对别人没影响)",
  Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Fe%20Fake%20Lag%20Obfuscator'))()
  end
})


Tab:AddButton({
  Name = "上头定在原地",
  Callback = function()
    local lp = game:GetService "Players".LocalPlayer
    if lp.Character:FindFirstChild "Head" then
      local char = lp.Character
      char.Archivable = true
      local new = char:Clone()
      new.Parent = workspace
      lp.Character = new
      wait(0.1)
      local oldhum = char:FindFirstChildWhichIsA "Humanoid"
      local newhum = oldhum:Clone()
      newhum.Parent = char
      newhum.RequiresNeck = false
      oldhum.Parent = nil
      wait(0.1)
      lp.Character = char
      new:Destroy()
      wait(0.1)
      newhum:GetPropertyChangedSignal("Health"):Connect(
      function()
        if newhum.Health <= 0 then
          oldhum.Parent = lp.Character
          wait(0.1)
          oldhum:Destroy()
        end
      end)
      workspace.CurrentCamera.CameraSubject = char
      if char:FindFirstChild "Animate" then
        char.Animate.Disabled = true
        wait(0.1)
        char.Animate.Disabled = false
      end
      lp.Character:FindFirstChild "Head":Destroy()
    end
end
})


Tab:AddButton({
      Name = "位置",
      Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/ZJeTvyzG"))()
      end    
})


Tab:AddButton({
  Name = "刷道具",
  Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/wT1aKD4B"))()
  end
})


Tab:AddButton({
	Name = "选人甩飞（需要输入别人的名字）",
	Callback = function()
	
loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Auto%20Fling%20Player'))()

end
})


Tab:AddButton({
  Name = "灵魂出窍",
  Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/ahK5jRxM"))()
  end
})


Tab:AddButton({
  Name = "操人",
  Callback = function()

loadstring(game:HttpGet("https://pastebin.com/raw/XmcMKfMV"))()
  end
})


Tab:AddButton({
	Name = "走路创人",
	Callback = function()
     loadstring(game:HttpGet(('https://raw.githubusercontent.com/0Ben1/fe/main/obf_5wpM7bBcOPspmX7lQ3m75SrYNWqxZ858ai3tJdEAId6jSI05IOUB224FQ0VSAswH.lua.txt'),true))()
  	end    
})


Tab:AddButton({
  Name = "吸人脚本2(可循环开启)",
  Callback = function()

loadstring(game:HttpGet("https://pastebin.com/raw/sbxKPPHc"))()
  end
})


Tab:AddButton({
	Name = "点击传送工器",
	Callback = function()

mouse = game.Players.LocalPlayer:GetMouse() tool = Instance.new("Tool") tool.RequiresHandle = false tool.Name = "[bs中心]传送工具" tool.Activated:connect(function() local pos = mouse.Hit+Vector3.new(0,2.5,0) pos = CFrame.new(pos.X,pos.Y,pos.Z) game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos end) tool.Parent = game.Players.LocalPlayer.Backpack

	end
})


Tab:AddButton({
  Name = "锁定视角",
  Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/gdLR5Z7X"))()
  end
})


Tab:AddButton({
  Name = "在聊天框中进行图画",
  Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ocfi/Draw-To-Chat-Obfuscated/refs/heads/main/Draw%20to%20Chat"))()
  end
})


Tab:AddButton({
  Name = "极速旋转",
  Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/ckiGL34v"))()
  end
})


Tab:AddButton({
	Name = "快速旋转",
	Callback = function()
     --BROUGHT TO YOU BY RSCRIPTS.NET--

if game.Players.LocalPlayer.Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
spawn(function()
local speaker = game.Players.LocalPlayer
local Anim = Instance.new("Animation")
     Anim.AnimationId = "rbxassetid://27432686"
     local bruh = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
bruh:Play()
bruh:AdjustSpeed(0)
speaker.Character.Animate.Disabled = true
local hi = Instance.new("Sound")
hi.Name = "Sound"
hi.SoundId = "http://www.roblox.com/asset/?id=8114290584"
hi.Volume = 2
hi.Looped = false
hi.archivable = false
hi.Parent = game.Workspace
hi:Play()
wait(1.5)
local spinSpeed = 30
local Spin = Instance.new("BodyAngularVelocity")
Spin.Name = "Spinning"
Spin.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
Spin.MaxTorque = Vector3.new(0, math.huge, 0)
Spin.AngularVelocity = Vector3.new(0,spinSpeed,0)
wait(3.5)
while speaker.Character.Humanoid.Health > 0 do
   wait(0)
speaker.Character.Humanoid.HipHeight = speaker.Character.Humanoid.HipHeight + 0
end
end)
else
spawn(function()
local speaker = game.Players.LocalPlayer
local Anim = Instance.new("Animation")
     Anim.AnimationId = "rbxassetid://507776043"
     local bruh = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
bruh:Play()
bruh:AdjustSpeed(0)
speaker.Character.Animate.Disabled = true
local hi = Instance.new("Sound")
hi.Name = "Sound"
hi.SoundId = "http://www.roblox.com/asset/?id=8114290584"
hi.Volume = 0
hi.Looped = false
hi.archivable = false
hi.Parent = game.Workspace
hi:Play()
wait()
local spinSpeed = 30
local Spin = Instance.new("BodyAngularVelocity")
Spin.Name = "Spinning"
Spin.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
Spin.MaxTorque = Vector3.new(0, math.huge, 0)
Spin.AngularVelocity = Vector3.new(0,spinSpeed,0)
wait(3.5)
while speaker.Character.Humanoid.Health > 0 do
   wait(0)
speaker.Character.Humanoid.HipHeight = speaker.Character.Humanoid.HipHeight + 0
end
end)    
end
  	end    
})


local Tab = Window:MakeTab({
	Name = "通用5",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})


Tab:AddButton({
  Name = "安全区",
  Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/rmPfWVU3"))()
  end
})


Tab:AddButton({
  Name = "管理员(用了秒踢,不如注入器)",
  Callback = function()
  loadstring(game:HttpGet(('https://raw.githubusercontent.com/iK4oS/backdoor.exe/master/source.lua'),true))()
  end
})


Tab:AddButton({
  Name = "获取管理员",
  Callback = function()
  loadstring(game:HttpGet("https://pastebin.com/raw/sZpgTVas"))()
  end
})


Tab:AddButton({
  Name = "子弹追踪(视角会变得奇怪)",
  Callback = function()
local Camera = game:GetService("Workspace").CurrentCamera
local Players = game:GetService("Players")
local LocalPlayer = game:GetService("Players").LocalPlayer

local function GetClosestPlayer()
   local ClosestPlayer = nil
   local FarthestDistance = math.huge

   for i, v in pairs(Players.GetPlayers(Players)) do
       if v ~= LocalPlayer and v.Character and v.Character.FindFirstChild(v.Character, "HumanoidRootPart") then
           local DistanceFromPlayer = (LocalPlayer.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).Magnitude

           if DistanceFromPlayer < FarthestDistance then
               FarthestDistance = DistanceFromPlayer
               ClosestPlayer = v
           end
       end
   end

   if ClosestPlayer then
       return ClosestPlayer
   end
end

local GameMetaTable = getrawmetatable(game)
local OldGameMetaTableNamecall = GameMetaTable.__namecall
setreadonly(GameMetaTable, false)

GameMetaTable.__namecall = newcclosure(function(object, ...)
   local NamecallMethod = getnamecallmethod()
   local Arguments = {...}

   if tostring(NamecallMethod) == "FindPartOnRayWithIgnoreList" then
       local ClosestPlayer = GetClosestPlayer()
       
       if ClosestPlayer and ClosestPlayer.Character then
           Arguments[1] = Ray.new(Camera.CFrame.Position, (ClosestPlayer.Character.Head.Position - Camera.CFrame.Position).Unit * (Camera.CFrame.Position - ClosestPlayer.Character.Head.Position).Magnitude)
       end
   end

   return OldGameMetaTableNamecall(object, unpack(Arguments))
end)

setreadonly(GameMetaTable, true)
  end
})



Tab:AddButton({
  Name = "阿尔宙斯注入器3.0",
  Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/chillz-workshop/main/Arceus%20X%20V3"))()
  end
})


Tab:AddButton({
  Name = "自动互动",
  Callback = function()
          if state then
            autoInteract = true
            while autoInteract do
                for _, descendant in pairs(workspace:GetDescendants()) do
                    if descendant:IsA("ProximityPrompt") then
                        fireproximityprompt(descendant)
                    end
                end
                task.wait(0.25) -- Adjust the wait time as needed
            end
        else
            autoInteract = false
        end
  end
})


Tab:AddButton({
  Name = "死亡笔记",
  Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/tt/main/%E6%AD%BB%E4%BA%A1%E7%AC%94%E8%AE%B0%20(1).txt"))()
  end
})


Tab:AddButton({  
    Name = "游戏通行证(跑酷游戏)",
	Callback = function()
	for _,v in pairs(game:GetDescendants()) do
if v.ClassName == "RemoteEvent" then
if v.Parent.Name == "WeaponsRemotes" or v.Parent.Name == "VipRemotes" or v.Parent.Name == "Remotes" then
v:FireServer()
end
end
end
     end
})


Tab:AddButton({
	Name = "反挂机2",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/9fFu43FF"))()
  	end    
})


Tab:AddButton({
  Name = "娱乐蓝屏(还需要手动开启)(大退关闭)",
  Callback = function()
    local gui = Instance.new('ScreenGui', game:service'CoreGui')local button = Instance.new('TextButton', gui)button.Size = UDim2.new(0, 200, 0, 100)button.Position = UDim2.new(.5, 0, .5, 0)button.Text = '点击蓝屏'button.MouseButton1Click:Connect(loadstring(game:HttpGet'https://github.com/RunDTM/roblox-bluescreen/raw/main/bsod.lua'))
  end
})


Tab:AddButton({
  Name = "奖励自己",
  Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/minecrafttotem/yzhs./main/Fe%20pp%20script%20very%20fun"))()
  end
})


Tab:AddButton({	
Name = "修改玩家碰撞箱",	
Callback = function()
loadstring(game:HttpGet('https://pastebin.com/raw/JYFXjEVh'))()
    end
})


Tab:AddButton({
	Name = "替身",
	Callback = function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/SkrillexMe/SkrillexLoader/main/SkrillexLoadMain')))()
    end
})


Tab:AddButton({
	Name = "反挂机v2",
	Callback = function()
     loadstring(game:HttpGet("https://pastebin.com/raw/9fFu43FF"))()
  	end    
})


Tab:AddButton({
	Name = "阿尔宙斯自瞄",
	Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/chillz-workshop/main/Arceus%20Aimbot.lua"))()    
  	end    
})


Tab:AddButton({
	Name = "FPS(变流畅)",
	Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/gclich/FPS-X-GUI/main/FPS_X.lua"))()
  	end    
})


Tab:AddButton({
	Name = "光影V4",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/MZEEN2424/Graphics/main/Graphics.xml"))()
end
})


Tab:AddButton({
	Name = "变成蛇",
	Callback = function()
loadstring(game:HttpGet(('https://pastefy.ga/tWBTcE4R/raw'),true))()
	end
})


Tab:AddButton({
	Name = "让别让别人控制自己",
	Callback = function()
loadstring(game:HttpGet(('https://pastefy.ga/a7RTi4un/raw'),true))()
	end
})


Tab:AddButton({
	Name = "子弹追踪",
	Callback = function()
     loadstring(game:HttpGet("https://pastebin.com/raw/1AJ69eRG"))()
  	end    
})


Tab:AddButton({
	Name = "无敌",
	Callback = function()

local lp = game:GetService "Players".LocalPlayer

if lp.Character:FindFirstChild "Head" then

    local char = lp.Character

    char.Archivable = true

    local new = char:Clone()

    new.Parent = workspace

    lp.Character = new

    wait(2)

    local oldhum = char:FindFirstChildWhichIsA "Humanoid"

    local newhum = oldhum:Clone()

    newhum.Parent = char

    newhum.RequiresNeck = false

    oldhum.Parent = nil

    wait(2)

    lp.Character = char

    new:Destroy()

    wait(1)

    newhum:GetPropertyChangedSignal("Health"):Connect(

        function()

            if newhum.Health <= 0 then

                oldhum.Parent = lp.Character

                wait(1)

                oldhum:Destroy()

            end

        end)

    workspace.CurrentCamera.CameraSubject = char

    if char:FindFirstChild "Animate" then

        char.Animate.Disabled = true

        wait(.1)
        
        char.Animate.Disabled = false
        
    end
    lp.Character:FindFirstChild "Head":Destroy()
end
   end
})


Tab:AddButton({
	Name = "踢人脚本",
	Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/xiaopi77/xiaopi77/main/c8320f69b6aa4f5d.txt_2024-08-08_214628.OTed.lua"))()
  	end    
})


Tab:AddButton({
	Name = "飞檐走壁",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/zXk4Rq2r"))()
  	end
})
	

local Tab = Window:MakeTab({
    Name = "FE脚本",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})


Tab:AddButton({
	Name = "C00lgui",
	Callback = function()
     loadstring(game:GetObjects("rbxassetid://8127297852")[1].Source)()
  	end    
})

Tab:AddButton({
	Name = "1x1x1x1",
	Callback = function()
     loadstring(game:HttpGet(('https://pastebin.com/raw/JipYNCht'),true))()
  	end    
})

Tab:AddButton({
	Name = "动画中心",
	Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/GamingScripter/Animation-Hub/main/Animation%20Gui", true))()
  	end    
})


Tab:AddButton({
	Name = "FE大长腿",
	Callback = function()
loadstring(game:HttpGet('https://gist.githubusercontent.com/1BlueCat/7291747e9f093555573e027621f08d6e/raw/23b48f2463942befe19d81aa8a06e3222996242c/FE%2520Da%2520Feets'))()
  	end
})


Tab:AddButton({
	Name = "FE用头",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/BK4Q0DfU"))()
  	end
})


Tab:AddButton({
	Name = "复仇者",
	Callback = function()
loadstring(game:HttpGet(('https://pastefy.ga/iGyVaTvs/raw'),true))()
  	end
})


Tab:AddButton({
	Name = "鼠标",
	Callback = function()
loadstring(game:HttpGet(('https://pastefy.ga/V75mqzaz/raw'),true))()
  	end
})


Tab:AddButton({
	Name = "变怪物",
	Callback = function()
loadstring(game:HttpGetAsync("https://pastebin.com/raw/jfryBKds"))()
  	end
})


Tab:AddButton({
	Name = "香蕉枪",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/BananaGunByNerd.lua"))()
  	end
})


Tab:AddButton({
	Name = "超长🐔巴",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/ESWSFND7", true))()
  	end
})


Tab:AddButton({
	Name = "FE变猫娘R63",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/Pendulum%20Hub%20V5.lua"))()
  	end
})


Tab:AddButton({
	Name = "FE变玩家",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/XR4sGcgJ"))()
  	end
})

local Tab = Window:MakeTab({
    Name = "指令挂",
    Icon = "rbxassetid://7734068321",
    PremiumOnly = false
})

Tab:AddButton({
    Name = "iw指令",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/longshulol/long/main/longshu/Ohio"))()
    end
})

Tab:AddLabel("指令如下（聊天框输入）这是一些俄亥俄的服务器指令")
Tab:AddLabel("透开-透关 ---透视")
Tab:AddLabel("追踪开-追踪关 ---子弹追踪")
Tab:AddLabel("收钱开-收钱关 ---收集钱包")
Tab:AddLabel("收物开-收物关 ---收集物品")
Tab:AddLabel("抢取款机开-抢取款机关")
Tab:AddLabel("抢银行开-抢银行关")
Tab:AddLabel("穿墙开-穿墙关")
Tab:AddLabel("拳击光环开-拳击光环关")
Tab:AddLabel("其他指令如下（聊天框输入）")
Tab:AddLabel("透视-自动击打-击打光环-踏空")
Tab:AddLabel("防击飞-防推飞-防死神-速度")
Tab:AddLabel("关-无敌开-无敌关-全开-全关")
Tab:AddLabel("全开功能有:防编辑，防毒液，防黑洞，防死神")
Tab:AddLabel("防雷神，防rob，防秒杀手套，管理员预警，防踢")


Tab:AddButton({
    Name = "say",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/xiaopi77/xiaopi77/refs/heads/main/spy%E6%B1%89%E5%8C%96%20(1).txt"))()
    end
})


local Tab = Window:MakeTab({
	Name = "FE服务器",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})


Tab:AddButton({
    Name = "FE",
    Callback = function()
loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\103\48\48\108\88\112\108\111\105\116\101\114\47\103\48\48\108\88\112\108\111\105\116\101\114\47\109\97\105\110\47\70\101\37\50\48\98\121\112\97\115\115\34\44\32\116\114\117\101\41\41\40\41\10")()
    end
})