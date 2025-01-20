
--getgenv().skelelogo = true

local TS = game:GetService("TweenService")

local skele55 = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local Load = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local ImageLabel = Instance.new("ImageLabel")
local dootdoot = Instance.new("ImageLabel")

--Properties:

skele55.Name = "skele55"
skele55.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
skele55.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main.Name = "Main"
Main.Parent = skele55
Main.AnchorPoint = Vector2.new(0.5, 0.5)
Main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.BackgroundTransparency = 1.000
Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.5, 0, 0.5, 0)
Main.Size = UDim2.new(1, 0, 1, 0)

Load.Name = "Load"
Load.Parent = Main
Load.AnchorPoint = Vector2.new(0.5, 0.5)
Load.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
Load.BorderColor3 = Color3.fromRGB(0, 0, 0)
Load.BorderSizePixel = 0
Load.Position = UDim2.new(0.5, 0, 0.5, 0)
Load.Size = UDim2.new(0, 100, 0, 100)
Load.Visible = false
Load.ZIndex = 999

UICorner.CornerRadius = UDim.new(0, 16)
UICorner.Parent = Load

ImageLabel.Parent = Load
ImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.BorderSizePixel = 0
ImageLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
ImageLabel.Size = UDim2.new(1, 0, 1, 0)
ImageLabel.Image = "http://www.roblox.com/asset/?id=105747816759881"

dootdoot.Name = "dootdoot"
dootdoot.Parent = Load
dootdoot.AnchorPoint = Vector2.new(0.5, 0.5)
dootdoot.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
dootdoot.BackgroundTransparency = 1.000
dootdoot.BorderColor3 = Color3.fromRGB(0, 0, 0)
dootdoot.BorderSizePixel = 0
dootdoot.Position = UDim2.new(0.5, 0, 0.5, 0)
dootdoot.Size = UDim2.new(1, 0, 1, 0)
dootdoot.Visible = false
dootdoot.ZIndex = 999
dootdoot.Image = "rbxassetid://4055116455"

local LoadFrame : Frame = Load

LoadFrame.Visible = true
LoadFrame.Position = UDim2.fromScale(1,1)

local twen = TS:Create(LoadFrame, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Position = UDim2.fromScale(0.5,0.5)})
	
	twen:Play()
	
	twen.Completed:Wait()
	
	task.wait(0.75)
	
	local dootdoot : ImageLabel = LoadFrame.dootdoot
	dootdoot.Visible = true
	
	dootdoot.ImageTransparency = 1
	dootdoot.Rotation = -11.3
	
	local snd = Instance.new("Sound")
	snd.SoundId = getcustomasset("dootdoot.ogg")
	
	local twen2 = TS:Create(dootdoot, TweenInfo.new(0.5, Enum.EasingStyle.Elastic, Enum.EasingDirection.Out), {Rotation = 0, ImageTransparency=0})
	
	game:GetService("SoundService"):PlayLocalSound(snd)
	
	twen2:Play()
	
	twen2.Completed:Wait()
	LoadFrame.ImageLabel.Visible = false

	task.wait(2)

	local t_twen = TS:Create(LoadFrame, TweenInfo.new(2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Position = UDim2.fromScale(0.5,0.65), BackgroundTransparency = 1})
	local t_twen2 = TS:Create(dootdoot, TweenInfo.new(2.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Rotation = 65, ImageTransparency=1})
	
	t_twen:Play()
	t_twen2:Play()
	task.wait(2)
	
	LoadFrame.Visible = false
