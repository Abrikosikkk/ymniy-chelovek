-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextButton = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.356502235, 0, 0.426102489, 0)
Frame.Size = UDim2.new(0, 271, 0, 75)
Frame.Style = Enum.FrameStyle.RobloxRound

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.106306843, 0, -0.0133325197, 0)
TextButton.Size = UDim2.new(0, 200, 0, 61)
TextButton.Style = Enum.ButtonStyle.RobloxRoundDropdownButton
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Нажми чтобы получить халявные робуксы"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true

-- Scripts:

local function QTFO_fake_script() -- TextButton.LocalScript 
	local script = Instance.new('LocalScript', TextButton)

	local button = script.Parent
	local fullscreenImage = "rbxassetid://112784730655119"
	local musicId = "rbxassetid://88456225545062"
	
	local screenGui = Instance.new("ScreenGui")
	screenGui.Name = "FullscreenImageGui"
	screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	screenGui.ResetOnSpawn = false
	screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	
	local image = Instance.new("ImageLabel")
	image.Name = "FullscreenImage"
	image.Size = UDim2.new(1, 0, 1, 0)
	image.Position = UDim2.new(0, 0, 0, 0)
	image.BackgroundColor3 = Color3.new(0, 0, 0)
	image.Image = fullscreenImage
	image.Visible = false
	image.Parent = screenGui
	
	local sound = Instance.new("Sound")
	sound.SoundId = musicId
	sound.Looped = true
	sound.Volume = 0.5
	sound.Parent = game:GetService("SoundService")
	
	button.MouseButton1Click:Connect(function()
		if image.Visible then
			image.Visible = true
			sound:Play()
		else
			image.Visible = true
			sound:Play()
		end
	end)
end
coroutine.wrap(QTFO_fake_script)()
local function IQLZS_fake_script() -- Frame.LocalScript 
	local script = Instance.new('LocalScript', Frame)

	local dragGui = script.Parent
	local UserInputService = game:GetService("UserInputService")
	local isDragging = false
	local dragStartPos
	local guiStartPos
	
	dragGui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			isDragging = true
			dragStartPos = Vector2.new(input.Position.X, input.Position.Y)
			guiStartPos = Vector2.new(dragGui.Position.X.Offset, dragGui.Position.Y.Offset)
	
			dragGui.BackgroundTransparency = 0.8
		end
	end)
	
	UserInputService.InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			isDragging = false
			dragGui.BackgroundTransparency = 1
		end
	end)
	
	UserInputService.InputChanged:Connect(function(input)
		if isDragging and input.UserInputType == Enum.UserInputType.MouseMovement then
			local currentPos = Vector2.new(input.Position.X, input.Position.Y)
			local delta = currentPos - dragStartPos
			dragGui.Position = UDim2.new(
				0, guiStartPos.X + delta.X,
				0, guiStartPos.Y + delta.Y
			)
		end
	end)
	
end
coroutine.wrap(IQLZS_fake_script)()
