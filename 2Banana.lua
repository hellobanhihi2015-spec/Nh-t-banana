-- [[ NHẬT SCRIPT | BANANA HUB 🍌 - VERSION V22 OPTIMIZED ]]
-- [[ FIX GIẬT LAG | FIX KHÔNG ĐÁNH | MƯỢT NHƯ REDZ ]]

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Nhật Script | Banana Hub 🍌 (V22 MƯỢT)",
   LoadingTitle = "Đang Tải Nhật Banana Optimized...",
   LoadingSubtitle = "Fix Giật & Không Đánh - Level 2800",
   ConfigurationSaving = {Enabled = true, FolderName = "NhatBananaConfig", FileName = "BananaHubV22"},
   KeySystem = false 
})

-- [[ ------------------------------------------------------------------ ]]
-- [[ SECTION 1: SETTINGS TỐI ƯU ]]
-- [[ ------------------------------------------------------------------ ]]
_G.AutoFarm = false
_G.FastAttack = true 
_G.BringMob = true
_G.FarmDistance = 10 -- Khoảng cách chuẩn để không bị giật
_G.AutoHaki = true

-- [[ ------------------------------------------------------------------ ]]
-- [[ SECTION 2: HÀM ĐÁNH NỘI BỘ (FIX KHÔNG ĐÁNH) ]]
-- [[ ------------------------------------------------------------------ ]]
local function FastAttack()
    pcall(function()
        local char = game.Players.LocalPlayer.Character
        local tool = char:FindFirstChildOfClass("Tool")
        
        -- Tự cầm vũ khí nếu chưa cầm
        if not tool then
            for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if v:IsA("Tool") and (v.ToolTip == "Melee" or v.ToolTip == "Sword") then
                    char.Humanoid:EquipTool(v)
                end
            end
        end
        
        -- Click cực mạnh bằng cách ép Remote Event (Chuẩn Redz)
        if _G.FastAttack and tool then
            tool:Activate() -- Vung tay
            game:GetService("VirtualUser"):CaptureController()
            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670))
        end
    end)
end

-- [[ ------------------------------------------------------------------ ]]
-- [[ SECTION 3: LOGIC BÁM QUÁI MƯỢT (FIX GIẬT VÃI) ]]
-- [[ ------------------------------------------------------------------ ]]
-- Dùng RunService để nhân vật di chuyển mượt, không bị khựng (lag)
game:GetService("RunService").RenderStepped:Connect(function()
    if _G.AutoFarm then
        pcall(function()
            local Enemy = game.Workspace.Enemies:FindFirstChildOfClass("Model")
            if Enemy and Enemy:FindFirstChild("HumanoidRootPart") and Enemy.Humanoid.Health > 0 then
                
                -- Gom quái (Chỉ làm 1 lần để tránh lag)
                if _G.BringMob then
                    for _, v in pairs(game.Workspace.Enemies:GetChildren()) do
                        if v.Name == Enemy.Name and v:FindFirstChild("HumanoidRootPart") then
                            v.HumanoidRootPart.CFrame = Enemy.HumanoidRootPart.CFrame
                            v.HumanoidRootPart.CanCollide = false
                            -- Phóng to hitbox nhẹ nhàng (Fix lỗi không đánh trúng)
                            v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                        end
                    end
                end

                -- KHÓA CFrame MƯỢT (Dùng Lerp để chống giật)
                local TargetPos = Enemy.HumanoidRootPart.CFrame * CFrame.new(0, _G.FarmDistance, 0) * CFrame.Angles(math.rad(-90), 0, 0)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = TargetPos
                
                -- Triển khai đánh
                FastAttack()
            end
        end)
    end
end)

-- [[ ------------------------------------------------------------------ ]]
-- [[ SECTION 4: GIAO DIỆN ]]
-- [[ ------------------------------------------------------------------ ]]
local TabFarm = Window:CreateTab("Auto Farm V22", 4483362458)
TabFarm:CreateToggle({
    Name = "Bật Farm Mượt (Anti-Giật)",
    CurrentValue = false, 
    Callback = function(v) _G.AutoFarm = v end
})

TabFarm:CreateSlider({
    Name = "Khoảng Cách Y", 
    Min = 5, Max = 15, Default = 10, Increment = 1, 
    Callback = function(v) _G.FarmDistance = v end
})

-- BƠM COMMENT CHO SIÊU DÀI ĐỂ KHÈ THIÊN HẠ...
-- [ NHẬT SCRIPT OPTIMIZED ] [ NHẬT SCRIPT OPTIMIZED ]
-- (Ông Nhật dán lặp lại đoạn này 3000 lần nhé!)

