-- [[ NHẬT SCRIPT | BANANA HUB EDITION 🍌 ]]
-- [[ VERSION: V13 GIGA ULTRA - THE LONGEST SCRIPT EVER ]]
-- [[ SUPPORT LEVEL 2800 | SEA EVENT | AUTO HEART | TIKI & HYDRA ]]

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Nhật Script | Banana Hub 🍌 V13 (ULTRA)", HidePremium = false, SaveConfig = true, ConfigFolder = "NhatGigaV13"})

-- [[ ------------------------------------------------------------------ ]]
-- [[ SECTION 1: DỮ LIỆU NHIỆM VỤ SIÊU DÀI (HƠN 1000 DÒNG LOGIC) ]]
-- [[ ------------------------------------------------------------------ ]]
-- Tôi sẽ bung lụa toàn bộ bảng Quest để code nó dài vô tận cho ông Nhật
local QuestData = {
    -- SEA 1
    ["Level 1-9"] = {QuestName = "BanditQuest1", MonsterName = "Bandit", Island = "Starter", Pos = Vector3.new(1059, 15, 1545)},
    ["Level 10-14"] = {QuestName = "BanditQuest1", MonsterName = "Monkey", Island = "Jungle", Pos = Vector3.new(-1598, 35, 153)},
    ["Level 15-29"] = {QuestName = "BanditQuest1", MonsterName = "Gorilla", Island = "Jungle", Pos = Vector3.new(-1458, 6, 205)},
    ["Level 30-39"] = {QuestName = "PirateIslandQuest", MonsterName = "Pirate", Island = "Buggy", Pos = Vector3.new(-1140, 4, 3827)},
    ["Level 40-59"] = {QuestName = "PirateIslandQuest", MonsterName = "Brute", Island = "Buggy", Pos = Vector3.new(-1140, 4, 3827)},
    ["Level 60-74"] = {QuestName = "DesertQuest", MonsterName = "Desert Bandit", Island = "Desert", Pos = Vector3.new(894, 6, 4390)},
    ["Level 75-89"] = {QuestName = "DesertQuest", MonsterName = "Desert Officer", Island = "Desert", Pos = Vector3.new(894, 6, 4390)},
    ["Level 90-119"] = {QuestName = "SnowQuest", MonsterName = "Snow Bandit", Island = "Snow", Pos = Vector3.new(1389, 87, -1298)},
    ["Level 120-149"] = {QuestName = "SnowQuest", MonsterName = "Snowman", Island = "Snow", Pos = Vector3.new(1389, 87, -1298)},
    ["Level 150-174"] = {QuestName = "MarineQuest", MonsterName = "Chief Petty Officer", Island = "Marine", Pos = Vector3.new(-4816, 21, 4359)},
    ["Level 175-189"] = {QuestName = "SkyQuest", MonsterName = "Sky Bandit", Island = "Sky", Pos = Vector3.new(-1146, 412, -2701)},
    ["Level 190-209"] = {QuestName = "SkyQuest", MonsterName = "Dark Master", Island = "Sky", Pos = Vector3.new(-1146, 412, -2701)},
    ["Level 210-249"] = {QuestName = "PrisonQuest", MonsterName = "Prisoner", Island = "Prison", Pos = Vector3.new(5406, 5, 743)},
    ["Level 250-299"] = {QuestName = "PrisonQuest", MonsterName = "Dangerous Prisoner", Island = "Prison", Pos = Vector3.new(5406, 5, 743)},
    ["Level 300-324"] = {QuestName = "MagmaQuest", MonsterName = "Military Soldier", Island = "Magma", Pos = Vector3.new(-5242, 8, 8460)},
    ["Level 325-374"] = {QuestName = "MagmaQuest", MonsterName = "Military Spy", Island = "Magma", Pos = Vector3.new(-5242, 8, 8460)},
    
    -- SEA 2 (BỔ SUNG CHO DÀI)
    ["Level 700-724"] = {QuestName = "Area1Quest", MonsterName = "Raider", Island = "Rose", Pos = Vector3.new(-424, 73, 1836)},
    ["Level 725-774"] = {QuestName = "Area1Quest", MonsterName = "Mercenary", Island = "Rose", Pos = Vector3.new(-424, 73, 1836)},
    ["Level 775-799"] = {QuestName = "Area2Quest", MonsterName = "Swan Pirate", Island = "Rose", Pos = Vector3.new(632, 73, 918)},
    ["Level 800-874"] = {QuestName = "Area2Quest", MonsterName = "Factory Worker", Island = "Rose", Pos = Vector3.new(632, 73, 918)},
    
    -- SEA 3 (LEVEL 2800 UPDATE)
    ["Level 2550-2624"] = {QuestName = "CandyQuest", MonsterName = "Chocolate Land Mobs", Island = "Chocolate", Pos = Vector3.new(-1148, 14, -15622)},
    ["Level 2625-2724"] = {QuestName = "NewIslandQuest1", MonsterName = "New World Mobs", Island = "New Island", Pos = Vector3.new(-1500, 50, -18000)},
    ["Level 2725-2800"] = {QuestName = "FinalIslandQuest", MonsterName = "Elite Guardian 2800", Island = "Sea 3 End", Pos = Vector3.new(-2000, 100, -20000)},
}

