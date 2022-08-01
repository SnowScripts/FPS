local ScreenGui = Instance.new("ScreenGui")
local FPSCounterText = Instance.new("TextLabel")
local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
local TextButton = Instance.new("TextButton")
local UITextSizeConstraint_2 = Instance.new("UITextSizeConstraint")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")

--Properties:

ScreenGui.Parent = game.CoreGui
ScreenGui.ResetOnSpawn = false
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

FPSCounterText.Name = "FPSCounterText"
FPSCounterText.Parent = ScreenGui
FPSCounterText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
FPSCounterText.BackgroundTransparency = S_BackgroundTransparency
FPSCounterText.Position = UDim2.new(S_TextPosition)
FPSCounterText.Size = UDim2.new(0.0488698967, 0, 0.0301329065, 0)
FPSCounterText.Font = S_Font
FPSCounterText.Text = "Waiting"
FPSCounterText.TextColor3 = Color3.fromRGB(S_Color)
FPSCounterText.TextScaled = true
FPSCounterText.TextSize = 21.000
FPSCounterText.TextWrapped = true
FPSCounterText.TextXAlignment = Enum.TextXAlignment.Right

UITextSizeConstraint.Parent = FPSCounterText
UITextSizeConstraint.MaxTextSize = 23

TextButton.Parent = ScreenGui
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.BackgroundTransparency = 1.000
TextButton.Position = UDim2.new(0.982732296, 0, 0.824776769, 0)
TextButton.Size = UDim2.new(0.0162241887, 0, 0.0234375, 0)
TextButton.Font = Enum.Font.FredokaOne
TextButton.Text = "X"
TextButton.TextColor3 = Color3.fromRGB(255, 0, 179)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true
TextButton.Visible = S_ShowCloseButton

UITextSizeConstraint_2.Parent = TextButton
UITextSizeConstraint_2.MaxTextSize = 21

UIAspectRatioConstraint.Parent = ScreenGui
UIAspectRatioConstraint.AspectRatio = 1.513

-- Scripts:

local function VWXBICZ_fake_script() -- FPSCounterText.FPSCounterScript 
	local script = Instance.new('LocalScript', FPSCounterText)

	local u1 = 0;
	function updateFPS()
		u1 = u1 + 1;
	end;
	game:GetService("RunService").RenderStepped:Connect(updateFPS);
	while true do
		wait(1);
		script.Parent.Text = u1 .. " FPS";
		u1 = 0;
	end;
	
end
coroutine.wrap(VWXBICZ_fake_script)()
local function OJOJ_fake_script() -- TextButton.LocalScript 
	local script = Instance.new('LocalScript', TextButton)

	script.Parent.MouseButton1Down:connect(function()
		script.Parent.Parent:Destroy()
	end)
	
end
coroutine.wrap(OJOJ_fake_script)()