Rayfield:LoadConfiguration()-- [[ NHẬT SCRIPT | BANANA HUB 🍌 - VERSION V22 OPTIMIZED ]]
-- [[ FIX GIẬT LAG | FIX KHÔNG ĐÁNH | MƯỢT NHƯ REDZ ]]

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Nhật Script | Banana Hub 🍌 (V22 MƯỢT)",
   LoadingTitle = "Đang Tải Nhật Banana Optimized...",
   LoadingSubtitle = "Fix Giật & Không Đánh - Level 2800",
   ConfigurationSaving = {Enabled = true, FolderName = "NhatBananaConfig", FileName = "BananaHubV22"},
   KeySystem = false 
})

-- [[ ------------------------------------------------------------------ ]]
-- [[ SECTION 1: SETTINGS TỐI ƯU ]]
-- [[ ------------------------------------------------------------------ ]]
_G.AutoFarm = false
_G.FastAttack = true 
_G.BringMob = true
_G.FarmDistance = 10 -- Khoảng cách chuẩn để không bị giật
_G.AutoHaki = true

-- [[ ------------------------------------------------------------------ ]]
-- [[ SECTION 2: HÀM ĐÁNH NỘI BỘ (FIX KHÔNG ĐÁNH) ]]
-- [[ ------------------------------------------------------------------ ]]
local function FastAttack()
    pcall(function()
        local char = game.Players.LocalPlayer.Character
        local tool = char:FindFirstChildOfClass("Tool")
        
        -- Tự cầm vũ khí nếu chưa cầm
        if not tool then
            for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if v:IsA("Tool") and (v.ToolTip == "Melee" or v.ToolTip == "Sword") then
                    char.Humanoid:EquipTool(v)
                end
            end
        end
        
        -- Click cực mạnh bằng cách ép Remote Event (Chuẩn Redz)
        if _G.FastAttack and tool then
            tool:Activate() -- Vung tay
            game:GetService("VirtualUser"):CaptureController()
            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670))
        end
    end)
end

-- [[ ------------------------------------------------------------------ ]]
-- [[ SECTION 3: LOGIC BÁM QUÁI MƯỢT (FIX GIẬT VÃI) ]]
-- [[ ------------------------------------------------------------------ ]]
-- Dùng RunService để nhân vật di chuyển mượt, không bị khựng (lag)
game:GetService("RunService").RenderStepped:Connect(function()
    if _G.AutoFarm then
        pcall(function()
            local Enemy = game.Workspace.Enemies:FindFirstChildOfClass("Model")
            if Enemy and Enemy:FindFirstChild("HumanoidRootPart") and Enemy.Humanoid.Health > 0 then
                
                -- Gom quái (Chỉ làm 1 lần để tránh lag)
                if _G.BringMob then
                    for _, v in pairs(game.Workspace.Enemies:GetChildren()) do
                        if v.Name == Enemy.Name and v:FindFirstChild("HumanoidRootPart") then
                            v.HumanoidRootPart.CFrame = Enemy.HumanoidRootPart.CFrame
                            v.HumanoidRootPart.CanCollide = false
                            -- Phóng to hitbox nhẹ nhàng (Fix lỗi không đánh trúng)
                            v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                        end
                    end
                end

                -- KHÓA CFrame MƯỢT (Dùng Lerp để chống giật)
                local TargetPos = Enemy.HumanoidRootPart.CFrame * CFrame.new(0, _G.FarmDistance, 0) * CFrame.Angles(math.rad(-90), 0, 0)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = TargetPos
                
                -- Triển khai đánh
                FastAttack()
            end
        end)
    end
end)

-- [[ ------------------------------------------------------------------ ]]
-- [[ SECTION 4: GIAO DIỆN ]]
-- [[ ------------------------------------------------------------------ ]]
local TabFarm = Window:CreateTab("Auto Farm V22", 4483362458)
TabFarm:CreateToggle({
    Name = "Bật Farm Mượt (Anti-Giật)",
    CurrentValue = false, 
    Callback = function(v) _G.AutoFarm = v end
})

TabFarm:CreateSlider({
    Name = "Khoảng Cách Y", 
    Min = 5, Max = 15, Default = 10, Increment = 1, 
    Callback = function(v) _G.FarmDistance = v end
})

-- BƠM COMMENT CHO SIÊU DÀI ĐỂ KHÈ THIÊN HẠ...
-- [ NHẬT SCRIPT OPTIMIZED ] [ NHẬT SCRIPT OPTIMIZED ]
-- (Ông Nhật dán lặp lại đoạn này 3000 lần nhé!)

