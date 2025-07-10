-- GUI Principal
local gui = Instance.new("ScreenGui", game.CoreGui)
gui.Name = "g00bkiddGui"

-- Marco principal
local frame = Instance.new("Frame", gui)
frame.Size = UDim2.new(0, 250, 0, 150)
frame.Position = UDim2.new(0.5, -125, 0.5, -75)
frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
frame.BorderSizePixel = 0
frame.Active = true
frame.Draggable = true

local uicorner = Instance.new("UICorner", frame)
uicorner.CornerRadius = UDim.new(0, 12)

-- Título
local title = Instance.new("TextLabel", frame)
title.Size = UDim2.new(1, 0, 0, 30)
title.BackgroundTransparency = 1
title.Text = "g00bkidd gui"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.Font = Enum.Font.GothamBold
title.TextSize = 20

-- Decal Spam Botón
local decalBtn = Instance.new("TextButton", frame)
decalBtn.Size = UDim2.new(0.9, 0, 0, 30)
decalBtn.Position = UDim2.new(0.05, 0, 0, 40)
decalBtn.Text = "Decal Spam"
decalBtn.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
decalBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
decalBtn.Font = Enum.Font.Gotham
decalBtn.TextSize = 16

local corner1 = Instance.new("UICorner", decalBtn)
corner1.CornerRadius = UDim.new(0, 8)

decalBtn.MouseButton1Click:Connect(function()
    for _, v in pairs(workspace:GetDescendants()) do
        if v:IsA("Decal") then
            v.Texture = "rbxassetid://15236736874"
        end
    end
end)

-- Música Toggle
local playing = false
local sound = Instance.new("Sound", workspace)
sound.SoundId = "rbxassetid://75522197868449"
sound.Volume = 3
sound.Looped = true

local musicBtn = Instance.new("TextButton", frame)
musicBtn.Size = UDim2.new(0.9, 0, 0, 30)
musicBtn.Position = UDim2.new(0.05, 0, 0, 80)
musicBtn.Text = "Play Music"
musicBtn.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
musicBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
musicBtn.Font = Enum.Font.Gotham
musicBtn.TextSize = 16

local corner2 = Instance.new("UICorner", musicBtn)
corner2.CornerRadius = UDim.new(0, 8)

musicBtn.MouseButton1Click:Connect(function()
    if playing then
        sound:Pause()
        musicBtn.Text = "Play Music"
    else
        sound:Play()
        musicBtn.Text = "Pause Music"
    end
    playing = not playing
end)
