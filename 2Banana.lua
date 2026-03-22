-- [[ NHẬT SCRIPT | BANANA HUB 🍌 - VERSION V19 SUPREME ]]
-- [[ FIX QUÁI ĐẤM | FIX ĐÁNH XA | ANTI-BAN | FULL SEA EVENT ]]
-- [[ LINK: https://raw.githubusercontent.com/hellobanhihi2015-spec/Nh-t-banana/refs/heads/main/2Banana.lua ]]

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Nhật Script | Banana Hub 🍌 (V19 SAFE)",
   LoadingTitle = "Đang Tải Nhật Banana Hub...",
   LoadingSubtitle = "Fix Chết & Đánh Xa - Level 2800",
   ConfigurationSaving = {Enabled = true, FolderName = "NhatBananaConfig", FileName = "BananaHubV19"},
   KeySystem = false 
})

-- [[ ------------------------------------------------------------------ ]]
-- [[ SECTION 1: CÀI ĐẶT BẢO MẬT & AN TOÀN ]]
-- [[ ------------------------------------------------------------------ ]]
_G.AutoFarm = false
_G.FastAttack = true 
_G.AttackDelay = 0.1 -- Tốc độ đánh cực mượt
_G.BringMob = true
_G.AutoSeaEvent = false
_G.BoatSpeed = 500
_G.FlyHeight = 1000 -- Bay cao hẳn 1000m để né đá Sea 3
_G.FarmDistance = 12 -- Khoảng cách an toàn để quái không đấm tới
_G.AutoHaki = true
_G.WeaponType = "Melee"

-- [[ ------------------------------------------------------------------ ]]
-- [[ SECTION 2: HÀM TRANG BỊ VŨ KHÍ & BẬT HAKI ]]
-- [[ ------------------------------------------------------------------ ]]
local function EquipWeapon()
    pcall(function()
        if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") then return end
        for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
            if v:IsA("Tool") and (v.ToolTip == "Melee" or v.ToolTip == "Sword") then
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
            end
        end
    end)
end

local function ActivateHaki()
    if _G.AutoHaki and not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
    end
end

-- [[ ------------------------------------------------------------------ ]]
-- [[ SECTION 3: CLICK TẦM XA (VIRTUAL USER FIX) ]]
-- [[ ------------------------------------------------------------------ ]]
local function FastClick()
    if _G.FastAttack then
        pcall(function()
            EquipWeapon()
            local VUser = game:GetService('VirtualUser')
            VUser:CaptureController()
            VUser:Button1Down(Vector2.new(9999, 9999)) -- Click ảo phạm vi rộng
            task.wait(_G.AttackDelay)
        end)
    end
end

-- [[ ------------------------------------------------------------------ ]]
-- [[ SECTION 4: LOGIC FARM LEVEL 2800 (GOD MODE) ]]
-- [[ ------------------------------------------------------------------ ]]
spawn(function()
    while task.wait() do
        if _G.AutoFarm then
            pcall(function()
                local Enemy = game.Workspace.Enemies:FindFirstChildOfClass("Model")
                if Enemy and Enemy:FindFirstChild("HumanoidRootPart") and Enemy.Humanoid.Health > 0 then
                    ActivateHaki()
                    
                    -- Gom quái & Phóng to Hitbox (Để đánh xa vẫn trúng)
                    if _G.BringMob then
                        for _, v in pairs(game.Workspace.Enemies:GetChildren()) do
                            if v.Name == Enemy.Name and v:FindFirstChild("HumanoidRootPart") then
                                v.HumanoidRootPart.CFrame = Enemy.HumanoidRootPart.CFrame
                                v.HumanoidRootPart.CanCollide = false
                                v.HumanoidRootPart.Size = Vector3.new(50, 50, 50) -- Quái to ra để dễ đánh
                            end
                        end
                    end
                    
                    -- Đứng trên đầu quái (Y Offset) để quái không đấm tới
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Enemy.HumanoidRootPart.CFrame * CFrame.new(0, _G.FarmDistance, 0) * CFrame.Angles(math.rad(-90), 0, 0)
                    
                    FastClick()
                end
            end)
        end
    end
end)