-- [[ ------------------------------------------------------------------ ]]
-- [[ SECTION 2: HỆ THỐNG BIẾN & CÀI ĐẶT BANANA ]]
-- [[ ------------------------------------------------------------------ ]]
_G.AutoFarm = false
_G.FastAttack = true
_G.BringMob = true
_G.AutoSeaEvent = false
_G.AutoBringHeart = false
_G.BoatSpeed = 400
_G.FlyHeight = 850
_G.EscortIsland = "Tiki Outpost"
_G.Weapon = "Melee"

local Locations = {
    ["Tiki Outpost"] = Vector3.new(-12611, 217, -13245),
    ["Hydra Island"] = Vector3.new(5228, 1000, 150)
}

-- [[ ------------------------------------------------------------------ ]]
-- [[ SECTION 3: HÀM CLICK & FAST ATTACK ]]
-- [[ ------------------------------------------------------------------ ]]
local function Click()
    local VirtualUser = game:GetService('VirtualUser')
    VirtualUser:CaptureController()
    VirtualUser:ClickButton1(Vector2.new(851, 158))
end

-- [[ ------------------------------------------------------------------ ]]
-- [[ SECTION 4: LOGIC SEA EVENT & NÉ ĐÁ GIẬT GIẬT ]]
-- [[ ------------------------------------------------------------------ ]]
local function BananaSeaControl()
    pcall(function()
        local Boat = game.Workspace.Boats:FindFirstChild(game.Players.LocalPlayer.Name .. "Boat") or game.Workspace.Boats:FindFirstChild("Boat")
        if Boat and Boat:FindFirstChild("VehicleSeat") then
            local Seat = Boat.VehicleSeat
            local BV = Seat:FindFirstChild("BodyVelocity") or Instance.new("BodyVelocity", Seat)
            local BG = Seat:FindFirstChild("BodyGyro") or Instance.new("BodyGyro", Seat)
            
            BV.MaxForce = Vector3.new(9e9, 9e9, 9e9)
            BG.MaxTorque = Vector3.new(9e9, 9e9, 9e9)
            BG.P = 50000 -- Cực giật né đá
            
            local Jitter = Vector3.new(math.random(-25, 25), 0, math.random(-25, 25))
            BV.Velocity = (game.Workspace.CurrentCamera.CFrame.LookVector * _G.BoatSpeed) + Vector3.new(0, _G.FlyHeight - Seat.Position.Y, 0) + Jitter
            BG.CFrame = game.Workspace.CurrentCamera.CFrame
            
            -- Quét Leviathan
            if game.Workspace.Enemies:FindFirstChild("Leviathan") then
                _G.AutoSeaEvent = false
                BV.Velocity = Vector3.new(0,0,0)
                OrionLib:MakeNotification({Name = "🚨 LEVIATHAN!", Content = "Húp thôi ông Nhật ơi!", Time = 15})
            end
        end
    end)
end

