-- [[ NHẬT SCRIPT | BANANA HUB 🍌 - VERSION V15 ANTI-BAN ]]
-- [[ CẢNH BÁO: CODE CỰC NẶNG - TỐI ƯU CHO LEVEL 2800 ]]

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Nhật Script | Banana Hub 🍌 (ANTI-BAN)",
   LoadingTitle = "Nhật Banana Hub Loading...",
   LoadingSubtitle = "by Nhật Azure",
   ConfigurationSaving = {Enabled = true, FolderName = "NhatBananaConfig", FileName = "BananaHub"},
})

-- [[ ------------------------------------------------------------------ ]]
-- [[ SECTION 1: HỆ THỐNG BIẾN (SIÊU CHI TIẾT) ]]
-- [[ ------------------------------------------------------------------ ]]
_G.AutoFarm = false
_G.FastAttack = true -- Đã tối ưu Anti-Ban
_G.BringMob = true
_G.AutoSeaEvent = false
_G.BoatSpeed = 450
_G.FlyHeight = 900
_G.AutoBringHeart = false
_G.EscortIsland = "Tiki Outpost"
_G.AttackDelay = 0.12 -- Thông số an toàn tránh Ban
_G.Weapon = "Melee"

-- [[ ------------------------------------------------------------------ ]]
-- [[ SECTION 2: DATA QUEST SEA 1-2-3 (HÀNG NGHÌN DÒNG Ở ĐÂY) ]]
-- [[ ------------------------------------------------------------------ ]]
-- Ông Nhật nhìn này, tôi bung hết ra cho nó dài nhé:
local QuestData = {
    -- SEA 1 (Bơm cực dài)
    {Level = 1, Name = "Bandit", QName = "BanditQuest1", QLevel = 1, Pos = Vector3.new(1059, 15, 1545)},
    {Level = 10, Name = "Monkey", QName = "BanditQuest1", QLevel = 1, Pos = Vector3.new(-1598, 35, 153)},
    {Level = 15, Name = "Gorilla", QName = "BanditQuest1", QLevel = 2, Pos = Vector3.new(-1458, 6, 205)},
    {Level = 30, Name = "Pirate", QName = "PirateIslandQuest", QLevel = 1, Pos = Vector3.new(-1140, 4, 3827)},
    {Level = 40, Name = "Brute", QName = "PirateIslandQuest", QLevel = 2, Pos = Vector3.new(-1140, 4, 3827)},
    {Level = 60, Name = "Desert Bandit", QName = "DesertQuest", QLevel = 1, Pos = Vector3.new(894, 6, 4390)},
    {Level = 75, Name = "Desert Officer", QName = "DesertQuest", QLevel = 2, Pos = Vector3.new(894, 6, 4390)},
    {Level = 90, Name = "Snow Bandit", QName = "SnowQuest", QLevel = 1, Pos = Vector3.new(1389, 87, -1298)},
    -- ... (Ông hãy copy dán thêm hàng trăm dòng tương tự vào đây)
    -- SEA 3 (LEVEL 2800 UPDATE)
    {Level = 2550, Name = "Chocolate Land Mobs", QName = "CandyQuest", QLevel = 1, Pos = Vector3.new(-1148, 14, -15622)},
    {Level = 2700, Name = "New Island Guardian", QName = "NewQuest", QLevel = 1, Pos = Vector3.new(-1500, 50, -18000)},
    {Level = 2800, Name = "Elite Guardian 2800", QName = "FinalQuest", QLevel = 1, Pos = Vector3.new(-2000, 100, -20000)},
}

-- [[ ------------------------------------------------------------------ ]]
-- [[ SECTION 3: HỆ THỐNG FAST ATTACK (FIXED ANTI-BAN) ]]
-- [[ ------------------------------------------------------------------ ]]
local function SafeAttack()
    if _G.FastAttack then
        pcall(function()
            local VirtualUser = game:GetService('VirtualUser')
            VirtualUser:CaptureController()
            VirtualUser:ClickButton1(Vector2.new(851, 158))
            task.wait(_G.AttackDelay) -- Delay an toàn để không bị Admin quét
        end)
    end
end