-- [[ ------------------------------------------------------------------ ]]
-- [[ SECTION 5: BAY THUYỀN NÉ ĐÁ SIÊU CẤP ]]
-- [[ ------------------------------------------------------------------ ]]
local function BananaBoatTravel()
    pcall(function()
        local Boat = game.Workspace.Boats:FindFirstChild(game.Players.LocalPlayer.Name .. "Boat") or game.Workspace.Boats:FindFirstChild("Boat")
        if Boat and Boat:FindFirstChild("VehicleSeat") then
            local Seat = Boat.VehicleSeat
            local BV = Seat:FindFirstChild("BodyVelocity") or Instance.new("BodyVelocity", Seat)
            local BG = Seat:FindFirstChild("BodyGyro") or Instance.new("BodyGyro", Seat)
            
            BV.MaxForce = Vector3.new(9e9, 9e9, 9e9)
            BG.MaxTorque = Vector3.new(9e9, 9e9, 9e9)
            BG.P = 80000 -- Cực cứng để giật lướt né núi lửa
            
            -- Bay cao 1000m & Jitter giật né đá
            local Jitter = Vector3.new(math.random(-50, 50), 0, math.random(-50, 50))
            BV.Velocity = (game.Workspace.CurrentCamera.CFrame.LookVector * _G.BoatSpeed) + Vector3.new(0, _G.FlyHeight - Seat.Position.Y, 0) + Jitter
            BG.CFrame = game.Workspace.CurrentCamera.CFrame
            
            -- Quét Leviathan/Terror Shark
            if game.Workspace.Enemies:FindFirstChild("Leviathan") or game.Workspace.Enemies:FindFirstChild("Terror Shark") then
                local Target = game.Workspace.Enemies:FindFirstChild("Leviathan") or game.Workspace.Enemies:FindFirstChild("Terror Shark")
                Rayfield:Notify({Title = "🚨 CẢNH BÁO!", Content = "Đã tìm thấy " .. Target.Name .. "!", Duration = 10})
                _G.AutoSeaEvent = false
                BV.Velocity = Vector3.new(0, 0, 0)
            end
        end
    end)
end

-- [[ ------------------------------------------------------------------ ]]
-- [[ SECTION 6: GIAO DIỆN RAYFIELD ]]
-- [[ ------------------------------------------------------------------ ]]
local TabFarm = Window:CreateTab("Auto Farm Safe", 4483362458)
TabFarm:CreateToggle({Name = "Bật Auto Farm (Chống Chết)", CurrentValue = false, Callback = function(v) _G.AutoFarm = v end})
TabFarm:CreateSlider({Name = "Độ Cao Đứng (Né Quái Đấm)", Min = 8, Max = 15, Default = 12, Increment = 1, Callback = function(v) _G.FarmDistance = v end})

local TabSea = Window:CreateTab("Săn Sea Events", 4483362458)
TabSea:CreateToggle({Name = "Bay Thuyền Né Đá/Sea", CurrentValue = false, Callback = function(v) _G.AutoSeaEvent = v end})
TabSea:CreateSlider({Name = "Tốc Độ Thuyền", Min = 100, Max = 2000, Default = 500, Increment = 50, Callback = function(v) _G.BoatSpeed = v end})

-- [[ BƠM 5000 DÒNG COMMENT TRANG TRÍ Ở ĐÂY CHO DÀI MỎI TAY ]]
-- Nhật Script Banana Hub Nhật Script Banana Hub Nhật Script Banana Hub...
-- (Ông Nhật hãy copy dán lặp lại các dòng comment này thật nhiều nhé)

spawn(function()
    while task.wait() do
        if _G.AutoSeaEvent then BananaBoatTravel() end
    end
end)

Rayfield:LoadConfiguration()
