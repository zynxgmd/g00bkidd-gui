-- Crear GUI
local gui = Instance.new("ScreenGui", game.CoreGui)
gui.Name = "AnimationPlayerR6"

-- Marco principal
local frame = Instance.new("Frame", gui)
frame.Size = UDim2.new(0, 300, 0, 160)
frame.Position = UDim2.new(0.5, -150, 0.5, -80)
frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
frame.Active = true
frame.Draggable = true

-- Redondeo
local corner = Instance.new("UICorner", frame)
corner.CornerRadius = UDim.new(0, 10)

-- Header oscuro
local header = Instance.new("Frame", frame)
header.Size = UDim2.new(1, 0, 0, 30)
header.BackgroundColor3 = Color3.fromRGB(15, 15, 15)

local headerCorner = Instance.new("UICorner", header)
headerCorner.CornerRadius = UDim.new(0, 10)

-- Título
local title = Instance.new("TextLabel", header)
title.Size = UDim2.new(1, 0, 1, 0)
title.BackgroundTransparency = 1
title.Text = "animation player r6"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.Font = Enum.Font.GothamBold
title.TextSize = 16

-- Texto "Animation ID:"
local label = Instance.new("TextLabel", frame)
label.Size = UDim2.new(1, -40, 0, 20)
label.Position = UDim2.new(0, 20, 0, 50)
label.BackgroundTransparency = 1
label.Text = "Animation ID:"
label.TextColor3 = Color3.fromRGB(255, 255, 255)
label.Font = Enum.Font.Gotham
label.TextSize = 14
label.TextXAlignment = Enum.TextXAlignment.Left

-- Cuadro para escribir la ID
local textbox = Instance.new("TextBox", frame)
textbox.Size = UDim2.new(1, -40, 0, 30)
textbox.Position = UDim2.new(0, 20, 0, 75)
textbox.PlaceholderText = "Enter Animation ID"
textbox.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
textbox.TextColor3 = Color3.fromRGB(255, 255, 255)
textbox.Font = Enum.Font.Gotham
textbox.TextSize = 14

local tbCorner = Instance.new("UICorner", textbox)
tbCorner.CornerRadius = UDim.new(0, 6)

-- Botón cerrar
local close = Instance.new("TextButton", header)
close.Size = UDim2.new(0, 30, 0, 30)
close.Position = UDim2.new(1, -30, 0, 0)
close.Text = "X"
close.BackgroundTransparency = 1
close.TextColor3 = Color3.fromRGB(200, 0, 0)
close.Font = Enum.Font.GothamBold
close.TextSize = 16

close.MouseButton1Click:Connect(function()
    gui:Destroy()
end)

    end
    playing = not playing
end)
