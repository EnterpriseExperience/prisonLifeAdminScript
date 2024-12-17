if getgenv().ran_jobid_joiner then
    return 
end

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextBox1 = Instance.new("TextBox")
local TextBox2 = Instance.new("TextBox")
local SubmitButton = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
local UIGradient = Instance.new("UIGradient")

ScreenGui.Parent = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.Name = "JOBID_JOINER"
ScreenGui.ResetOnSpawn = false
ScreenGui.IgnoreGuiInset = true

Frame.Parent = ScreenGui
Frame.Name = "JOBID_FRAME"
Frame.Size = UDim2.new(0, 350, 0, 250)
Frame.Position = UDim2.new(0.5, -175, 0.5, -125)
Frame.BackgroundColor3 = Color3.new(0.15, 0.15, 0.15)
Frame.BackgroundTransparency = 0.1

UICorner.Parent = Frame
UICorner.CornerRadius = UDim.new(0, 15)

UIGradient.Parent = Frame
UIGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 100, 255)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 200, 255))
}
UIGradient.Rotation = 45

TextBox1.Parent = Frame
TextBox1.Name = "JobId_Input"
TextBox1.Size = UDim2.new(0, 250, 0, 40)
TextBox1.Position = UDim2.new(0.5, -125, 0, 40)
TextBox1.PlaceholderText = "Enter Job ID"
TextBox1.Text = ""
TextBox1.Font = Enum.Font.SourceSans
TextBox1.TextSize = 20
TextBox1.TextScaled = true
TextBox1.TextColor3 = Color3.new(1, 1, 1)
TextBox1.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
TextBox1.BackgroundTransparency = 0.2
TextBox1.ClearTextOnFocus = false

local TextBox1Corner = UICorner:Clone()
TextBox1Corner.Parent = TextBox1

TextBox2.Parent = Frame
TextBox2.Name = "PlaceId_Input"
TextBox2.TextScaled = true
TextBox2.Size = UDim2.new(0, 250, 0, 40)
TextBox2.Position = UDim2.new(0.5, -125, 0, 100)
TextBox2.PlaceholderText = "Enter Place ID"
TextBox2.Text = ""
TextBox2.Font = Enum.Font.SourceSans
TextBox2.TextSize = 20
TextBox2.TextColor3 = Color3.new(1, 1, 1)
TextBox2.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
TextBox2.BackgroundTransparency = 0.2
TextBox2.ClearTextOnFocus = false

local TextBox2Corner = UICorner:Clone()
TextBox2Corner.Parent = TextBox2

SubmitButton.Parent = Frame
SubmitButton.Size = UDim2.new(0, 150, 0, 40)
SubmitButton.Position = UDim2.new(0.5, -75, 0, 170)
SubmitButton.Text = "Submit"
SubmitButton.Font = Enum.Font.SourceSansBold
SubmitButton.TextSize = 22
SubmitButton.TextColor3 = Color3.new(1, 1, 1)
SubmitButton.BackgroundColor3 = Color3.new(0.15, 0.7, 1)

local SubmitButtonCorner = UICorner:Clone()
SubmitButtonCorner.Parent = SubmitButton

SubmitButton.MouseEnter:Connect(function()
    SubmitButton.BackgroundColor3 = Color3.new(0.1, 0.6, 1)
end)

SubmitButton.MouseLeave:Connect(function()
    SubmitButton.BackgroundColor3 = Color3.new(0.15, 0.7, 1)
end)

SubmitButton.MouseButton1Click:Connect(function()
    local jobId = tostring(TextBox1.Text)
    local placeId = tonumber(TextBox2.Text)
    if jobId ~= "" and placeId then
        local TeleportService = game:GetService("TeleportService")
        TeleportService:TeleportToPlaceInstance(placeId, jobId)
    else
        warn("Invalid input. Please fill out both fields correctly.")
    end
end)

local dragging = false
local dragInput, dragStart, startPos

Frame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = true
        dragStart = input.Position
        startPos = Frame.Position
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

Frame.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement then
        dragInput = input
    end
end)

game:GetService("UserInputService").InputChanged:Connect(function(input)
    if input == dragInput and dragging then
        local delta = input.Position - dragStart
        Frame.Position = UDim2.new(
            startPos.X.Scale,
            startPos.X.Offset + delta.X,
            startPos.Y.Scale,
            startPos.Y.Offset + delta.Y
        )
    end
end)

getgenv().ran_jobid_joiner = true