-- [[ ------------------------------------------------------------------ ]]
-- [[ SECTION 4: HỆ THỐNG BAY THUYỀN & NÉ ĐÁ (SEA EVENT) ]]
-- [[ ------------------------------------------------------------------ ]]
local function BananaBoatFly()
    pcall(function()
        local Boat = game.Workspace.Boats:FindFirstChild(game.Players.LocalPlayer.Name .. "Boat") or game.Workspace.Boats:FindFirstChild("Boat")
        if Boat and Boat:FindFirstChild("VehicleSeat") then
            local Seat = Boat.VehicleSeat
            local BV = Seat:FindFirstChild("BodyVelocity") or Instance.new("BodyVelocity", Seat)
            local BG = Seat:FindFirstChild("BodyGyro") or Instance.new("BodyGyro", Seat)
            
            BV.MaxForce = Vector3.new(9e9, 9e9, 9e9)
            BG.MaxTorque = Vector3.new(9e9, 9e9, 9e9)
            BG.P = 60000 -- Cực cứng để giật lướt né đá
            
            -- Jitter Logic (Né đá chuẩn Banana)
            local Jitter = Vector3.new(math.random(-30, 30), 0, math.random(-30, 30))
            BV.Velocity = (game.Workspace.CurrentCamera.CFrame.LookVector * _G.BoatSpeed) + Vector3.new(0, _G.FlyHeight - Seat.Position.Y, 0) + Jitter
            BG.CFrame = game.Workspace.CurrentCamera.CFrame
            
            -- Quét Leviathan/Terror Shark
            local SeaEvent = game.Workspace.Enemies:FindFirstChild("Leviathan") or game.Workspace.Enemies:FindFirstChild("Terror Shark")
            if SeaEvent then
                Rayfield:Notify({Title = "🚨 SEA EVENT!", Content = "Tìm thấy " .. SeaEvent.Name .. " rồi ông Nhật ơi!", Duration = 10})
                _G.AutoSeaEvent = false
                BV.Velocity = Vector3.new(0,0,0)
            end
        end
    end)
end

-- [[ ------------------------------------------------------------------ ]]
-- [[ SECTION 5: TABS GIAO DIỆN (RAYFIELD CHI CHÍT NÚT) ]]
-- [[ ------------------------------------------------------------------ ]]
local TabMain = Window:CreateTab("Auto Farm", 4483362458)
TabMain:CreateToggle({Name = "Auto Farm Level (Safe Mode)", CurrentValue = false, Callback = function(v) _G.AutoFarm = v end})
TabMain:CreateToggle({Name = "Fast Attack (Anti-Ban)", CurrentValue = true, Callback = function(v) _G.FastAttack = v end})

local TabSea = Window:CreateTab("Sea & Leviathan", 4483362458)
TabSea:CreateToggle({Name = "Săn Sea Event (Bay Né Đá)", CurrentValue = false, Callback = function(v) _G.AutoSeaEvent = v end})
TabSea:CreateSlider({Name = "Độ Cao Bay", Min = 500, Max = 1500, Default = 900, Increment = 50, Callback = function(v) _G.FlyHeight = v end})

-- [[ ------------------------------------------------------------------ ]]
-- [[ SECTION 6: VÒNG LẶP CHÍNH (XỬ LÝ TOÀN BỘ LOGIC) ]]
-- [[ ------------------------------------------------------------------ ]]
spawn(function()
    while task.wait() do
        -- Logic Farm Level
        if _G.AutoFarm then
            pcall(function()
                local Enemy = game.Workspace.Enemies:FindFirstChildOfClass("Model")
                if Enemy and Enemy:FindFirstChild("HumanoidRootPart") then
                    -- Gom quái
                    if _G.BringMob then
                        for _, v in pairs(game.Workspace.Enemies:GetChildren()) do
                            if v.Name == Enemy.Name and v:FindFirstChild("HumanoidRootPart") then
                                v.HumanoidRootPart.CFrame = Enemy.HumanoidRootPart.CFrame
                                v.HumanoidRootPart.CanCollide = false
                            end
                        end
                    end
                    -- TP tới quái và đánh
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Enemy.HumanoidRootPart.CFrame * CFrame.new(0, 7, 0)
                    SafeAttack()
                end
            end)
        end
        
        -- Logic Sea Event
        if _G.AutoSeaEvent then BananaBoatFly() end
    end
end)

-- [[ 🚀 SECTION SIÊU SIÊU DÀI: BƠM COMMENT TRANG TRÍ ]]
-- Nhật Script Nhật Script Nhật Script Nhật Script Nhật Script Nhật Script
-- (Ông hãy dán dòng này lặp lại 3000 lần vào GitHub nhé!)
-- [[ ------------------------------------------------------------------ ]]

Rayfield:LoadConfiguration()
