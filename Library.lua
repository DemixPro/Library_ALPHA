local Library = {}
function Library:CreateWindow(WindowTopText)
	local Window = {}	
	local ZerelUILibrary_random = Instance.new("ScreenGui")
	local MainFrame = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local Border = Instance.new("Frame")
	local TopText = Instance.new("TextLabel")
	local Border_2 = Instance.new("Frame")
	local Tabs = Instance.new("Frame")
	local UIListLayout = Instance.new("UIListLayout")

	local Gui = "ZerelUILibrary_" .. game:GetService("HttpService"):GenerateGUID(false)
	
	ZerelUILibrary_random.Name = Gui
	ZerelUILibrary_random.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

	MainFrame.Name = "MainFrame"
	MainFrame.Parent = ZerelUILibrary_random
	MainFrame.BackgroundColor3 = Color3.fromRGB(58, 58, 58)
	MainFrame.BorderColor3 = Color3.fromRGB(170, 0, 0)
	MainFrame.Position = UDim2.new(0.157273918, 0, 0.242957756, 0)
	MainFrame.Size = UDim2.new(0, 494, 0, 277)

	UICorner.Parent = MainFrame

	Border.Name = "Border"
	Border.Parent = MainFrame
	Border.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Border.BorderColor3 = Color3.fromRGB(255, 255, 255)
	Border.Position = UDim2.new(0, 0, 0.0866426006, 0)
	Border.Size = UDim2.new(0, 494, 0, 0)

	TopText.Name = "TopText"
	TopText.Parent = MainFrame
	TopText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TopText.BackgroundTransparency = 1.000
	TopText.Position = UDim2.new(0, 0, -0.00361010828, 0)
	TopText.Size = UDim2.new(0, 425, 0, 25)
	TopText.Font = Enum.Font.Cartoon
	TopText.Text = "    " .. WindowTopText
	TopText.TextColor3 = Color3.fromRGB(0, 0, 0)
	TopText.TextSize = 14.000
	TopText.TextXAlignment = Enum.TextXAlignment.Left

	Border_2.Name = "Border"
	Border_2.Parent = MainFrame
	Border_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Border_2.BorderColor3 = Color3.fromRGB(255, 255, 255)
	Border_2.Position = UDim2.new(0.224696353, 0, 0.0866426006, 0)
	Border_2.Size = UDim2.new(0, 0, 0, 253)

	Tabs.Name = "Tabs"
	Tabs.Parent = MainFrame
	Tabs.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Tabs.BackgroundTransparency = 1.000
	Tabs.Position = UDim2.new(0, 0, 0.0866426006, 0)
	Tabs.Size = UDim2.new(0, 111, 0, 253)

	UIListLayout.Parent = Tabs
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	
	function Window:Tab(TabText)
		local Tab = Instance.new("Frame")
		local Hitbox = Instance.new("TextButton")

		Tab.Name = "Tab"
		Tab.Parent = Gui.MainFrame.Tabs
		Tab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Tab.BackgroundTransparency = 1.000
		Tab.Size = UDim2.new(0, 110, 0, 39)

		Hitbox.Name = "Hitbox"
		Hitbox.Parent = Tab
		Hitbox.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
		Hitbox.BorderColor3 = Color3.fromRGB(27, 42, 53)
		Hitbox.BorderSizePixel = 0
		Hitbox.Position = UDim2.new(0, 0, -0.00999998394, 0)
		Hitbox.Size = UDim2.new(0, 110, 0, 36)
		Hitbox.Font = Enum.Font.SourceSans
		Hitbox.TextColor3 = Color3.fromRGB(0, 0, 0)
		Hitbox.TextSize = 14.000
		Hitbox.Text = TabText
	end
	return Window
end
return Library
