_
        end
    end
end)
0)
    stroke.Transparency = 0.2
    stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
    stroke.Parent = textObject

    local grad = textObject:FindFirstChildOfClass("UIGradient") or Instance.new("UIGradient")
    grad.Color = HEX_TEXT_PATTERN
    grad.Rotation = 45
    grad.Parent = textObject

    animatedGradients[grad] = 35
    return grad
end

local function createUICorner(parent, radius)
    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, radius)
    corner.Parent = parent
end

local function addHoverAnimation(btn, normalColor, hoverColor)
    btn.MouseEnter:Connect(function()
        TweenService:Create(btn, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = hoverColor}):Play()
    end)
    btn.MouseLeave:Connect(function()
        TweenService:Create(btn, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = normalColor}):Play()
    end)
end

local configFile = "HexHUB_FlashTP_Config.json"
local HubConfig = { 
    speedBoostEnabled = false, 
    speedValue = 25, 
    hexSpeedVisible = false,
    speedPos = {ScaleX = 0.98, OffsetX = 0, ScaleY = 0.02, OffsetY = 0},
    stealKeybind = "E",
    potionEnabled = true,
    autoWalkEnabled = false,
    apOnStealEnabled = false,
    autoTPOnAllowEnabled = false,
    autoActivateEnabled = false,
    kickAfterStealEnabled = false,
    apDefenseEnabled = false,
    laserDefenseEnabled = false,
    aimbotEnabled = false,
    selectedSlot = 1,
    selectedGear = "Auto"
}

if isfile and isfile(configFile) then 
    local