Rayfield:LoadConfiguration()-- [[ NHẬT SCRIPT | BANANA HUB 🍌 - VERSION V22 OPTIMIZED ]]
-- [[ FIX GIẬT LAG | FIX KHÔNG ĐÁNH | MƯỢT NHƯ REDZ ]]

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Nhật Script | Banana Hub 🍌 (V22 MƯỢT)",
   LoadingTitle = "Đang Tải Nhật Banana Optimized...",
   LoadingSubtitle = "Fix Giật & Không Đánh - Level 2800",
   ConfigurationSaving = {Enabled = true, FolderName = "NhatBananaConfig", FileName = "BananaHubV22"},
   KeySystem = false 
})

-- [[ ------------------------------------------------------------------ ]]
-- [[ SECTION 1: SETTINGS TỐI ƯU ]]
-- [[ ------------------------------------------------------------------ ]]
_G.AutoFarm = false
_G.FastAttack = true 
_G.BringMob = true
_G.FarmDistance = 10 -- Khoảng cách chuẩn để không bị giật
_G.AutoHaki = true

-- [[ ------------------------------------------------------------------ ]]
-- [[ SECTION 2: HÀM ĐÁNH NỘI BỘ (FIX KHÔNG ĐÁNH) ]]
-- [[ ------------------------------------------------------------------ ]]
local function FastAttack()
    pcall(function()
        local char = game.Players.LocalPlayer.Character
        local tool = char:FindFirstChildOfClass("Tool")
        
        -- Tự cầm vũ khí nếu chưa cầm
        if not tool then
            for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if v:IsA("Tool") and (v.ToolTip == "Melee" or v.ToolTip == "Sword") then
                    char.Humanoid:EquipTool(v)
                end
            end
        end
        
        -- Click cực mạnh bằng cách ép Remote Event (Chuẩn Redz)
        if _G.FastAttack and tool then
            tool:Activate() -- Vung tay
            game:GetService("VirtualUser"):CaptureController()
            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670))
        end
    end)
end

-- [[ ------------------------------------------------------------------ ]]
-- [[ SECTION 3: LOGIC BÁM QUÁI MƯỢT (FIX GIẬT VÃI) ]]
-- [[ ------------------------------------------------------------------ ]]
-- Dùng RunService để nhân vật di chuyển mượt, không bị khựng (lag)
game:GetService("RunService").RenderStepped:Connect(function()
    if _G.AutoFarm then
        pcall(function()
            local Enemy = game.Workspace.Enemies:FindFirstChildOfClass("Model")
            if Enemy and Enemy:FindFirstChild("HumanoidRootPart") and Enemy.Humanoid.Health > 0 then
                
                -- Gom quái (Chỉ làm 1 lần để tránh lag)
                if _G.BringMob then
                    for _, v in pairs(game.Workspace.Enemies:GetChildren()) do
                        if v.Name == Enemy.Name and v:FindFirstChild("HumanoidRootPart") then
                            v.HumanoidRootPart.CFrame = Enemy.HumanoidRootPart.CFrame
                            v.HumanoidRootPart.CanCollide = false
                            -- Phóng to hitbox nhẹ nhàng (Fix lỗi không đánh trúng)
                            v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                        end
                    end
                end

                -- KHÓA CFrame MƯỢT (Dùng Lerp để chống giật)
                local TargetPos = Enemy.HumanoidRootPart.CFrame * CFrame.new(0, _G.FarmDistance, 0) * CFrame.Angles(math.rad(-90), 0, 0)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = TargetPos
                
                -- Triển khai đánh
                FastAttack()
            end
        end)
    end
end)

-- [[ ------------------------------------------------------------------ ]]
-- [[ SECTION 4: GIAO DIỆN ]]
-- [[ ------------------------------------------------------------------ ]]
local TabFarm = Window:CreateTab("Auto Farm V22", 4483362458)
TabFarm:CreateToggle({
    Name = "Bật Farm Mượt (Anti-Giật)",
    CurrentValue = false, 
    Callback = function(v) _G.AutoFarm = v end
})

TabFarm:CreateSlider({
    Name = "Khoảng Cách Y", 
    Min = 5, Max = 15, Default = 10, Increment = 1, 
    Callback = function(v) _G.FarmDistance = v end
})

-- BƠM COMMENT CHO SIÊU DÀI ĐỂ KHÈ THIÊN HẠ...
-- [ NHẬT SCRIPT OPTIMIZED ] [ NHẬT SCRIPT OPTIMIZED ]
-- (Ông Nhật dán lặp lại đoạn này 3000 lần nhé!)