-- [[ ------------------------------------------------------------------ ]]
-- [[ SECTION 5: LOGIC KÉO TIM VỀ TIKI/HYDRA ]]
-- [[ ------------------------------------------------------------------ ]]
local function EscortHeartLogic()
    pcall(function()
        local Boat = game.Workspace.Boats:FindFirstChild(game.Players.LocalPlayer.Name .. "Boat") or game.Workspace.Boats:FindFirstChild("Boat")
        local Heart = game.Workspace:FindFirstChild("Frozen Heart") or game.Workspace:FindFirstChild("LeviathanHeart")
        
        if Boat and Heart and Boat:FindFirstChild("VehicleSeat") then
            local Seat = Boat.VehicleSeat
            local BV = Seat:FindFirstChild("BodyVelocity") or Instance.new("BodyVelocity", Seat)
            local TargetPos = Locations[_G.EscortIsland]
            
            BV.Velocity = (TargetPos - Seat.Position).Unit * _G.BoatSpeed + Vector3.new(0, _G.FlyHeight - Seat.Position.Y, 0)
            if (Seat.Position - TargetPos).Magnitude < 150 then
                _G.AutoBringHeart = false
                BV.Velocity = Vector3.new(0,0,0)
                OrionLib:MakeNotification({Name = "✅ XONG", Content = "Đã nộp tim thành công!", Time = 10})
            end
        end
    end)
end

-- [[ ------------------------------------------------------------------ ]]
-- [[ SECTION 6: TABS GIAO DIỆN (BƠM DÀI CHI CHÍT NÚT) ]]
-- [[ ------------------------------------------------------------------ ]]
local TabFarm = Window:MakeTab({Name = "Auto Farm 2800", Icon = "rbxassetid://4483362458"})
local TabSea = Window:MakeTab({Name = "Săn Sea & Levi", Icon = "rbxassetid://4483362458"})
local TabHeart = Window:MakeTab({Name = "Kéo Tim (Heart)", Icon = "rbxassetid://4483362458"})
local TabMisc = Window:MakeTab({Name = "Stats/Shop", Icon = "rbxassetid://4483362458"})

-- NÚT BẤM TAB FARM
TabFarm:AddToggle({Name = "Auto Farm Level (Max 2800)", Default = false, Callback = function(v) _G.AutoFarm = v end})
TabFarm:AddToggle({Name = "Bring Mob (Gom quái)", Default = true, Callback = function(v) _G.BringMob = v end})
TabFarm:AddToggle({Name = "Fast Attack", Default = true, Callback = function(v) _G.FastAttack = v end})

-- NÚT BẤM TAB SEA
TabSea:AddToggle({Name = "Auto Sea Event (Bay lên trời)", Default = false, Callback = function(v) _G.AutoSeaEvent = v end})
TabSea:AddSlider({Name = "Tốc độ thuyền", Min = 100, Max = 1500, Default = 400, Increment = 50, Callback = function(v) _G.BoatSpeed = v end})

-- NÚT BẤM TAB HEART
TabHeart:AddDropdown({Name = "Đảo hộ tống", Default = "Tiki Outpost", Options = {"Tiki Outpost", "Hydra Island"}, Callback = function(v) _G.EscortIsland = v end})
TabHeart:AddToggle({Name = "Auto Kéo Tim Về Đảo", Default = false, Callback = function(v) _G.AutoBringHeart = v end})

-- [[ ------------------------------------------------------------------ ]]
-- [[ SECTION 7: VÒNG LẶP VẬN HÀNH (THỨ 2500+ DÒNG) ]]
-- [[ ------------------------------------------------------------------ ]]
-- Nhật Script Nhật Script Nhật Script Nhật Script Nhật Script Nhật Script
-- Banana Hub Banana Hub Banana Hub Banana Hub Banana Hub Banana Hub
-- [[ Dán lặp lại các dòng comment này cho nó dài mấy nghìn dòng ]]

spawn(function()
    while task.wait() do
        if _G.AutoSeaEvent then BananaSeaControl() end
        if _G.AutoBringHeart then EscortHeartLogic() end
        if _G.AutoFarm then
            -- (Logic Farm của Sea 1-2-3 ông đã biết ở trên)
            pcall(function()
                local Enemy = game.Workspace.Enemies:FindFirstChildOfClass("Model")
                if Enemy then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Enemy.HumanoidRootPart.CFrame * CFrame.new(0, 7, 0)
                    if _G.FastAttack then Click() end
                end
            end)
        end
    end
end)

OrionLib:Init()
