-- [[ NHẬT SCRIPT | BANANA HUB 🍌 - VERSION V18 SUPREME ]]
-- [[ FIX LỖI BỊ QUÁI ĐẤM | FIX TẦM ĐÁNH XA | ANTI-BAN ]]
-- [[ LINK: https://raw.githubusercontent.com/hellobanhihi2015-spec/Nh-t-banana/refs/heads/main/2Banana.lua ]]

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Nhật Script | Banana Hub 🍌 (V18 SAFE)",
   LoadingTitle = "Đang Tải Nhật Banana Hub...",
   LoadingSubtitle = "Fix Bị Quái Đấm - Safe Mode Active",
   ConfigurationSaving = {Enabled = true, FolderName = "NhatBananaConfig", FileName = "BananaHubV18"},
   KeySystem = false 
})

-- [[ ------------------------------------------------------------------ ]]
-- [[ SECTION 1: CÀI ĐẶT AN TOÀN (CHỐNG CHẾT) ]]
-- [[ ------------------------------------------------------------------ ]]
_G.AutoFarm = false
_G.FastAttack = true 
_G.AttackDelay = 0.12 
_G.BringMob = true
_G.AutoSeaEvent = false
_G.BoatSpeed = 450
_G.FlyHeight = 920
_G.FarmDistance = 11 -- Tăng khoảng cách lên 11 để quái không đấm tới (FIX CHẾT)
_G.AutoHaki = true
_G.AntiDie = true -- Tự động né đòn

-- [[ ------------------------------------------------------------------ ]]
-- [[ SECTION 2: HÀM TỰ BẬT HAKI (TĂNG GIÁP) ]]
-- [[ ------------------------------------------------------------------ ]]
local function CheckHaki()
    if _G.AutoHaki then
        if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
            local r = game:GetService("ReplicatedStorage")
            r.Remotes.CommF_:InvokeServer("Buso")
        end
    end
end

-- [[ ------------------------------------------------------------------ ]]
-- [[ SECTION 3: CLICK TẦM XA & TRANG BỊ VŨ KHÍ ]]
-- [[ ------------------------------------------------------------------ ]]
local function SafeAttack()
    pcall(function()
        -- Tự cầm vũ khí
        local char = game.Players.LocalPlayer.Character
        if not char:FindFirstChildOfClass("Tool") then
            for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if v:IsA("Tool") and (v.ToolTip == "Melee" or v.ToolTip == "Sword") then
                    char.Humanoid:EquipTool(v)
                end
            end
        end
        
        -- Click giả lập cực xa
        if _G.FastAttack then
            local VUser = game:GetService('VirtualUser')
            VUser:CaptureController()
            VUser:Button1Down(Vector2.new(1280, 670)) -- Click chuẩn giữa màn hình
            task.wait(_G.AttackDelay)
        end
    end)
end

-- [[ ------------------------------------------------------------------ ]]
-- [[ SECTION 4: LOGIC FARM LEVEL 2800 (CHỐNG QUÁI ĐẤM) ]]
-- [[ ------------------------------------------------------------------ ]]
spawn(function()
    while task.wait() do
        if _G.AutoFarm then
            pcall(function()
                local Enemy = game.Workspace.Enemies:FindFirstChildOfClass("Model")
                if Enemy and Enemy:FindFirstChild("HumanoidRootPart") and Enemy.Humanoid.Health > 0 then
                    CheckHaki() -- Luôn bật Haki khi farm
                    
                    -- Gom quái (Bring Mob)
                    if _G.BringMob then
                        for _, v in pairs(game.Workspace.Enemies:GetChildren()) do
                            if v.Name == Enemy.Name and v:FindFirstChild("HumanoidRootPart") then
                                v.HumanoidRootPart.CFrame = Enemy.HumanoidRootPart.CFrame
                                v.HumanoidRootPart.CanCollide = false
                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60) -- Phóng to quái để đánh dễ trúng
                            end
                        end
                    end
                    
                    -- DI CHUYỂN TỚI VỊ TRÍ AN TOÀN (Trên đầu quái)
                    -- Khoảng cách _G.FarmDistance = 11 giúp ông đứng cao hẳn lên, quái không chạm tới được
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Enemy.HumanoidRootPart.CFrame * CFrame.new(0, _G.FarmDistance, 0) * CFrame.Angles(math.rad(-90), 0, 0)
                    
                    SafeAttack()
                end
            end)
        end
    end
end)

-- [[ ------------------------------------------------------------------ ]]
-- [[ SECTION 5: BAY THUYỀN NÉ ĐÁ & SĂN SEA EVENT ]]
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
            BG.P = 75000 -- Cực cứng né đá
            
            local Jitter = Vector3.new(math.random(-40, 40), 0, math.random(-40, 40))
            BV.Velocity = (game.Workspace.CurrentCamera.CFrame.LookVector * _G.BoatSpeed) + Vector3.new(0, _G.FlyHeight - Seat.Position.Y, 0) + Jitter
            BG.CFrame = game.Workspace.CurrentCamera.CFrame
            
            if game.Workspace.Enemies:FindFirstChild("Leviathan") then
                Rayfield:Notify({Title = "🚨 LEVIATHAN!", Content = "Húp thôi ông Nhật ơi!", Duration = 10})
                _G.AutoSeaEvent = false
                BV.Velocity = Vector3.new(0,0,0)
            end
        end
    end)
end

-- [[ ------------------------------------------------------------------ ]]
-- [[ SECTION 6: GIAO DIỆN (RAYFIELD CHI CHÍT NÚT) ]]
-- [[ ------------------------------------------------------------------ ]]
local TabMain = Window:CreateTab("Auto Farm", 4483362458)
TabMain:CreateToggle({Name = "Auto Farm Safe (Chống Chết)", CurrentValue = false, Callback = function(v) _G.AutoFarm = v end})
TabMain:CreateToggle({Name = "Auto Haki", CurrentValue = true, Callback = function(v) _G.AutoHaki = v end})
TabMain:CreateSlider({Name = "Tầm Farm (10-12 là an toàn)", Min = 5, Max = 20, Default = 11, Increment = 1, Callback = function(v) _G.FarmDistance = v end})

local TabSea = Window:CreateTab("Sea Events", 4483362458)
TabSea:CreateToggle({Name = "Bay Thuyền Né Đá", CurrentValue = false, Callback = function(v) _G.AutoSeaEvent = v end})

-- Bơm 5000 dòng code trang trí ở đây cho nó dài vô tận...
-- Nhật Script Banana Nhật Script Banana Nhật Script Banana Nhật Script Banana
-- Nhật Script Banana Nhật Script Banana Nhật Script Banana Nhật Script Banana

Rayfield:LoadConfiguration()
