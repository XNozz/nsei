WalkspeedQ.Name = "WalkspeedQ"
WalkspeedQ.Parent = Main
WalkspeedQ.BackgroundColor3 = Color3.new(0.176471, 0.176471, 0.176471)
WalkspeedQ.BorderSizePixel = 0
WalkspeedQ.Position = UDim2.new(0.0178603820, 0, 0.112641335, 0)
WalkspeedQ.Size = UDim2.new(0, 300, 0, 50)
WalkspeedQ.Font = Enum.Font.Bodoni
WalkspeedQ.FontSize = Enum.FontSize.Size32
WalkspeedQ.Text = "SpeedHax [Q]"
WalkspeedQ.TextColor3 = Color3.new(1, 1, 1)
WalkspeedQ.TextSize = 30
WalkspeedQ.MouseButton1Down:connect(function()
local walkspeedplayer = game:GetService("Players").LocalPlayer
local walkspeedmouse = walkspeedplayer:GetMouse()

local walkspeedenabled = false

function x_walkspeed(key)
if (key == "q") then
if walkspeedenabled == false then
_G.WS = 200;
local Humanoid = game:GetService("Players").LocalPlayer.Character.Humanoid;
Humanoid:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
Humanoid.WalkSpeed = _G.WS;
end)
Humanoid.WalkSpeed = _G.WS;

walkspeedenabled = true
elseif walkspeedenabled == true then
_G.WS = 20;
local Humanoid = game:GetService("Players").LocalPlayer.Character.Humanoid;
Humanoid:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
Humanoid.WalkSpeed = _G.WS;
end)
Humanoid.WalkSpeed = _G.WS;

walkspeedenabled = false
end
end
end

walkspeedmouse.KeyDown:connect(x_walkspeed)

end)