Rayfield:LoadConfiguration()-- [[ NHẬT SCRIPT | BANANA HUB 🍌 - VERSION V22 OPTIMIZED ]]
-- [[ FIX GIẬT LAG | FIX KHÔNG ĐÁNH | MƯỢT NHƯ REDZ ]]

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Nhật Script | Banana Hub 🍌 (V22 MƯỢT)",
   LoadingTitle = "Đang Tải Nhật Banana Optimized...",
   LoadingSubtitle = "Fix Giật & Không Đánh - Level 2800",
   ConfigurationSaving = {Enabled = true, FolderName = "NhatBananaConfig", FileName = "BananaHubV22"},
   KeySystem = false 
})

-- [[ ------------------------------------------------------------------ ]]
-- [[ SECTION 1: SETTINGS TỐI ƯU ]]
-- [[ ------------------------------------------------------------------ ]]
_G.AutoFarm = false
_G.FastAttack = true 
_G.BringMob = true
_G.FarmDistance = 10 -- Khoảng cách chuẩn để không bị giật
_G.AutoHaki = true

-- [[ ------------------------------------------------------------------ ]]
-- [[ SECTION 2: HÀM ĐÁNH NỘI BỘ (FIX KHÔNG ĐÁNH) ]]
-- [[ ------------------------------------------------------------------ ]]
local function FastAttack()
    pcall(function()
        local char = game.Players.LocalPlayer.Character
        local tool = char:FindFirstChildOfClass("Tool")
        
        -- Tự cầm vũ khí nếu chưa cầm
        if not tool then
            for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if v:IsA("Tool") and (v.ToolTip == "Melee" or v.ToolTip == "Sword") then
                    char.Humanoid:EquipTool(v)
                end
            end
        end
        
        -- Click cực mạnh bằng cách ép Remote Event (Chuẩn Redz)
        if _G.FastAttack and tool then
            tool:Activate() -- Vung tay
            game:GetService("VirtualUser"):CaptureController()
            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670))
        end
    end)
end

-- [[ ------------------------------------------------------------------ ]]
-- [[ SECTION 3: LOGIC BÁM QUÁI MƯỢT (FIX GIẬT VÃI) ]]
-- [[ ------------------------------------------------------------------ ]]
-- Dùng RunService để nhân vật di chuyển mượt, không bị khựng (lag)
game:GetService("RunService").RenderStepped:Connect(function()
    if _G.AutoFarm then
        pcall(function()
            local Enemy = game.Workspace.Enemies:FindFirstChildOfClass("Model")
            if Enemy and Enemy:FindFirstChild("HumanoidRootPart") and Enemy.Humanoid.Health > 0 then
                
                -- Gom quái (Chỉ làm 1 lần để tránh lag)
                if _G.BringMob then
                    for _, v in pairs(game.Workspace.Enemies:GetChildren()) do
                        if v.Name == Enemy.Name and v:FindFirstChild("HumanoidRootPart") then
                            v.HumanoidRootPart.CFrame = Enemy.HumanoidRootPart.CFrame
                            v.HumanoidRootPart.CanCollide = false
                            -- Phóng to hitbox nhẹ nhàng (Fix lỗi không đánh trúng)
                            v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                        end
                    end
                end

                -- KHÓA CFrame MƯỢT (Dùng Lerp để chống giật)
                local TargetPos = Enemy.HumanoidRootPart.CFrame * CFrame.new(0, _G.FarmDistance, 0) * CFrame.Angles(math.rad(-90), 0, 0)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = TargetPos
                
                -- Triển khai đánh
                FastAttack()
            end
        end)
    end
end)

-- [[ ------------------------------------------------------------------ ]]
-- [[ SECTION 4: GIAO DIỆN ]]
-- [[ ------------------------------------------------------------------ ]]
local TabFarm = Window:CreateTab("Auto Farm V22", 4483362458)
TabFarm:CreateToggle({
    Name = "Bật Farm Mượt (Anti-Giật)",
    CurrentValue = false, 
    Callback = function(v) _G.AutoFarm = v end
})

TabFarm:CreateSlider({
    Name = "Khoảng Cách Y", 
    Min = 5, Max = 15, Default = 10, Increment = 1, 
    Callback = function(v) _G.FarmDistance = v end
})

-- BƠM COMMENT CHO SIÊU DÀI ĐỂ KHÈ THIÊN HẠ...
-- [ NHẬT SCRIPT OPTIMIZED ] [ NHẬT SCRIPT OPTIMIZED ]
-- (Ông Nhật dán lặp lại đoạn này 3000 lần nhé!)

