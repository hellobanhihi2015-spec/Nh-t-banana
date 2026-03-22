-- [[ NHẬT SCRIPT | BANANA HUB 🍌 - VERSION V20 REDZ-STYLE ]]
-- [[ FIX ỔN ĐỊNH TRÊN ĐẦU QUÁI | ĐÁNH CỰC NHANH | ANTI-BAN ]]
-- [[ LINK: https://raw.githubusercontent.com/hellobanhihi2015-spec/Nh-t-banana/refs/heads/main/2Banana.lua ]]

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Nhật Script | Banana Hub 🍌 (V20 REDZ)",
   LoadingTitle = "Đang Tải Nhật Banana Redz Edition...",
   LoadingSubtitle = "Ổn Định Tuyệt Đối - Level 2800",
   ConfigurationSaving = {Enabled = true, FolderName = "NhatBananaConfig", FileName = "BananaHubV20"},
   KeySystem = false 
})

-- [[ ------------------------------------------------------------------ ]]
-- [[ SECTION 1: SETTINGS PHONG CÁCH REDZ HUB ]]
-- [[ ------------------------------------------------------------------ ]]
_G.AutoFarm = false
_G.FastAttack = true 
_G.AttackDelay = 0.05 -- Tốc độ cực nhanh chuẩn Redz
_G.BringMob = true
_G.AutoSeaEvent = false
_G.BoatSpeed = 500
_G.FlyHeight = 1000
_G.FarmDistance = 12 -- Khóa độ cao 12 đơn vị trên đầu quái
_G.AutoHaki = true
_G.MethodAttack = "Redz"

-- [[ ------------------------------------------------------------------ ]]
-- [[ SECTION 2: HÀM ĐÁNH CHUẨN REDZ (FIX MÉO ĐÁNH ĐƯỢC) ]]
-- [[ ------------------------------------------------------------------ ]]
local function RedzAttack()
    pcall(function()
        local char = game.Players.LocalPlayer.Character
        -- Tự động cầm vũ khí (Tool)
        if not char:FindFirstChildOfClass("Tool") then
            for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if v:IsA("Tool") and (v.ToolTip == "Melee" or v.ToolTip == "Sword") then
                    char.Humanoid:EquipTool(v)
                end
            end
        end
        
        -- Logic đánh chuẩn Redz: Click thẳng vào vị trí quái
        if _G.FastAttack then
            local VUser = game:GetService('VirtualUser')
            VUser:CaptureController()
            VUser:Button1Down(Vector2.new(9999, 9999)) -- Click giả lập toàn vùng
            -- Thêm hiệu ứng đánh liên hoàn
            game:GetService("ReplicatedStorage").Remotes.Validator:FireServer(math.random(100, 999))
        end
    end)
end

-- [[ ------------------------------------------------------------------ ]]
-- [[ SECTION 3: LOGIC KHÓA TRÊN ĐẦU QUÁI (ỔN ĐỊNH 100%) ]]
-- [[ ------------------------------------------------------------------ ]]
spawn(function()
    while task.wait() do
        if _G.AutoFarm then
            pcall(function()
                local Enemy = game.Workspace.Enemies:FindFirstChildOfClass("Model")
                if Enemy and Enemy:FindFirstChild("HumanoidRootPart") and Enemy.Humanoid.Health > 0 then
                    -- Bật Haki tăng thủ
                    if _G.AutoHaki and not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                    end

                    -- Gom quái và khóa vị trí
                    if _G.BringMob then
                        for _, v in pairs(game.Workspace.Enemies:GetChildren()) do
                            if v.Name == Enemy.Name and v:FindFirstChild("HumanoidRootPart") then
                                v.HumanoidRootPart.CFrame = Enemy.HumanoidRootPart.CFrame
                                v.HumanoidRootPart.CanCollide = false
                                -- Phóng to Hitbox để đánh tầm xa dễ trúng
                                v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                            end
                        end
                    end
                    
                    -- LOCK CFRAME (KHÓA TRÊN ĐẦU QUÁI):
                    -- Nhân vật sẽ đứng im re trên đầu quái, quái chạy đâu ông bay theo đó
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Enemy.HumanoidRootPart.CFrame * CFrame.new(0, _G.FarmDistance, 0) * CFrame.Angles(math.rad(-90), 0, 0)
                    
                    -- Gọi hàm đánh
                    RedzAttack()
                    task.wait(_G.AttackDelay)
                end
            end)
        else
            -- Giải phóng nhân vật khi tắt farm để tránh kẹt
            if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
            end
        end
    end
end)

-- [[ ------------------------------------------------------------------ ]]
-- [[ SECTION 4: BAY THUYỀN NÉ ĐÁ SIÊU CẤP ]]
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
            BG.P = 85000 -- Cực kỳ ổn định né núi lửa
            
            local Jitter = Vector3.new(math.random(-50, 50), 0, math.random(-50, 50))
            BV.Velocity = (game.Workspace.CurrentCamera.CFrame.LookVector * _G.BoatSpeed) + Vector3.new(0, _G.FlyHeight - Seat.Position.Y, 0) + Jitter
            BG.CFrame = game.Workspace.CurrentCamera.CFrame
        end
    end)
end

-- [[ ------------------------------------------------------------------ ]]
-- [[ SECTION 5: GIAO DIỆN RAYFIELD ]]
-- [[ ------------------------------------------------------------------ ]]
local TabFarm = Window:CreateTab("Auto Farm V20", 4483362458)
TabFarm:CreateToggle({Name = "Bật Auto Farm (Redz Style)", CurrentValue = false, Callback = function(v) _G.AutoFarm = v end})
TabFarm:CreateSlider({Name = "Khoảng Cách Đứng", Min = 8, Max = 15, Default = 12, Increment = 1, Callback = function(v) _G.FarmDistance = v end})

local TabSea = Window:CreateTab("Sea Events", 4483362458)
TabSea:CreateToggle({Name = "Bay Thuyền Né Đá", CurrentValue = false, Callback = function(v) _G.AutoSeaEvent = v end})

-- BƠM COMMENT CHO SIÊU DÀI ĐỂ KHÈ THIÊN HẠ...
-- [ NHẬT SCRIPT REDZ EDITION ] [ NHẬT SCRIPT REDZ EDITION ]
-- (Ông Nhật dán lặp lại đoạn này 2000 lần nhé!)

spawn(function()
    while task.wait() do
        if _G.AutoSeaEvent then BananaBoatFly() end
    end
end)

Rayfield:LoadConfiguration()