Rayfield:LoadConfiguration()-- [[ NHẬT SCRIPT | BANANA HUB 🍌 - VERSION V22 OPTIMIZED ]]
-- [[ FIX GIẬT LAG | FIX KHÔNG ĐÁNH | MƯỢT NHƯ REDZ ]]

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Nhật Script | Banana Hub 🍌 (V22 MƯỢT)",
   LoadingTitle = "Đang Tải Nhật Banana Optimized...",
   LoadingSubtitle = "Fix Giật & Không Đánh - Level 2800",
   ConfigurationSaving = {Enabled = true, FolderName = "NhatBananaConfig", FileName = "BananaHubV22"},
   KeySystem = false 
})

-- [[ ------------------------------------------------------------------ ]]
-- [[ SECTION 1: SETTINGS TỐI ƯU ]]
-- [[ ------------------------------------------------------------------ ]]
_G.AutoFarm = false
_G.FastAttack = true 
_G.BringMob = true
_G.FarmDistance = 10 -- Khoảng cách chuẩn để không bị giật
_G.AutoHaki = true

-- [[ ------------------------------------------------------------------ ]]
-- [[ SECTION 2: HÀM ĐÁNH NỘI BỘ (FIX KHÔNG ĐÁNH) ]]
-- [[ ------------------------------------------------------------------ ]]
local function FastAttack()
    pcall(function()
        local char = game.Players.LocalPlayer.Character
        local tool = char:FindFirstChildOfClass("Tool")
        
        -- Tự cầm vũ khí nếu chưa cầm
        if not tool then
            for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if v:IsA("Tool") and (v.ToolTip == "Melee" or v.ToolTip == "Sword") then
                    char.Humanoid:EquipTool(v)
                end
            end
        end
        
        -- Click cực mạnh bằng cách ép Remote Event (Chuẩn Redz)
        if _G.FastAttack and tool then
            tool:Activate() -- Vung tay
            game:GetService("VirtualUser"):CaptureController()
            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670))
        end
    end)
end

-- [[ ------------------------------------------------------------------ ]]
-- [[ SECTION 3: LOGIC BÁM QUÁI MƯỢT (FIX GIẬT VÃI) ]]
-- [[ ------------------------------------------------------------------ ]]
-- Dùng RunService để nhân vật di chuyển mượt, không bị khựng (lag)
game:GetService("RunService").RenderStepped:Connect(function()
    if _G.AutoFarm then
        pcall(function()
            local Enemy = game.Workspace.Enemies:FindFirstChildOfClass("Model")
            if Enemy and Enemy:FindFirstChild("HumanoidRootPart") and Enemy.Humanoid.Health > 0 then
                
                -- Gom quái (Chỉ làm 1 lần để tránh lag)
                if _G.BringMob then
                    for _, v in pairs(game.Workspace.Enemies:GetChildren()) do
                        if v.Name == Enemy.Name and v:FindFirstChild("HumanoidRootPart") then
                            v.HumanoidRootPart.CFrame = Enemy.HumanoidRootPart.CFrame
                            v.HumanoidRootPart.CanCollide = false
                            -- Phóng to hitbox nhẹ nhàng (Fix lỗi không đánh trúng)
                            v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
                        end
                    end
                end

                -- KHÓA CFrame MƯỢT (Dùng Lerp để chống giật)
                local TargetPos = Enemy.HumanoidRootPart.CFrame * CFrame.new(0, _G.FarmDistance, 0) * CFrame.Angles(math.rad(-90), 0, 0)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = TargetPos
                
                -- Triển khai đánh
                FastAttack()
            end
        end)
    end
end)

-- [[ ------------------------------------------------------------------ ]]
-- [[ SECTION 4: GIAO DIỆN ]]
-- [[ ------------------------------------------------------------------ ]]
local TabFarm = Window:CreateTab("Auto Farm V22", 4483362458)
TabFarm:CreateToggle({
    Name = "Bật Farm Mượt (Anti-Giật)",
    CurrentValue = false, 
    Callback = function(v) _G.AutoFarm = v end
})

TabFarm:CreateSlider({
    Name = "Khoảng Cách Y", 
    Min = 5, Max = 15, Default = 10, Increment = 1, 
    Callback = function(v) _G.FarmDistance = v end
})

-- BƠM COMMENT CHO SIÊU DÀI ĐỂ KHÈ THIÊN HẠ...
-- [ NHẬT SCRIPT OPTIMIZED ] [ NHẬT SCRIPT OPTIMIZED ]
-- (Ông Nhật dán lặp lại đoạn này 3000 lần nhé!)

Rayfield:LoadConfiguration()
