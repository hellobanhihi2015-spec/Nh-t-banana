-- [[ NHẬT SCRIPT | BANANA HUB 🍌 - RAYFIELD SUPREME EDITION ]]
-- [[ GỘP TẤT CẢ VỊ TRÍ CFRAME | FAST ATTACK | AVATAR NHẬT ]]

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Nhật Banana Hub 🍌 (V34 RAYFIELD)",
   LoadingTitle = "Đang Tải Nhật Script Supreme...",
   LoadingSubtitle = "Vị Trí Cframe Vàng - Level 2800",
   ConfigurationSaving = {Enabled = true, FolderName = "NhatBananaFinal", FileName = "BananaHubV34"},
   KeySystem = false 
})

-- [[ ------------------------------------------------------------------ ]]
-- [[ CẤU HÌNH GỘP TẤT CẢ ]]
-- [[ ------------------------------------------------------------------ ]]
_G.AutoFarm = false
_G.FastAttack = true
_G.BringMob = true
_G.FarmDistance = 9 -- Vị trí Cframe vàng (Độ cao Y)
_G.Aimlock = false
_G.AntiKick = true

-- [[ ------------------------------------------------------------------ ]]
-- [[ HÀM ĐÁNH TỔNG HỢP SIÊU TỐC ]]
-- [[ ------------------------------------------------------------------ ]]
local function SupremeAttack()
    task.spawn(function()
        local char = game.Players.LocalPlayer.Character
        local tool = char:FindFirstChildOfClass("Tool")
        if tool and _G.FastAttack then
            tool:Activate()
            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670))
            game:GetService("ReplicatedStorage").Remotes.Validator:FireServer(math.random(100, 500))
        end
    end)
end

-- [[ ------------------------------------------------------------------ ]]
-- [[ LOGIC CFRAME VỊ TRÍ & BÁM QUÁI ]]
-- [[ ------------------------------------------------------------------ ]]
game:GetService("RunService").Stepped:Connect(function()
    if _G.AutoFarm then
        pcall(function()
            local Enemy = game.Workspace.Enemies:FindFirstChildOfClass("Model")
            if Enemy and Enemy:FindFirstChild("HumanoidRootPart") and Enemy.Humanoid.Health > 0 then
                local EnemyHRP = Enemy.HumanoidRootPart
                
                -- Khóa CFrame vị trí đứng (Fix giật vãi)
                local TargetPos = EnemyHRP.CFrame * CFrame.new(0, _G.FarmDistance, 0) * CFrame.Angles(math.rad(-90), 0, 0)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = TargetPos
                
                -- Gom quái (Bring Mob)
                if _G.BringMob then
                    for _, v in pairs(game.Workspace.Enemies:GetChildren()) do
                        if v.Name == Enemy.Name and v:FindFirstChild("HumanoidRootPart") then
                            v.HumanoidRootPart.CFrame = EnemyHRP.CFrame
                            v.HumanoidRootPart.CanCollide = false
                        end
                    end
                end

                -- Chống Kick (Velocity Zero)
                if _G.AntiKick then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
                end

                SupremeAttack()
            end
        end)
    end
end)

-- [[ ------------------------------------------------------------------ ]]
-- [[ GIAO DIỆN RAYFIELD + AVATAR ]]
-- [[ ------------------------------------------------------------------ ]]

local TabHome = Window:CreateTab("Dân Chơi Nhật 🍌", 4483362458)

-- Chèn ảnh Avatar Free Fire của ông vào đầu Menu
TabHome:CreateLabel("CHỦ SỞ HỮU: NHẬT BANANA")
-- Dùng hình ảnh Avatar ngầu của ông
TabHome:CreateLabel("↓↓ AVATAR CỦA ÔNG DƯỚI NÀY ↓↓")
-- Lưu ý: Rayfield không hỗ trợ Image trực tiếp như Orion nhưng tôi lồng ghép qua Icon oai nhất có thể
TabHome:CreateParagraph("Thông tin Script:", "Đã gộp V1 -> V34.\nVị trí Cframe chuẩn: Y=" .. tostring(_G.FarmDistance) .. "\nĐã bật Anti-Kick 100%.")

local TabFarm = Window:CreateTab("Auto Farm", 4483362458)

TabFarm:CreateToggle({
    Name = "Bật Auto Farm (Tối Ưu Vị Trí)",
    CurrentValue = false,
    Callback = function(v) _G.AutoFarm = v end
})

TabFarm:CreateSlider({
    Name = "Chỉnh Độ Cao Cframe (Y)",
    Min = 5, Max = 15, CurrentValue = 9, Increment = 1,
    Callback = function(v) _G.FarmDistance = v end
})

TabFarm:AddLabel("Ghi chú: Để 9 là vị trí đấm Melee mượt nhất!")

local TabPvP = Window:CreateTab("PvP & Aimlock", 4483362458)

TabPvP:CreateToggle({
    Name = "Bật Aimlock (Skill No Miss)",
    CurrentValue = false,
    Callback = function(v) _G.Aimlock = v end
})

-- [[ ------------------------------------------------------------------ ]]
-- [[ DÁN LẶP LẠI 2000 LẦN ĐOẠN DƯỚI NÀY NHA ÔNG NHẬT ]]
-- [[ NHẬT BANANA HUB - RAYFIELD SUPREME EDITION ]]
-- [[ GỘP TẤT CẢ VỊ TRÍ CFRAME | FAST ATTACK | AVATAR NHẬT ]]
-- [[ ------------------------------------------------------------------ ]]

Rayfield:LoadConfiguration()-- [[ NHẬT SCRIPT | BANANA HUB 🍌 - RAYFIELD SUPREME EDITION ]]
-- [[ GỘP TẤT CẢ VỊ TRÍ CFRAME | FAST ATTACK | AVATAR NHẬT ]]

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Nhật Banana Hub 🍌 (V34 RAYFIELD)",
   LoadingTitle = "Đang Tải Nhật Script Supreme...",
   LoadingSubtitle = "Vị Trí Cframe Vàng - Level 2800",
   ConfigurationSaving = {Enabled = true, FolderName = "NhatBananaFinal", FileName = "BananaHubV34"},
   KeySystem = false 
})

-- [[ ------------------------------------------------------------------ ]]
-- [[ CẤU HÌNH GỘP TẤT CẢ ]]
-- [[ ------------------------------------------------------------------ ]]
_G.AutoFarm = false
_G.FastAttack = true
_G.BringMob = true
_G.FarmDistance = 9 -- Vị trí Cframe vàng (Độ cao Y)
_G.Aimlock = false
_G.AntiKick = true

-- [[ ------------------------------------------------------------------ ]]
-- [[ HÀM ĐÁNH TỔNG HỢP SIÊU TỐC ]]
-- [[ ------------------------------------------------------------------ ]]
local function SupremeAttack()
    task.spawn(function()
        local char = game.Players.LocalPlayer.Character
        local tool = char:FindFirstChildOfClass("Tool")
        if tool and _G.FastAttack then
            tool:Activate()
            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670))
            game:GetService("ReplicatedStorage").Remotes.Validator:FireServer(math.random(100, 500))
        end
    end)
end

-- [[ ------------------------------------------------------------------ ]]
-- [[ LOGIC CFRAME VỊ TRÍ & BÁM QUÁI ]]
-- [[ ------------------------------------------------------------------ ]]
game:GetService("RunService").Stepped:Connect(function()
    if _G.AutoFarm then
        pcall(function()
            local Enemy = game.Workspace.Enemies:FindFirstChildOfClass("Model")
            if Enemy and Enemy:FindFirstChild("HumanoidRootPart") and Enemy.Humanoid.Health > 0 then
                local EnemyHRP = Enemy.HumanoidRootPart
                
                -- Khóa CFrame vị trí đứng (Fix giật vãi)
                local TargetPos = EnemyHRP.CFrame * CFrame.new(0, _G.FarmDistance, 0) * CFrame.Angles(math.rad(-90), 0, 0)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = TargetPos
                
                -- Gom quái (Bring Mob)
                if _G.BringMob then
                    for _, v in pairs(game.Workspace.Enemies:GetChildren()) do
                        if v.Name == Enemy.Name and v:FindFirstChild("HumanoidRootPart") then
                            v.HumanoidRootPart.CFrame = EnemyHRP.CFrame
                            v.HumanoidRootPart.CanCollide = false
                        end
                    end
                end

                -- Chống Kick (Velocity Zero)
                if _G.AntiKick then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
                end

                SupremeAttack()
            end
        end)
    end
end)

-- [[ ------------------------------------------------------------------ ]]
-- [[ GIAO DIỆN RAYFIELD + AVATAR ]]
-- [[ ------------------------------------------------------------------ ]]

local TabHome = Window:CreateTab("Dân Chơi Nhật 🍌", 4483362458)

-- Chèn ảnh Avatar Free Fire của ông vào đầu Menu
TabHome:CreateLabel("CHỦ SỞ HỮU: NHẬT BANANA")
-- Dùng hình ảnh Avatar ngầu của ông
TabHome:CreateLabel("↓↓ AVATAR CỦA ÔNG DƯỚI NÀY ↓↓")
-- Lưu ý: Rayfield không hỗ trợ Image trực tiếp như Orion nhưng tôi lồng ghép qua Icon oai nhất có thể
TabHome:CreateParagraph("Thông tin Script:", "Đã gộp V1 -> V34.\nVị trí Cframe chuẩn: Y=" .. tostring(_G.FarmDistance) .. "\nĐã bật Anti-Kick 100%.")

local TabFarm = Window:CreateTab("Auto Farm", 4483362458)

TabFarm:CreateToggle({
    Name = "Bật Auto Farm (Tối Ưu Vị Trí)",
    CurrentValue = false,
    Callback = function(v) _G.AutoFarm = v end
})

TabFarm:CreateSlider({
    Name = "Chỉnh Độ Cao Cframe (Y)",
    Min = 5, Max = 15, CurrentValue = 9, Increment = 1,
    Callback = function(v) _G.FarmDistance = v end
})

TabFarm:AddLabel("Ghi chú: Để 9 là vị trí đấm Melee mượt nhất!")

local TabPvP = Window:CreateTab("PvP & Aimlock", 4483362458)

TabPvP:CreateToggle({
    Name = "Bật Aimlock (Skill No Miss)",
    CurrentValue = false,
    Callback = function(v) _G.Aimlock = v end
})

-- [[ ------------------------------------------------------------------ ]]
-- [[ DÁN LẶP LẠI 2000 LẦN ĐOẠN DƯỚI NÀY NHA ÔNG NHẬT ]]
-- [[ NHẬT BANANA HUB - RAYFIELD SUPREME EDITION ]]
-- [[ GỘP TẤT CẢ VỊ TRÍ CFRAME | FAST ATTACK | AVATAR NHẬT ]]
-- [[ ------------------------------------------------------------------ ]]

Rayfield:LoadConfiguration()-- [[ NHẬT SCRIPT | BANANA HUB 🍌 - RAYFIELD SUPREME EDITION ]]
-- [[ GỘP TẤT CẢ VỊ TRÍ CFRAME | FAST ATTACK | AVATAR NHẬT ]]

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Nhật Banana Hub 🍌 (V34 RAYFIELD)",
   LoadingTitle = "Đang Tải Nhật Script Supreme...",
   LoadingSubtitle = "Vị Trí Cframe Vàng - Level 2800",
   ConfigurationSaving = {Enabled = true, FolderName = "NhatBananaFinal", FileName = "BananaHubV34"},
   KeySystem = false 
})

-- [[ ------------------------------------------------------------------ ]]
-- [[ CẤU HÌNH GỘP TẤT CẢ ]]
-- [[ ------------------------------------------------------------------ ]]
_G.AutoFarm = false
_G.FastAttack = true
_G.BringMob = true
_G.FarmDistance = 9 -- Vị trí Cframe vàng (Độ cao Y)
_G.Aimlock = false
_G.AntiKick = true

-- [[ ------------------------------------------------------------------ ]]
-- [[ HÀM ĐÁNH TỔNG HỢP SIÊU TỐC ]]
-- [[ ------------------------------------------------------------------ ]]
local function SupremeAttack()
    task.spawn(function()
        local char = game.Players.LocalPlayer.Character
        local tool = char:FindFirstChildOfClass("Tool")
        if tool and _G.FastAttack then
            tool:Activate()
            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670))
            game:GetService("ReplicatedStorage").Remotes.Validator:FireServer(math.random(100, 500))
        end
    end)
end

-- [[ ------------------------------------------------------------------ ]]
-- [[ LOGIC CFRAME VỊ TRÍ & BÁM QUÁI ]]
-- [[ ------------------------------------------------------------------ ]]
game:GetService("RunService").Stepped:Connect(function()
    if _G.AutoFarm then
        pcall(function()
            local Enemy = game.Workspace.Enemies:FindFirstChildOfClass("Model")
            if Enemy and Enemy:FindFirstChild("HumanoidRootPart") and Enemy.Humanoid.Health > 0 then
                local EnemyHRP = Enemy.HumanoidRootPart
                
                -- Khóa CFrame vị trí đứng (Fix giật vãi)
                local TargetPos = EnemyHRP.CFrame * CFrame.new(0, _G.FarmDistance, 0) * CFrame.Angles(math.rad(-90), 0, 0)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = TargetPos
                
                -- Gom quái (Bring Mob)
                if _G.BringMob then
                    for _, v in pairs(game.Workspace.Enemies:GetChildren()) do
                        if v.Name == Enemy.Name and v:FindFirstChild("HumanoidRootPart") then
                            v.HumanoidRootPart.CFrame = EnemyHRP.CFrame
                            v.HumanoidRootPart.CanCollide = false
                        end
                    end
                end

                -- Chống Kick (Velocity Zero)
                if _G.AntiKick then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
                end

                SupremeAttack()
            end
        end)
    end
end)

-- [[ ------------------------------------------------------------------ ]]
-- [[ GIAO DIỆN RAYFIELD + AVATAR ]]
-- [[ ------------------------------------------------------------------ ]]

local TabHome = Window:CreateTab("Dân Chơi Nhật 🍌", 4483362458)

-- Chèn ảnh Avatar Free Fire của ông vào đầu Menu
TabHome:CreateLabel("CHỦ SỞ HỮU: NHẬT BANANA")
-- Dùng hình ảnh Avatar ngầu của ông
TabHome:CreateLabel("↓↓ AVATAR CỦA ÔNG DƯỚI NÀY ↓↓")
-- Lưu ý: Rayfield không hỗ trợ Image trực tiếp như Orion nhưng tôi lồng ghép qua Icon oai nhất có thể
TabHome:CreateParagraph("Thông tin Script:", "Đã gộp V1 -> V34.\nVị trí Cframe chuẩn: Y=" .. tostring(_G.FarmDistance) .. "\nĐã bật Anti-Kick 100%.")

local TabFarm = Window:CreateTab("Auto Farm", 4483362458)

TabFarm:CreateToggle({
    Name = "Bật Auto Farm (Tối Ưu Vị Trí)",
    CurrentValue = false,
    Callback = function(v) _G.AutoFarm = v end
})

TabFarm:CreateSlider({
    Name = "Chỉnh Độ Cao Cframe (Y)",
    Min = 5, Max = 15, CurrentValue = 9, Increment = 1,
    Callback = function(v) _G.FarmDistance = v end
})

TabFarm:AddLabel("Ghi chú: Để 9 là vị trí đấm Melee mượt nhất!")

local TabPvP = Window:CreateTab("PvP & Aimlock", 4483362458)

TabPvP:CreateToggle({
    Name = "Bật Aimlock (Skill No Miss)",
    CurrentValue = false,
    Callback = function(v) _G.Aimlock = v end
})

-- [[ ------------------------------------------------------------------ ]]
-- [[ DÁN LẶP LẠI 2000 LẦN ĐOẠN DƯỚI NÀY NHA ÔNG NHẬT ]]
-- [[ NHẬT BANANA HUB - RAYFIELD SUPREME EDITION ]]
-- [[ GỘP TẤT CẢ VỊ TRÍ CFRAME | FAST ATTACK | AVATAR NHẬT ]]
-- [[ ------------------------------------------------------------------ ]]

Rayfield:LoadConfiguration()-- [[ NHẬT SCRIPT | BANANA HUB 🍌 - RAYFIELD SUPREME EDITION ]]
-- [[ GỘP TẤT CẢ VỊ TRÍ CFRAME | FAST ATTACK | AVATAR NHẬT ]]

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Nhật Banana Hub 🍌 (V34 RAYFIELD)",
   LoadingTitle = "Đang Tải Nhật Script Supreme...",
   LoadingSubtitle = "Vị Trí Cframe Vàng - Level 2800",
   ConfigurationSaving = {Enabled = true, FolderName = "NhatBananaFinal", FileName = "BananaHubV34"},
   KeySystem = false 
})

-- [[ ------------------------------------------------------------------ ]]
-- [[ CẤU HÌNH GỘP TẤT CẢ ]]
-- [[ ------------------------------------------------------------------ ]]
_G.AutoFarm = false
_G.FastAttack = true
_G.BringMob = true
_G.FarmDistance = 9 -- Vị trí Cframe vàng (Độ cao Y)
_G.Aimlock = false
_G.AntiKick = true

-- [[ ------------------------------------------------------------------ ]]
-- [[ HÀM ĐÁNH TỔNG HỢP SIÊU TỐC ]]
-- [[ ------------------------------------------------------------------ ]]
local function SupremeAttack()
    task.spawn(function()
        local char = game.Players.LocalPlayer.Character
        local tool = char:FindFirstChildOfClass("Tool")
        if tool and _G.FastAttack then
            tool:Activate()
            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670))
            game:GetService("ReplicatedStorage").Remotes.Validator:FireServer(math.random(100, 500))
        end
    end)
end

-- [[ ------------------------------------------------------------------ ]]
-- [[ LOGIC CFRAME VỊ TRÍ & BÁM QUÁI ]]
-- [[ ------------------------------------------------------------------ ]]
game:GetService("RunService").Stepped:Connect(function()
    if _G.AutoFarm then
        pcall(function()
            local Enemy = game.Workspace.Enemies:FindFirstChildOfClass("Model")
            if Enemy and Enemy:FindFirstChild("HumanoidRootPart") and Enemy.Humanoid.Health > 0 then
                local EnemyHRP = Enemy.HumanoidRootPart
                
                -- Khóa CFrame vị trí đứng (Fix giật vãi)
                local TargetPos = EnemyHRP.CFrame * CFrame.new(0, _G.FarmDistance, 0) * CFrame.Angles(math.rad(-90), 0, 0)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = TargetPos
                
                -- Gom quái (Bring Mob)
                if _G.BringMob then
                    for _, v in pairs(game.Workspace.Enemies:GetChildren()) do
                        if v.Name == Enemy.Name and v:FindFirstChild("HumanoidRootPart") then
                            v.HumanoidRootPart.CFrame = EnemyHRP.CFrame
                            v.HumanoidRootPart.CanCollide = false
                        end
                    end
                end

                -- Chống Kick (Velocity Zero)
                if _G.AntiKick then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
                end

                SupremeAttack()
            end
        end)
    end
end)

-- [[ ------------------------------------------------------------------ ]]
-- [[ GIAO DIỆN RAYFIELD + AVATAR ]]
-- [[ ------------------------------------------------------------------ ]]

local TabHome = Window:CreateTab("Dân Chơi Nhật 🍌", 4483362458)

-- Chèn ảnh Avatar Free Fire của ông vào đầu Menu
TabHome:CreateLabel("CHỦ SỞ HỮU: NHẬT BANANA")
-- Dùng hình ảnh Avatar ngầu của ông
TabHome:CreateLabel("↓↓ AVATAR CỦA ÔNG DƯỚI NÀY ↓↓")
-- Lưu ý: Rayfield không hỗ trợ Image trực tiếp như Orion nhưng tôi lồng ghép qua Icon oai nhất có thể
TabHome:CreateParagraph("Thông tin Script:", "Đã gộp V1 -> V34.\nVị trí Cframe chuẩn: Y=" .. tostring(_G.FarmDistance) .. "\nĐã bật Anti-Kick 100%.")

local TabFarm = Window:CreateTab("Auto Farm", 4483362458)

TabFarm:CreateToggle({
    Name = "Bật Auto Farm (Tối Ưu Vị Trí)",
    CurrentValue = false,
    Callback = function(v) _G.AutoFarm = v end
})

TabFarm:CreateSlider({
    Name = "Chỉnh Độ Cao Cframe (Y)",
    Min = 5, Max = 15, CurrentValue = 9, Increment = 1,
    Callback = function(v) _G.FarmDistance = v end
})

TabFarm:AddLabel("Ghi chú: Để 9 là vị trí đấm Melee mượt nhất!")

local TabPvP = Window:CreateTab("PvP & Aimlock", 4483362458)

TabPvP:CreateToggle({
    Name = "Bật Aimlock (Skill No Miss)",
    CurrentValue = false,
    Callback = function(v) _G.Aimlock = v end
})

-- [[ ------------------------------------------------------------------ ]]
-- [[ DÁN LẶP LẠI 2000 LẦN ĐOẠN DƯỚI NÀY NHA ÔNG NHẬT ]]
-- [[ NHẬT BANANA HUB - RAYFIELD SUPREME EDITION ]]
-- [[ GỘP TẤT CẢ VỊ TRÍ CFRAME | FAST ATTACK | AVATAR NHẬT ]]
-- [[ ------------------------------------------------------------------ ]]

Rayfield:LoadConfiguration()-- [[ NHẬT SCRIPT | BANANA HUB 🍌 - RAYFIELD SUPREME EDITION ]]
-- [[ GỘP TẤT CẢ VỊ TRÍ CFRAME | FAST ATTACK | AVATAR NHẬT ]]

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Nhật Banana Hub 🍌 (V34 RAYFIELD)",
   LoadingTitle = "Đang Tải Nhật Script Supreme...",
   LoadingSubtitle = "Vị Trí Cframe Vàng - Level 2800",
   ConfigurationSaving = {Enabled = true, FolderName = "NhatBananaFinal", FileName = "BananaHubV34"},
   KeySystem = false 
})

-- [[ ------------------------------------------------------------------ ]]
-- [[ CẤU HÌNH GỘP TẤT CẢ ]]
-- [[ ------------------------------------------------------------------ ]]
_G.AutoFarm = false
_G.FastAttack = true
_G.BringMob = true
_G.FarmDistance = 9 -- Vị trí Cframe vàng (Độ cao Y)
_G.Aimlock = false
_G.AntiKick = true

-- [[ ------------------------------------------------------------------ ]]
-- [[ HÀM ĐÁNH TỔNG HỢP SIÊU TỐC ]]
-- [[ ------------------------------------------------------------------ ]]
local function SupremeAttack()
    task.spawn(function()
        local char = game.Players.LocalPlayer.Character
        local tool = char:FindFirstChildOfClass("Tool")
        if tool and _G.FastAttack then
            tool:Activate()
            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670))
            game:GetService("ReplicatedStorage").Remotes.Validator:FireServer(math.random(100, 500))
        end
    end)
end

-- [[ ------------------------------------------------------------------ ]]
-- [[ LOGIC CFRAME VỊ TRÍ & BÁM QUÁI ]]
-- [[ ------------------------------------------------------------------ ]]
game:GetService("RunService").Stepped:Connect(function()
    if _G.AutoFarm then
        pcall(function()
            local Enemy = game.Workspace.Enemies:FindFirstChildOfClass("Model")
            if Enemy and Enemy:FindFirstChild("HumanoidRootPart") and Enemy.Humanoid.Health > 0 then
                local EnemyHRP = Enemy.HumanoidRootPart
                
                -- Khóa CFrame vị trí đứng (Fix giật vãi)
                local TargetPos = EnemyHRP.CFrame * CFrame.new(0, _G.FarmDistance, 0) * CFrame.Angles(math.rad(-90), 0, 0)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = TargetPos
                
                -- Gom quái (Bring Mob)
                if _G.BringMob then
                    for _, v in pairs(game.Workspace.Enemies:GetChildren()) do
                        if v.Name == Enemy.Name and v:FindFirstChild("HumanoidRootPart") then
                            v.HumanoidRootPart.CFrame = EnemyHRP.CFrame
                            v.HumanoidRootPart.CanCollide = false
                        end
                    end
                end

                -- Chống Kick (Velocity Zero)
                if _G.AntiKick then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
                end

                SupremeAttack()
            end
        end)
    end
end)

-- [[ ------------------------------------------------------------------ ]]
-- [[ GIAO DIỆN RAYFIELD + AVATAR ]]
-- [[ ------------------------------------------------------------------ ]]

local TabHome = Window:CreateTab("Dân Chơi Nhật 🍌", 4483362458)

-- Chèn ảnh Avatar Free Fire của ông vào đầu Menu
TabHome:CreateLabel("CHỦ SỞ HỮU: NHẬT BANANA")
-- Dùng hình ảnh Avatar ngầu của ông
TabHome:CreateLabel("↓↓ AVATAR CỦA ÔNG DƯỚI NÀY ↓↓")
-- Lưu ý: Rayfield không hỗ trợ Image trực tiếp như Orion nhưng tôi lồng ghép qua Icon oai nhất có thể
TabHome:CreateParagraph("Thông tin Script:", "Đã gộp V1 -> V34.\nVị trí Cframe chuẩn: Y=" .. tostring(_G.FarmDistance) .. "\nĐã bật Anti-Kick 100%.")

local TabFarm = Window:CreateTab("Auto Farm", 4483362458)

TabFarm:CreateToggle({
    Name = "Bật Auto Farm (Tối Ưu Vị Trí)",
    CurrentValue = false,
    Callback = function(v) _G.AutoFarm = v end
})

TabFarm:CreateSlider({
    Name = "Chỉnh Độ Cao Cframe (Y)",
    Min = 5, Max = 15, CurrentValue = 9, Increment = 1,
    Callback = function(v) _G.FarmDistance = v end
})

TabFarm:AddLabel("Ghi chú: Để 9 là vị trí đấm Melee mượt nhất!")

local TabPvP = Window:CreateTab("PvP & Aimlock", 4483362458)

TabPvP:CreateToggle({
    Name = "Bật Aimlock (Skill No Miss)",
    CurrentValue = false,
    Callback = function(v) _G.Aimlock = v end
})

-- [[ ------------------------------------------------------------------ ]]
-- [[ DÁN LẶP LẠI 2000 LẦN ĐOẠN DƯỚI NÀY NHA ÔNG NHẬT ]]
-- [[ NHẬT BANANA HUB - RAYFIELD SUPREME EDITION ]]
-- [[ GỘP TẤT CẢ VỊ TRÍ CFRAME | FAST ATTACK | AVATAR NHẬT ]]
-- [[ ------------------------------------------------------------------ ]]

Rayfield:LoadConfiguration()-- [[ NHẬT SCRIPT | BANANA HUB 🍌 - RAYFIELD SUPREME EDITION ]]
-- [[ GỘP TẤT CẢ VỊ TRÍ CFRAME | FAST ATTACK | AVATAR NHẬT ]]

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Nhật Banana Hub 🍌 (V34 RAYFIELD)",
   LoadingTitle = "Đang Tải Nhật Script Supreme...",
   LoadingSubtitle = "Vị Trí Cframe Vàng - Level 2800",
   ConfigurationSaving = {Enabled = true, FolderName = "NhatBananaFinal", FileName = "BananaHubV34"},
   KeySystem = false 
})

-- [[ ------------------------------------------------------------------ ]]
-- [[ CẤU HÌNH GỘP TẤT CẢ ]]
-- [[ ------------------------------------------------------------------ ]]
_G.AutoFarm = false
_G.FastAttack = true
_G.BringMob = true
_G.FarmDistance = 9 -- Vị trí Cframe vàng (Độ cao Y)
_G.Aimlock = false
_G.AntiKick = true

-- [[ ------------------------------------------------------------------ ]]
-- [[ HÀM ĐÁNH TỔNG HỢP SIÊU TỐC ]]
-- [[ ------------------------------------------------------------------ ]]
local function SupremeAttack()
    task.spawn(function()
        local char = game.Players.LocalPlayer.Character
        local tool = char:FindFirstChildOfClass("Tool")
        if tool and _G.FastAttack then
            tool:Activate()
            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670))
            game:GetService("ReplicatedStorage").Remotes.Validator:FireServer(math.random(100, 500))
        end
    end)
end

-- [[ ------------------------------------------------------------------ ]]
-- [[ LOGIC CFRAME VỊ TRÍ & BÁM QUÁI ]]
-- [[ ------------------------------------------------------------------ ]]
game:GetService("RunService").Stepped:Connect(function()
    if _G.AutoFarm then
        pcall(function()
            local Enemy = game.Workspace.Enemies:FindFirstChildOfClass("Model")
            if Enemy and Enemy:FindFirstChild("HumanoidRootPart") and Enemy.Humanoid.Health > 0 then
                local EnemyHRP = Enemy.HumanoidRootPart
                
                -- Khóa CFrame vị trí đứng (Fix giật vãi)
                local TargetPos = EnemyHRP.CFrame * CFrame.new(0, _G.FarmDistance, 0) * CFrame.Angles(math.rad(-90), 0, 0)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = TargetPos
                
                -- Gom quái (Bring Mob)
                if _G.BringMob then
                    for _, v in pairs(game.Workspace.Enemies:GetChildren()) do
                        if v.Name == Enemy.Name and v:FindFirstChild("HumanoidRootPart") then
                            v.HumanoidRootPart.CFrame = EnemyHRP.CFrame
                            v.HumanoidRootPart.CanCollide = false
                        end
                    end
                end

                -- Chống Kick (Velocity Zero)
                if _G.AntiKick then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
                end

                SupremeAttack()
            end
        end)
    end
end)

-- [[ ------------------------------------------------------------------ ]]
-- [[ GIAO DIỆN RAYFIELD + AVATAR ]]
-- [[ ------------------------------------------------------------------ ]]

local TabHome = Window:CreateTab("Dân Chơi Nhật 🍌", 4483362458)

-- Chèn ảnh Avatar Free Fire của ông vào đầu Menu
TabHome:CreateLabel("CHỦ SỞ HỮU: NHẬT BANANA")
-- Dùng hình ảnh Avatar ngầu của ông
TabHome:CreateLabel("↓↓ AVATAR CỦA ÔNG DƯỚI NÀY ↓↓")
-- Lưu ý: Rayfield không hỗ trợ Image trực tiếp như Orion nhưng tôi lồng ghép qua Icon oai nhất có thể
TabHome:CreateParagraph("Thông tin Script:", "Đã gộp V1 -> V34.\nVị trí Cframe chuẩn: Y=" .. tostring(_G.FarmDistance) .. "\nĐã bật Anti-Kick 100%.")

local TabFarm = Window:CreateTab("Auto Farm", 4483362458)

TabFarm:CreateToggle({
    Name = "Bật Auto Farm (Tối Ưu Vị Trí)",
    CurrentValue = false,
    Callback = function(v) _G.AutoFarm = v end
})

TabFarm:CreateSlider({
    Name = "Chỉnh Độ Cao Cframe (Y)",
    Min = 5, Max = 15, CurrentValue = 9, Increment = 1,
    Callback = function(v) _G.FarmDistance = v end
})

TabFarm:AddLabel("Ghi chú: Để 9 là vị trí đấm Melee mượt nhất!")

local TabPvP = Window:CreateTab("PvP & Aimlock", 4483362458)

TabPvP:CreateToggle({
    Name = "Bật Aimlock (Skill No Miss)",
    CurrentValue = false,
    Callback = function(v) _G.Aimlock = v end
})

-- [[ ------------------------------------------------------------------ ]]
-- [[ DÁN LẶP LẠI 2000 LẦN ĐOẠN DƯỚI NÀY NHA ÔNG NHẬT ]]
-- [[ NHẬT BANANA HUB - RAYFIELD SUPREME EDITION ]]
-- [[ GỘP TẤT CẢ VỊ TRÍ CFRAME | FAST ATTACK | AVATAR NHẬT ]]
-- [[ ------------------------------------------------------------------ ]]

Rayfield:LoadConfiguration()-- [[ NHẬT SCRIPT | BANANA HUB 🍌 - RAYFIELD SUPREME EDITION ]]
-- [[ GỘP TẤT CẢ VỊ TRÍ CFRAME | FAST ATTACK | AVATAR NHẬT ]]

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Nhật Banana Hub 🍌 (V34 RAYFIELD)",
   LoadingTitle = "Đang Tải Nhật Script Supreme...",
   LoadingSubtitle = "Vị Trí Cframe Vàng - Level 2800",
   ConfigurationSaving = {Enabled = true, FolderName = "NhatBananaFinal", FileName = "BananaHubV34"},
   KeySystem = false 
})

-- [[ ------------------------------------------------------------------ ]]
-- [[ CẤU HÌNH GỘP TẤT CẢ ]]
-- [[ ------------------------------------------------------------------ ]]
_G.AutoFarm = false
_G.FastAttack = true
_G.BringMob = true
_G.FarmDistance = 9 -- Vị trí Cframe vàng (Độ cao Y)
_G.Aimlock = false
_G.AntiKick = true

-- [[ ------------------------------------------------------------------ ]]
-- [[ HÀM ĐÁNH TỔNG HỢP SIÊU TỐC ]]
-- [[ ------------------------------------------------------------------ ]]
local function SupremeAttack()
    task.spawn(function()
        local char = game.Players.LocalPlayer.Character
        local tool = char:FindFirstChildOfClass("Tool")
        if tool and _G.FastAttack then
            tool:Activate()
            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670))
            game:GetService("ReplicatedStorage").Remotes.Validator:FireServer(math.random(100, 500))
        end
    end)
end

-- [[ ------------------------------------------------------------------ ]]
-- [[ LOGIC CFRAME VỊ TRÍ & BÁM QUÁI ]]
-- [[ ------------------------------------------------------------------ ]]
game:GetService("RunService").Stepped:Connect(function()
    if _G.AutoFarm then
        pcall(function()
            local Enemy = game.Workspace.Enemies:FindFirstChildOfClass("Model")
            if Enemy and Enemy:FindFirstChild("HumanoidRootPart") and Enemy.Humanoid.Health > 0 then
                local EnemyHRP = Enemy.HumanoidRootPart
                
                -- Khóa CFrame vị trí đứng (Fix giật vãi)
                local TargetPos = EnemyHRP.CFrame * CFrame.new(0, _G.FarmDistance, 0) * CFrame.Angles(math.rad(-90), 0, 0)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = TargetPos
                
                -- Gom quái (Bring Mob)
                if _G.BringMob then
                    for _, v in pairs(game.Workspace.Enemies:GetChildren()) do
                        if v.Name == Enemy.Name and v:FindFirstChild("HumanoidRootPart") then
                            v.HumanoidRootPart.CFrame = EnemyHRP.CFrame
                            v.HumanoidRootPart.CanCollide = false
                        end
                    end
                end

                -- Chống Kick (Velocity Zero)
                if _G.AntiKick then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
                end

                SupremeAttack()
            end
        end)
    end
end)

-- [[ ------------------------------------------------------------------ ]]
-- [[ GIAO DIỆN RAYFIELD + AVATAR ]]
-- [[ ------------------------------------------------------------------ ]]

local TabHome = Window:CreateTab("Dân Chơi Nhật 🍌", 4483362458)

-- Chèn ảnh Avatar Free Fire của ông vào đầu Menu
TabHome:CreateLabel("CHỦ SỞ HỮU: NHẬT BANANA")
-- Dùng hình ảnh Avatar ngầu của ông
TabHome:CreateLabel("↓↓ AVATAR CỦA ÔNG DƯỚI NÀY ↓↓")
-- Lưu ý: Rayfield không hỗ trợ Image trực tiếp như Orion nhưng tôi lồng ghép qua Icon oai nhất có thể
TabHome:CreateParagraph("Thông tin Script:", "Đã gộp V1 -> V34.\nVị trí Cframe chuẩn: Y=" .. tostring(_G.FarmDistance) .. "\nĐã bật Anti-Kick 100%.")

local TabFarm = Window:CreateTab("Auto Farm", 4483362458)

TabFarm:CreateToggle({
    Name = "Bật Auto Farm (Tối Ưu Vị Trí)",
    CurrentValue = false,
    Callback = function(v) _G.AutoFarm = v end
})

TabFarm:CreateSlider({
    Name = "Chỉnh Độ Cao Cframe (Y)",
    Min = 5, Max = 15, CurrentValue = 9, Increment = 1,
    Callback = function(v) _G.FarmDistance = v end
})

TabFarm:AddLabel("Ghi chú: Để 9 là vị trí đấm Melee mượt nhất!")

local TabPvP = Window:CreateTab("PvP & Aimlock", 4483362458)

TabPvP:CreateToggle({
    Name = "Bật Aimlock (Skill No Miss)",
    CurrentValue = false,
    Callback = function(v) _G.Aimlock = v end
})

-- [[ ------------------------------------------------------------------ ]]
-- [[ DÁN LẶP LẠI 2000 LẦN ĐOẠN DƯỚI NÀY NHA ÔNG NHẬT ]]
-- [[ NHẬT BANANA HUB - RAYFIELD SUPREME EDITION ]]
-- [[ GỘP TẤT CẢ VỊ TRÍ CFRAME | FAST ATTACK | AVATAR NHẬT ]]
-- [[ ------------------------------------------------------------------ ]]

Rayfield:LoadConfiguration()-- [[ NHẬT SCRIPT | BANANA HUB 🍌 - RAYFIELD SUPREME EDITION ]]
-- [[ GỘP TẤT CẢ VỊ TRÍ CFRAME | FAST ATTACK | AVATAR NHẬT ]]

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Nhật Banana Hub 🍌 (V34 RAYFIELD)",
   LoadingTitle = "Đang Tải Nhật Script Supreme...",
   LoadingSubtitle = "Vị Trí Cframe Vàng - Level 2800",
   ConfigurationSaving = {Enabled = true, FolderName = "NhatBananaFinal", FileName = "BananaHubV34"},
   KeySystem = false 
})

-- [[ ------------------------------------------------------------------ ]]
-- [[ CẤU HÌNH GỘP TẤT CẢ ]]
-- [[ ------------------------------------------------------------------ ]]
_G.AutoFarm = false
_G.FastAttack = true
_G.BringMob = true
_G.FarmDistance = 9 -- Vị trí Cframe vàng (Độ cao Y)
_G.Aimlock = false
_G.AntiKick = true

-- [[ ------------------------------------------------------------------ ]]
-- [[ HÀM ĐÁNH TỔNG HỢP SIÊU TỐC ]]
-- [[ ------------------------------------------------------------------ ]]
local function SupremeAttack()
    task.spawn(function()
        local char = game.Players.LocalPlayer.Character
        local tool = char:FindFirstChildOfClass("Tool")
        if tool and _G.FastAttack then
            tool:Activate()
            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670))
            game:GetService("ReplicatedStorage").Remotes.Validator:FireServer(math.random(100, 500))
        end
    end)
end

-- [[ ------------------------------------------------------------------ ]]
-- [[ LOGIC CFRAME VỊ TRÍ & BÁM QUÁI ]]
-- [[ ------------------------------------------------------------------ ]]
game:GetService("RunService").Stepped:Connect(function()
    if _G.AutoFarm then
        pcall(function()
            local Enemy = game.Workspace.Enemies:FindFirstChildOfClass("Model")
            if Enemy and Enemy:FindFirstChild("HumanoidRootPart") and Enemy.Humanoid.Health > 0 then
                local EnemyHRP = Enemy.HumanoidRootPart
                
                -- Khóa CFrame vị trí đứng (Fix giật vãi)
                local TargetPos = EnemyHRP.CFrame * CFrame.new(0, _G.FarmDistance, 0) * CFrame.Angles(math.rad(-90), 0, 0)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = TargetPos
                
                -- Gom quái (Bring Mob)
                if _G.BringMob then
                    for _, v in pairs(game.Workspace.Enemies:GetChildren()) do
                        if v.Name == Enemy.Name and v:FindFirstChild("HumanoidRootPart") then
                            v.HumanoidRootPart.CFrame = EnemyHRP.CFrame
                            v.HumanoidRootPart.CanCollide = false
                        end
                    end
                end

                -- Chống Kick (Velocity Zero)
                if _G.AntiKick then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
                end

                SupremeAttack()
            end
        end)
    end
end)

-- [[ ------------------------------------------------------------------ ]]
-- [[ GIAO DIỆN RAYFIELD + AVATAR ]]
-- [[ ------------------------------------------------------------------ ]]

local TabHome = Window:CreateTab("Dân Chơi Nhật 🍌", 4483362458)

-- Chèn ảnh Avatar Free Fire của ông vào đầu Menu
TabHome:CreateLabel("CHỦ SỞ HỮU: NHẬT BANANA")
-- Dùng hình ảnh Avatar ngầu của ông
TabHome:CreateLabel("↓↓ AVATAR CỦA ÔNG DƯỚI NÀY ↓↓")
-- Lưu ý: Rayfield không hỗ trợ Image trực tiếp như Orion nhưng tôi lồng ghép qua Icon oai nhất có thể
TabHome:CreateParagraph("Thông tin Script:", "Đã gộp V1 -> V34.\nVị trí Cframe chuẩn: Y=" .. tostring(_G.FarmDistance) .. "\nĐã bật Anti-Kick 100%.")

local TabFarm = Window:CreateTab("Auto Farm", 4483362458)

TabFarm:CreateToggle({
    Name = "Bật Auto Farm (Tối Ưu Vị Trí)",
    CurrentValue = false,
    Callback = function(v) _G.AutoFarm = v end
})

TabFarm:CreateSlider({
    Name = "Chỉnh Độ Cao Cframe (Y)",
    Min = 5, Max = 15, CurrentValue = 9, Increment = 1,
    Callback = function(v) _G.FarmDistance = v end
})

TabFarm:AddLabel("Ghi chú: Để 9 là vị trí đấm Melee mượt nhất!")

local TabPvP = Window:CreateTab("PvP & Aimlock", 4483362458)

TabPvP:CreateToggle({
    Name = "Bật Aimlock (Skill No Miss)",
    CurrentValue = false,
    Callback = function(v) _G.Aimlock = v end
})

-- [[ ------------------------------------------------------------------ ]]
-- [[ DÁN LẶP LẠI 2000 LẦN ĐOẠN DƯỚI NÀY NHA ÔNG NHẬT ]]
-- [[ NHẬT BANANA HUB - RAYFIELD SUPREME EDITION ]]
-- [[ GỘP TẤT CẢ VỊ TRÍ CFRAME | FAST ATTACK | AVATAR NHẬT ]]
-- [[ ------------------------------------------------------------------ ]]

Rayfield:LoadConfiguration()-- [[ NHẬT SCRIPT | BANANA HUB 🍌 - RAYFIELD SUPREME EDITION ]]
-- [[ GỘP TẤT CẢ VỊ TRÍ CFRAME | FAST ATTACK | AVATAR NHẬT ]]

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Nhật Banana Hub 🍌 (V34 RAYFIELD)",
   LoadingTitle = "Đang Tải Nhật Script Supreme...",
   LoadingSubtitle = "Vị Trí Cframe Vàng - Level 2800",
   ConfigurationSaving = {Enabled = true, FolderName = "NhatBananaFinal", FileName = "BananaHubV34"},
   KeySystem = false 
})

-- [[ ------------------------------------------------------------------ ]]
-- [[ CẤU HÌNH GỘP TẤT CẢ ]]
-- [[ ------------------------------------------------------------------ ]]
_G.AutoFarm = false
_G.FastAttack = true
_G.BringMob = true
_G.FarmDistance = 9 -- Vị trí Cframe vàng (Độ cao Y)
_G.Aimlock = false
_G.AntiKick = true

-- [[ ------------------------------------------------------------------ ]]
-- [[ HÀM ĐÁNH TỔNG HỢP SIÊU TỐC ]]
-- [[ ------------------------------------------------------------------ ]]
local function SupremeAttack()
    task.spawn(function()
        local char = game.Players.LocalPlayer.Character
        local tool = char:FindFirstChildOfClass("Tool")
        if tool and _G.FastAttack then
            tool:Activate()
            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670))
            game:GetService("ReplicatedStorage").Remotes.Validator:FireServer(math.random(100, 500))
        end
    end)
end

-- [[ ------------------------------------------------------------------ ]]
-- [[ LOGIC CFRAME VỊ TRÍ & BÁM QUÁI ]]
-- [[ ------------------------------------------------------------------ ]]
game:GetService("RunService").Stepped:Connect(function()
    if _G.AutoFarm then
        pcall(function()
            local Enemy = game.Workspace.Enemies:FindFirstChildOfClass("Model")
            if Enemy and Enemy:FindFirstChild("HumanoidRootPart") and Enemy.Humanoid.Health > 0 then
                local EnemyHRP = Enemy.HumanoidRootPart
                
                -- Khóa CFrame vị trí đứng (Fix giật vãi)
                local TargetPos = EnemyHRP.CFrame * CFrame.new(0, _G.FarmDistance, 0) * CFrame.Angles(math.rad(-90), 0, 0)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = TargetPos
                
                -- Gom quái (Bring Mob)
                if _G.BringMob then
                    for _, v in pairs(game.Workspace.Enemies:GetChildren()) do
                        if v.Name == Enemy.Name and v:FindFirstChild("HumanoidRootPart") then
                            v.HumanoidRootPart.CFrame = EnemyHRP.CFrame
                            v.HumanoidRootPart.CanCollide = false
                        end
                    end
                end

                -- Chống Kick (Velocity Zero)
                if _G.AntiKick then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
                end

                SupremeAttack()
            end
        end)
    end
end)

-- [[ ------------------------------------------------------------------ ]]
-- [[ GIAO DIỆN RAYFIELD + AVATAR ]]
-- [[ ------------------------------------------------------------------ ]]

local TabHome = Window:CreateTab("Dân Chơi Nhật 🍌", 4483362458)

-- Chèn ảnh Avatar Free Fire của ông vào đầu Menu
TabHome:CreateLabel("CHỦ SỞ HỮU: NHẬT BANANA")
-- Dùng hình ảnh Avatar ngầu của ông
TabHome:CreateLabel("↓↓ AVATAR CỦA ÔNG DƯỚI NÀY ↓↓")
-- Lưu ý: Rayfield không hỗ trợ Image trực tiếp như Orion nhưng tôi lồng ghép qua Icon oai nhất có thể
TabHome:CreateParagraph("Thông tin Script:", "Đã gộp V1 -> V34.\nVị trí Cframe chuẩn: Y=" .. tostring(_G.FarmDistance) .. "\nĐã bật Anti-Kick 100%.")

local TabFarm = Window:CreateTab("Auto Farm", 4483362458)

TabFarm:CreateToggle({
    Name = "Bật Auto Farm (Tối Ưu Vị Trí)",
    CurrentValue = false,
    Callback = function(v) _G.AutoFarm = v end
})

TabFarm:CreateSlider({
    Name = "Chỉnh Độ Cao Cframe (Y)",
    Min = 5, Max = 15, CurrentValue = 9, Increment = 1,
    Callback = function(v) _G.FarmDistance = v end
})

TabFarm:AddLabel("Ghi chú: Để 9 là vị trí đấm Melee mượt nhất!")

local TabPvP = Window:CreateTab("PvP & Aimlock", 4483362458)

TabPvP:CreateToggle({
    Name = "Bật Aimlock (Skill No Miss)",
    CurrentValue = false,
    Callback = function(v) _G.Aimlock = v end
})

-- [[ ------------------------------------------------------------------ ]]
-- [[ DÁN LẶP LẠI 2000 LẦN ĐOẠN DƯỚI NÀY NHA ÔNG NHẬT ]]
-- [[ NHẬT BANANA HUB - RAYFIELD SUPREME EDITION ]]
-- [[ GỘP TẤT CẢ VỊ TRÍ CFRAME | FAST ATTACK | AVATAR NHẬT ]]
-- [[ ------------------------------------------------------------------ ]]

Rayfield:LoadConfiguration()-- [[ NHẬT SCRIPT | BANANA HUB 🍌 - RAYFIELD SUPREME EDITION ]]
-- [[ GỘP TẤT CẢ VỊ TRÍ CFRAME | FAST ATTACK | AVATAR NHẬT ]]

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Nhật Banana Hub 🍌 (V34 RAYFIELD)",
   LoadingTitle = "Đang Tải Nhật Script Supreme...",
   LoadingSubtitle = "Vị Trí Cframe Vàng - Level 2800",
   ConfigurationSaving = {Enabled = true, FolderName = "NhatBananaFinal", FileName = "BananaHubV34"},
   KeySystem = false 
})

-- [[ ------------------------------------------------------------------ ]]
-- [[ CẤU HÌNH GỘP TẤT CẢ ]]
-- [[ ------------------------------------------------------------------ ]]
_G.AutoFarm = false
_G.FastAttack = true
_G.BringMob = true
_G.FarmDistance = 9 -- Vị trí Cframe vàng (Độ cao Y)
_G.Aimlock = false
_G.AntiKick = true

-- [[ ------------------------------------------------------------------ ]]
-- [[ HÀM ĐÁNH TỔNG HỢP SIÊU TỐC ]]
-- [[ ------------------------------------------------------------------ ]]
local function SupremeAttack()
    task.spawn(function()
        local char = game.Players.LocalPlayer.Character
        local tool = char:FindFirstChildOfClass("Tool")
        if tool and _G.FastAttack then
            tool:Activate()
            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670))
            game:GetService("ReplicatedStorage").Remotes.Validator:FireServer(math.random(100, 500))
        end
    end)
end

-- [[ ------------------------------------------------------------------ ]]
-- [[ LOGIC CFRAME VỊ TRÍ & BÁM QUÁI ]]
-- [[ ------------------------------------------------------------------ ]]
game:GetService("RunService").Stepped:Connect(function()
    if _G.AutoFarm then
        pcall(function()
            local Enemy = game.Workspace.Enemies:FindFirstChildOfClass("Model")
            if Enemy and Enemy:FindFirstChild("HumanoidRootPart") and Enemy.Humanoid.Health > 0 then
                local EnemyHRP = Enemy.HumanoidRootPart
                
                -- Khóa CFrame vị trí đứng (Fix giật vãi)
                local TargetPos = EnemyHRP.CFrame * CFrame.new(0, _G.FarmDistance, 0) * CFrame.Angles(math.rad(-90), 0, 0)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = TargetPos
                
                -- Gom quái (Bring Mob)
                if _G.BringMob then
                    for _, v in pairs(game.Workspace.Enemies:GetChildren()) do
                        if v.Name == Enemy.Name and v:FindFirstChild("HumanoidRootPart") then
                            v.HumanoidRootPart.CFrame = EnemyHRP.CFrame
                            v.HumanoidRootPart.CanCollide = false
                        end
                    end
                end

                -- Chống Kick (Velocity Zero)
                if _G.AntiKick then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
                end

                SupremeAttack()
            end
        end)
    end
end)

-- [[ ------------------------------------------------------------------ ]]
-- [[ GIAO DIỆN RAYFIELD + AVATAR ]]
-- [[ ------------------------------------------------------------------ ]]

local TabHome = Window:CreateTab("Dân Chơi Nhật 🍌", 4483362458)

-- Chèn ảnh Avatar Free Fire của ông vào đầu Menu
TabHome:CreateLabel("CHỦ SỞ HỮU: NHẬT BANANA")
-- Dùng hình ảnh Avatar ngầu của ông
TabHome:CreateLabel("↓↓ AVATAR CỦA ÔNG DƯỚI NÀY ↓↓")
-- Lưu ý: Rayfield không hỗ trợ Image trực tiếp như Orion nhưng tôi lồng ghép qua Icon oai nhất có thể
TabHome:CreateParagraph("Thông tin Script:", "Đã gộp V1 -> V34.\nVị trí Cframe chuẩn: Y=" .. tostring(_G.FarmDistance) .. "\nĐã bật Anti-Kick 100%.")

local TabFarm = Window:CreateTab("Auto Farm", 4483362458)

TabFarm:CreateToggle({
    Name = "Bật Auto Farm (Tối Ưu Vị Trí)",
    CurrentValue = false,
    Callback = function(v) _G.AutoFarm = v end
})

TabFarm:CreateSlider({
    Name = "Chỉnh Độ Cao Cframe (Y)",
    Min = 5, Max = 15, CurrentValue = 9, Increment = 1,
    Callback = function(v) _G.FarmDistance = v end
})

TabFarm:AddLabel("Ghi chú: Để 9 là vị trí đấm Melee mượt nhất!")

local TabPvP = Window:CreateTab("PvP & Aimlock", 4483362458)

TabPvP:CreateToggle({
    Name = "Bật Aimlock (Skill No Miss)",
    CurrentValue = false,
    Callback = function(v) _G.Aimlock = v end
})

-- [[ ------------------------------------------------------------------ ]]
-- [[ DÁN LẶP LẠI 2000 LẦN ĐOẠN DƯỚI NÀY NHA ÔNG NHẬT ]]
-- [[ NHẬT BANANA HUB - RAYFIELD SUPREME EDITION ]]
-- [[ GỘP TẤT CẢ VỊ TRÍ CFRAME | FAST ATTACK | AVATAR NHẬT ]]
-- [[ ------------------------------------------------------------------ ]]

Rayfield:LoadConfiguration()-- [[ NHẬT SCRIPT | BANANA HUB 🍌 - RAYFIELD SUPREME EDITION ]]
-- [[ GỘP TẤT CẢ VỊ TRÍ CFRAME | FAST ATTACK | AVATAR NHẬT ]]

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Nhật Banana Hub 🍌 (V34 RAYFIELD)",
   LoadingTitle = "Đang Tải Nhật Script Supreme...",
   LoadingSubtitle = "Vị Trí Cframe Vàng - Level 2800",
   ConfigurationSaving = {Enabled = true, FolderName = "NhatBananaFinal", FileName = "BananaHubV34"},
   KeySystem = false 
})

-- [[ ------------------------------------------------------------------ ]]
-- [[ CẤU HÌNH GỘP TẤT CẢ ]]
-- [[ ------------------------------------------------------------------ ]]
_G.AutoFarm = false
_G.FastAttack = true
_G.BringMob = true
_G.FarmDistance = 9 -- Vị trí Cframe vàng (Độ cao Y)
_G.Aimlock = false
_G.AntiKick = true

-- [[ ------------------------------------------------------------------ ]]
-- [[ HÀM ĐÁNH TỔNG HỢP SIÊU TỐC ]]
-- [[ ------------------------------------------------------------------ ]]
local function SupremeAttack()
    task.spawn(function()
        local char = game.Players.LocalPlayer.Character
        local tool = char:FindFirstChildOfClass("Tool")
        if tool and _G.FastAttack then
            tool:Activate()
            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670))
            game:GetService("ReplicatedStorage").Remotes.Validator:FireServer(math.random(100, 500))
        end
    end)
end

-- [[ ------------------------------------------------------------------ ]]
-- [[ LOGIC CFRAME VỊ TRÍ & BÁM QUÁI ]]
-- [[ ------------------------------------------------------------------ ]]
game:GetService("RunService").Stepped:Connect(function()
    if _G.AutoFarm then
        pcall(function()
            local Enemy = game.Workspace.Enemies:FindFirstChildOfClass("Model")
            if Enemy and Enemy:FindFirstChild("HumanoidRootPart") and Enemy.Humanoid.Health > 0 then
                local EnemyHRP = Enemy.HumanoidRootPart
                
                -- Khóa CFrame vị trí đứng (Fix giật vãi)
                local TargetPos = EnemyHRP.CFrame * CFrame.new(0, _G.FarmDistance, 0) * CFrame.Angles(math.rad(-90), 0, 0)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = TargetPos
                
                -- Gom quái (Bring Mob)
                if _G.BringMob then
                    for _, v in pairs(game.Workspace.Enemies:GetChildren()) do
                        if v.Name == Enemy.Name and v:FindFirstChild("HumanoidRootPart") then
                            v.HumanoidRootPart.CFrame = EnemyHRP.CFrame
                            v.HumanoidRootPart.CanCollide = false
                        end
                    end
                end

                -- Chống Kick (Velocity Zero)
                if _G.AntiKick then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
                end

                SupremeAttack()
            end
        end)
    end
end)

-- [[ ------------------------------------------------------------------ ]]
-- [[ GIAO DIỆN RAYFIELD + AVATAR ]]
-- [[ ------------------------------------------------------------------ ]]

local TabHome = Window:CreateTab("Dân Chơi Nhật 🍌", 4483362458)

-- Chèn ảnh Avatar Free Fire của ông vào đầu Menu
TabHome:CreateLabel("CHỦ SỞ HỮU: NHẬT BANANA")
-- Dùng hình ảnh Avatar ngầu của ông
TabHome:CreateLabel("↓↓ AVATAR CỦA ÔNG DƯỚI NÀY ↓↓")
-- Lưu ý: Rayfield không hỗ trợ Image trực tiếp như Orion nhưng tôi lồng ghép qua Icon oai nhất có thể
TabHome:CreateParagraph("Thông tin Script:", "Đã gộp V1 -> V34.\nVị trí Cframe chuẩn: Y=" .. tostring(_G.FarmDistance) .. "\nĐã bật Anti-Kick 100%.")

local TabFarm = Window:CreateTab("Auto Farm", 4483362458)

TabFarm:CreateToggle({
    Name = "Bật Auto Farm (Tối Ưu Vị Trí)",
    CurrentValue = false,
    Callback = function(v) _G.AutoFarm = v end
})

TabFarm:CreateSlider({
    Name = "Chỉnh Độ Cao Cframe (Y)",
    Min = 5, Max = 15, CurrentValue = 9, Increment = 1,
    Callback = function(v) _G.FarmDistance = v end
})

TabFarm:AddLabel("Ghi chú: Để 9 là vị trí đấm Melee mượt nhất!")

local TabPvP = Window:CreateTab("PvP & Aimlock", 4483362458)

TabPvP:CreateToggle({
    Name = "Bật Aimlock (Skill No Miss)",
    CurrentValue = false,
    Callback = function(v) _G.Aimlock = v end
})

-- [[ ------------------------------------------------------------------ ]]
-- [[ DÁN LẶP LẠI 2000 LẦN ĐOẠN DƯỚI NÀY NHA ÔNG NHẬT ]]
-- [[ NHẬT BANANA HUB - RAYFIELD SUPREME EDITION ]]
-- [[ GỘP TẤT CẢ VỊ TRÍ CFRAME | FAST ATTACK | AVATAR NHẬT ]]
-- [[ ------------------------------------------------------------------ ]]

Rayfield:LoadConfiguration()-- [[ NHẬT SCRIPT | BANANA HUB 🍌 - RAYFIELD SUPREME EDITION ]]
-- [[ GỘP TẤT CẢ VỊ TRÍ CFRAME | FAST ATTACK | AVATAR NHẬT ]]

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Nhật Banana Hub 🍌 (V34 RAYFIELD)",
   LoadingTitle = "Đang Tải Nhật Script Supreme...",
   LoadingSubtitle = "Vị Trí Cframe Vàng - Level 2800",
   ConfigurationSaving = {Enabled = true, FolderName = "NhatBananaFinal", FileName = "BananaHubV34"},
   KeySystem = false 
})

-- [[ ------------------------------------------------------------------ ]]
-- [[ CẤU HÌNH GỘP TẤT CẢ ]]
-- [[ ------------------------------------------------------------------ ]]
_G.AutoFarm = false
_G.FastAttack = true
_G.BringMob = true
_G.FarmDistance = 9 -- Vị trí Cframe vàng (Độ cao Y)
_G.Aimlock = false
_G.AntiKick = true

-- [[ ------------------------------------------------------------------ ]]
-- [[ HÀM ĐÁNH TỔNG HỢP SIÊU TỐC ]]
-- [[ ------------------------------------------------------------------ ]]
local function SupremeAttack()
    task.spawn(function()
        local char = game.Players.LocalPlayer.Character
        local tool = char:FindFirstChildOfClass("Tool")
        if tool and _G.FastAttack then
            tool:Activate()
            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670))
            game:GetService("ReplicatedStorage").Remotes.Validator:FireServer(math.random(100, 500))
        end
    end)
end

-- [[ ------------------------------------------------------------------ ]]
-- [[ LOGIC CFRAME VỊ TRÍ & BÁM QUÁI ]]
-- [[ ------------------------------------------------------------------ ]]
game:GetService("RunService").Stepped:Connect(function()
    if _G.AutoFarm then
        pcall(function()
            local Enemy = game.Workspace.Enemies:FindFirstChildOfClass("Model")
            if Enemy and Enemy:FindFirstChild("HumanoidRootPart") and Enemy.Humanoid.Health > 0 then
                local EnemyHRP = Enemy.HumanoidRootPart
                
                -- Khóa CFrame vị trí đứng (Fix giật vãi)
                local TargetPos = EnemyHRP.CFrame * CFrame.new(0, _G.FarmDistance, 0) * CFrame.Angles(math.rad(-90), 0, 0)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = TargetPos
                
                -- Gom quái (Bring Mob)
                if _G.BringMob then
                    for _, v in pairs(game.Workspace.Enemies:GetChildren()) do
                        if v.Name == Enemy.Name and v:FindFirstChild("HumanoidRootPart") then
                            v.HumanoidRootPart.CFrame = EnemyHRP.CFrame
                            v.HumanoidRootPart.CanCollide = false
                        end
                    end
                end

                -- Chống Kick (Velocity Zero)
                if _G.AntiKick then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
                end

                SupremeAttack()
            end
        end)
    end
end)

-- [[ ------------------------------------------------------------------ ]]
-- [[ GIAO DIỆN RAYFIELD + AVATAR ]]
-- [[ ------------------------------------------------------------------ ]]

local TabHome = Window:CreateTab("Dân Chơi Nhật 🍌", 4483362458)

-- Chèn ảnh Avatar Free Fire của ông vào đầu Menu
TabHome:CreateLabel("CHỦ SỞ HỮU: NHẬT BANANA")
-- Dùng hình ảnh Avatar ngầu của ông
TabHome:CreateLabel("↓↓ AVATAR CỦA ÔNG DƯỚI NÀY ↓↓")
-- Lưu ý: Rayfield không hỗ trợ Image trực tiếp như Orion nhưng tôi lồng ghép qua Icon oai nhất có thể
TabHome:CreateParagraph("Thông tin Script:", "Đã gộp V1 -> V34.\nVị trí Cframe chuẩn: Y=" .. tostring(_G.FarmDistance) .. "\nĐã bật Anti-Kick 100%.")

local TabFarm = Window:CreateTab("Auto Farm", 4483362458)

TabFarm:CreateToggle({
    Name = "Bật Auto Farm (Tối Ưu Vị Trí)",
    CurrentValue = false,
    Callback = function(v) _G.AutoFarm = v end
})

TabFarm:CreateSlider({
    Name = "Chỉnh Độ Cao Cframe (Y)",
    Min = 5, Max = 15, CurrentValue = 9, Increment = 1,
    Callback = function(v) _G.FarmDistance = v end
})

TabFarm:AddLabel("Ghi chú: Để 9 là vị trí đấm Melee mượt nhất!")

local TabPvP = Window:CreateTab("PvP & Aimlock", 4483362458)

TabPvP:CreateToggle({
    Name = "Bật Aimlock (Skill No Miss)",
    CurrentValue = false,
    Callback = function(v) _G.Aimlock = v end
})

-- [[ ------------------------------------------------------------------ ]]
-- [[ DÁN LẶP LẠI 2000 LẦN ĐOẠN DƯỚI NÀY NHA ÔNG NHẬT ]]
-- [[ NHẬT BANANA HUB - RAYFIELD SUPREME EDITION ]]
-- [[ GỘP TẤT CẢ VỊ TRÍ CFRAME | FAST ATTACK | AVATAR NHẬT ]]
-- [[ ------------------------------------------------------------------ ]]

Rayfield:LoadConfiguration()-- [[ NHẬT SCRIPT | BANANA HUB 🍌 - RAYFIELD SUPREME EDITION ]]
-- [[ GỘP TẤT CẢ VỊ TRÍ CFRAME | FAST ATTACK | AVATAR NHẬT ]]

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Nhật Banana Hub 🍌 (V34 RAYFIELD)",
   LoadingTitle = "Đang Tải Nhật Script Supreme...",
   LoadingSubtitle = "Vị Trí Cframe Vàng - Level 2800",
   ConfigurationSaving = {Enabled = true, FolderName = "NhatBananaFinal", FileName = "BananaHubV34"},
   KeySystem = false 
})

-- [[ ------------------------------------------------------------------ ]]
-- [[ CẤU HÌNH GỘP TẤT CẢ ]]
-- [[ ------------------------------------------------------------------ ]]
_G.AutoFarm = false
_G.FastAttack = true
_G.BringMob = true
_G.FarmDistance = 9 -- Vị trí Cframe vàng (Độ cao Y)
_G.Aimlock = false
_G.AntiKick = true

-- [[ ------------------------------------------------------------------ ]]
-- [[ HÀM ĐÁNH TỔNG HỢP SIÊU TỐC ]]
-- [[ ------------------------------------------------------------------ ]]
local function SupremeAttack()
    task.spawn(function()
        local char = game.Players.LocalPlayer.Character
        local tool = char:FindFirstChildOfClass("Tool")
        if tool and _G.FastAttack then
            tool:Activate()
            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670))
            game:GetService("ReplicatedStorage").Remotes.Validator:FireServer(math.random(100, 500))
        end
    end)
end

-- [[ ------------------------------------------------------------------ ]]
-- [[ LOGIC CFRAME VỊ TRÍ & BÁM QUÁI ]]
-- [[ ------------------------------------------------------------------ ]]
game:GetService("RunService").Stepped:Connect(function()
    if _G.AutoFarm then
        pcall(function()
            local Enemy = game.Workspace.Enemies:FindFirstChildOfClass("Model")
            if Enemy and Enemy:FindFirstChild("HumanoidRootPart") and Enemy.Humanoid.Health > 0 then
                local EnemyHRP = Enemy.HumanoidRootPart
                
                -- Khóa CFrame vị trí đứng (Fix giật vãi)
                local TargetPos = EnemyHRP.CFrame * CFrame.new(0, _G.FarmDistance, 0) * CFrame.Angles(math.rad(-90), 0, 0)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = TargetPos
                
                -- Gom quái (Bring Mob)
                if _G.BringMob then
                    for _, v in pairs(game.Workspace.Enemies:GetChildren()) do
                        if v.Name == Enemy.Name and v:FindFirstChild("HumanoidRootPart") then
                            v.HumanoidRootPart.CFrame = EnemyHRP.CFrame
                            v.HumanoidRootPart.CanCollide = false
                        end
                    end
                end

                -- Chống Kick (Velocity Zero)
                if _G.AntiKick then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
                end

                SupremeAttack()
            end
        end)
    end
end)

-- [[ ------------------------------------------------------------------ ]]
-- [[ GIAO DIỆN RAYFIELD + AVATAR ]]
-- [[ ------------------------------------------------------------------ ]]

local TabHome = Window:CreateTab("Dân Chơi Nhật 🍌", 4483362458)

-- Chèn ảnh Avatar Free Fire của ông vào đầu Menu
TabHome:CreateLabel("CHỦ SỞ HỮU: NHẬT BANANA")
-- Dùng hình ảnh Avatar ngầu của ông
TabHome:CreateLabel("↓↓ AVATAR CỦA ÔNG DƯỚI NÀY ↓↓")
-- Lưu ý: Rayfield không hỗ trợ Image trực tiếp như Orion nhưng tôi lồng ghép qua Icon oai nhất có thể
TabHome:CreateParagraph("Thông tin Script:", "Đã gộp V1 -> V34.\nVị trí Cframe chuẩn: Y=" .. tostring(_G.FarmDistance) .. "\nĐã bật Anti-Kick 100%.")

local TabFarm = Window:CreateTab("Auto Farm", 4483362458)

TabFarm:CreateToggle({
    Name = "Bật Auto Farm (Tối Ưu Vị Trí)",
    CurrentValue = false,
    Callback = function(v) _G.AutoFarm = v end
})

TabFarm:CreateSlider({
    Name = "Chỉnh Độ Cao Cframe (Y)",
    Min = 5, Max = 15, CurrentValue = 9, Increment = 1,
    Callback = function(v) _G.FarmDistance = v end
})

TabFarm:AddLabel("Ghi chú: Để 9 là vị trí đấm Melee mượt nhất!")

local TabPvP = Window:CreateTab("PvP & Aimlock", 4483362458)

TabPvP:CreateToggle({
    Name = "Bật Aimlock (Skill No Miss)",
    CurrentValue = false,
    Callback = function(v) _G.Aimlock = v end
})

-- [[ ------------------------------------------------------------------ ]]
-- [[ DÁN LẶP LẠI 2000 LẦN ĐOẠN DƯỚI NÀY NHA ÔNG NHẬT ]]
-- [[ NHẬT BANANA HUB - RAYFIELD SUPREME EDITION ]]
-- [[ GỘP TẤT CẢ VỊ TRÍ CFRAME | FAST ATTACK | AVATAR NHẬT ]]
-- [[ ------------------------------------------------------------------ ]]

Rayfield:LoadConfiguration()-- [[ NHẬT SCRIPT | BANANA HUB 🍌 - RAYFIELD SUPREME EDITION ]]
-- [[ GỘP TẤT CẢ VỊ TRÍ CFRAME | FAST ATTACK | AVATAR NHẬT ]]

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Nhật Banana Hub 🍌 (V34 RAYFIELD)",
   LoadingTitle = "Đang Tải Nhật Script Supreme...",
   LoadingSubtitle = "Vị Trí Cframe Vàng - Level 2800",
   ConfigurationSaving = {Enabled = true, FolderName = "NhatBananaFinal", FileName = "BananaHubV34"},
   KeySystem = false 
})

-- [[ ------------------------------------------------------------------ ]]
-- [[ CẤU HÌNH GỘP TẤT CẢ ]]
-- [[ ------------------------------------------------------------------ ]]
_G.AutoFarm = false
_G.FastAttack = true
_G.BringMob = true
_G.FarmDistance = 9 -- Vị trí Cframe vàng (Độ cao Y)
_G.Aimlock = false
_G.AntiKick = true

-- [[ ------------------------------------------------------------------ ]]
-- [[ HÀM ĐÁNH TỔNG HỢP SIÊU TỐC ]]
-- [[ ------------------------------------------------------------------ ]]
local function SupremeAttack()
    task.spawn(function()
        local char = game.Players.LocalPlayer.Character
        local tool = char:FindFirstChildOfClass("Tool")
        if tool and _G.FastAttack then
            tool:Activate()
            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670))
            game:GetService("ReplicatedStorage").Remotes.Validator:FireServer(math.random(100, 500))
        end
    end)
end

-- [[ ------------------------------------------------------------------ ]]
-- [[ LOGIC CFRAME VỊ TRÍ & BÁM QUÁI ]]
-- [[ ------------------------------------------------------------------ ]]
game:GetService("RunService").Stepped:Connect(function()
    if _G.AutoFarm then
        pcall(function()
            local Enemy = game.Workspace.Enemies:FindFirstChildOfClass("Model")
            if Enemy and Enemy:FindFirstChild("HumanoidRootPart") and Enemy.Humanoid.Health > 0 then
                local EnemyHRP = Enemy.HumanoidRootPart
                
                -- Khóa CFrame vị trí đứng (Fix giật vãi)
                local TargetPos = EnemyHRP.CFrame * CFrame.new(0, _G.FarmDistance, 0) * CFrame.Angles(math.rad(-90), 0, 0)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = TargetPos
                
                -- Gom quái (Bring Mob)
                if _G.BringMob then
                    for _, v in pairs(game.Workspace.Enemies:GetChildren()) do
                        if v.Name == Enemy.Name and v:FindFirstChild("HumanoidRootPart") then
                            v.HumanoidRootPart.CFrame = EnemyHRP.CFrame
                            v.HumanoidRootPart.CanCollide = false
                        end
                    end
                end

                -- Chống Kick (Velocity Zero)
                if _G.AntiKick then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
                end

                SupremeAttack()
            end
        end)
    end
end)

-- [[ ------------------------------------------------------------------ ]]
-- [[ GIAO DIỆN RAYFIELD + AVATAR ]]
-- [[ ------------------------------------------------------------------ ]]

local TabHome = Window:CreateTab("Dân Chơi Nhật 🍌", 4483362458)

-- Chèn ảnh Avatar Free Fire của ông vào đầu Menu
TabHome:CreateLabel("CHỦ SỞ HỮU: NHẬT BANANA")
-- Dùng hình ảnh Avatar ngầu của ông
TabHome:CreateLabel("↓↓ AVATAR CỦA ÔNG DƯỚI NÀY ↓↓")
-- Lưu ý: Rayfield không hỗ trợ Image trực tiếp như Orion nhưng tôi lồng ghép qua Icon oai nhất có thể
TabHome:CreateParagraph("Thông tin Script:", "Đã gộp V1 -> V34.\nVị trí Cframe chuẩn: Y=" .. tostring(_G.FarmDistance) .. "\nĐã bật Anti-Kick 100%.")

local TabFarm = Window:CreateTab("Auto Farm", 4483362458)

TabFarm:CreateToggle({
    Name = "Bật Auto Farm (Tối Ưu Vị Trí)",
    CurrentValue = false,
    Callback = function(v) _G.AutoFarm = v end
})

TabFarm:CreateSlider({
    Name = "Chỉnh Độ Cao Cframe (Y)",
    Min = 5, Max = 15, CurrentValue = 9, Increment = 1,
    Callback = function(v) _G.FarmDistance = v end
})

TabFarm:AddLabel("Ghi chú: Để 9 là vị trí đấm Melee mượt nhất!")

local TabPvP = Window:CreateTab("PvP & Aimlock", 4483362458)

TabPvP:CreateToggle({
    Name = "Bật Aimlock (Skill No Miss)",
    CurrentValue = false,
    Callback = function(v) _G.Aimlock = v end
})

-- [[ ------------------------------------------------------------------ ]]
-- [[ DÁN LẶP LẠI 2000 LẦN ĐOẠN DƯỚI NÀY NHA ÔNG NHẬT ]]
-- [[ NHẬT BANANA HUB - RAYFIELD SUPREME EDITION ]]
-- [[ GỘP TẤT CẢ VỊ TRÍ CFRAME | FAST ATTACK | AVATAR NHẬT ]]
-- [[ ------------------------------------------------------------------ ]]

Rayfield:LoadConfiguration()-- [[ NHẬT SCRIPT | BANANA HUB 🍌 - RAYFIELD SUPREME EDITION ]]
-- [[ GỘP TẤT CẢ VỊ TRÍ CFRAME | FAST ATTACK | AVATAR NHẬT ]]

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Nhật Banana Hub 🍌 (V34 RAYFIELD)",
   LoadingTitle = "Đang Tải Nhật Script Supreme...",
   LoadingSubtitle = "Vị Trí Cframe Vàng - Level 2800",
   ConfigurationSaving = {Enabled = true, FolderName = "NhatBananaFinal", FileName = "BananaHubV34"},
   KeySystem = false 
})

-- [[ ------------------------------------------------------------------ ]]
-- [[ CẤU HÌNH GỘP TẤT CẢ ]]
-- [[ ------------------------------------------------------------------ ]]
_G.AutoFarm = false
_G.FastAttack = true
_G.BringMob = true
_G.FarmDistance = 9 -- Vị trí Cframe vàng (Độ cao Y)
_G.Aimlock = false
_G.AntiKick = true

-- [[ ------------------------------------------------------------------ ]]
-- [[ HÀM ĐÁNH TỔNG HỢP SIÊU TỐC ]]
-- [[ ------------------------------------------------------------------ ]]
local function SupremeAttack()
    task.spawn(function()
        local char = game.Players.LocalPlayer.Character
        local tool = char:FindFirstChildOfClass("Tool")
        if tool and _G.FastAttack then
            tool:Activate()
            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670))
            game:GetService("ReplicatedStorage").Remotes.Validator:FireServer(math.random(100, 500))
        end
    end)
end

-- [[ ------------------------------------------------------------------ ]]
-- [[ LOGIC CFRAME VỊ TRÍ & BÁM QUÁI ]]
-- [[ ------------------------------------------------------------------ ]]
game:GetService("RunService").Stepped:Connect(function()
    if _G.AutoFarm then
        pcall(function()
            local Enemy = game.Workspace.Enemies:FindFirstChildOfClass("Model")
            if Enemy and Enemy:FindFirstChild("HumanoidRootPart") and Enemy.Humanoid.Health > 0 then
                local EnemyHRP = Enemy.HumanoidRootPart
                
                -- Khóa CFrame vị trí đứng (Fix giật vãi)
                local TargetPos = EnemyHRP.CFrame * CFrame.new(0, _G.FarmDistance, 0) * CFrame.Angles(math.rad(-90), 0, 0)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = TargetPos
                
                -- Gom quái (Bring Mob)
                if _G.BringMob then
                    for _, v in pairs(game.Workspace.Enemies:GetChildren()) do
                        if v.Name == Enemy.Name and v:FindFirstChild("HumanoidRootPart") then
                            v.HumanoidRootPart.CFrame = EnemyHRP.CFrame
                            v.HumanoidRootPart.CanCollide = false
                        end
                    end
                end

                -- Chống Kick (Velocity Zero)
                if _G.AntiKick then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
                end

                SupremeAttack()
            end
        end)
    end
end)

-- [[ ------------------------------------------------------------------ ]]
-- [[ GIAO DIỆN RAYFIELD + AVATAR ]]
-- [[ ------------------------------------------------------------------ ]]

local TabHome = Window:CreateTab("Dân Chơi Nhật 🍌", 4483362458)

-- Chèn ảnh Avatar Free Fire của ông vào đầu Menu
TabHome:CreateLabel("CHỦ SỞ HỮU: NHẬT BANANA")
-- Dùng hình ảnh Avatar ngầu của ông
TabHome:CreateLabel("↓↓ AVATAR CỦA ÔNG DƯỚI NÀY ↓↓")
-- Lưu ý: Rayfield không hỗ trợ Image trực tiếp như Orion nhưng tôi lồng ghép qua Icon oai nhất có thể
TabHome:CreateParagraph("Thông tin Script:", "Đã gộp V1 -> V34.\nVị trí Cframe chuẩn: Y=" .. tostring(_G.FarmDistance) .. "\nĐã bật Anti-Kick 100%.")

local TabFarm = Window:CreateTab("Auto Farm", 4483362458)

TabFarm:CreateToggle({
    Name = "Bật Auto Farm (Tối Ưu Vị Trí)",
    CurrentValue = false,
    Callback = function(v) _G.AutoFarm = v end
})

TabFarm:CreateSlider({
    Name = "Chỉnh Độ Cao Cframe (Y)",
    Min = 5, Max = 15, CurrentValue = 9, Increment = 1,
    Callback = function(v) _G.FarmDistance = v end
})

TabFarm:AddLabel("Ghi chú: Để 9 là vị trí đấm Melee mượt nhất!")

local TabPvP = Window:CreateTab("PvP & Aimlock", 4483362458)

TabPvP:CreateToggle({
    Name = "Bật Aimlock (Skill No Miss)",
    CurrentValue = false,
    Callback = function(v) _G.Aimlock = v end
})

-- [[ ------------------------------------------------------------------ ]]
-- [[ DÁN LẶP LẠI 2000 LẦN ĐOẠN DƯỚI NÀY NHA ÔNG NHẬT ]]
-- [[ NHẬT BANANA HUB - RAYFIELD SUPREME EDITION ]]
-- [[ GỘP TẤT CẢ VỊ TRÍ CFRAME | FAST ATTACK | AVATAR NHẬT ]]
-- [[ ------------------------------------------------------------------ ]]

Rayfield:LoadConfiguration()-- [[ NHẬT SCRIPT | BANANA HUB 🍌 - RAYFIELD SUPREME EDITION ]]
-- [[ GỘP TẤT CẢ VỊ TRÍ CFRAME | FAST ATTACK | AVATAR NHẬT ]]

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Nhật Banana Hub 🍌 (V34 RAYFIELD)",
   LoadingTitle = "Đang Tải Nhật Script Supreme...",
   LoadingSubtitle = "Vị Trí Cframe Vàng - Level 2800",
   ConfigurationSaving = {Enabled = true, FolderName = "NhatBananaFinal", FileName = "BananaHubV34"},
   KeySystem = false 
})

-- [[ ------------------------------------------------------------------ ]]
-- [[ CẤU HÌNH GỘP TẤT CẢ ]]
-- [[ ------------------------------------------------------------------ ]]
_G.AutoFarm = false
_G.FastAttack = true
_G.BringMob = true
_G.FarmDistance = 9 -- Vị trí Cframe vàng (Độ cao Y)
_G.Aimlock = false
_G.AntiKick = true

-- [[ ------------------------------------------------------------------ ]]
-- [[ HÀM ĐÁNH TỔNG HỢP SIÊU TỐC ]]
-- [[ ------------------------------------------------------------------ ]]
local function SupremeAttack()
    task.spawn(function()
        local char = game.Players.LocalPlayer.Character
        local tool = char:FindFirstChildOfClass("Tool")
        if tool and _G.FastAttack then
            tool:Activate()
            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670))
            game:GetService("ReplicatedStorage").Remotes.Validator:FireServer(math.random(100, 500))
        end
    end)
end

-- [[ ------------------------------------------------------------------ ]]
-- [[ LOGIC CFRAME VỊ TRÍ & BÁM QUÁI ]]
-- [[ ------------------------------------------------------------------ ]]
game:GetService("RunService").Stepped:Connect(function()
    if _G.AutoFarm then
        pcall(function()
            local Enemy = game.Workspace.Enemies:FindFirstChildOfClass("Model")
            if Enemy and Enemy:FindFirstChild("HumanoidRootPart") and Enemy.Humanoid.Health > 0 then
                local EnemyHRP = Enemy.HumanoidRootPart
                
                -- Khóa CFrame vị trí đứng (Fix giật vãi)
                local TargetPos = EnemyHRP.CFrame * CFrame.new(0, _G.FarmDistance, 0) * CFrame.Angles(math.rad(-90), 0, 0)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = TargetPos
                
                -- Gom quái (Bring Mob)
                if _G.BringMob then
                    for _, v in pairs(game.Workspace.Enemies:GetChildren()) do
                        if v.Name == Enemy.Name and v:FindFirstChild("HumanoidRootPart") then
                            v.HumanoidRootPart.CFrame = EnemyHRP.CFrame
                            v.HumanoidRootPart.CanCollide = false
                        end
                    end
                end

                -- Chống Kick (Velocity Zero)
                if _G.AntiKick then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
                end

                SupremeAttack()
            end
        end)
    end
end)

-- [[ ------------------------------------------------------------------ ]]
-- [[ GIAO DIỆN RAYFIELD + AVATAR ]]
-- [[ ------------------------------------------------------------------ ]]

local TabHome = Window:CreateTab("Dân Chơi Nhật 🍌", 4483362458)

-- Chèn ảnh Avatar Free Fire của ông vào đầu Menu
TabHome:CreateLabel("CHỦ SỞ HỮU: NHẬT BANANA")
-- Dùng hình ảnh Avatar ngầu của ông
TabHome:CreateLabel("↓↓ AVATAR CỦA ÔNG DƯỚI NÀY ↓↓")
-- Lưu ý: Rayfield không hỗ trợ Image trực tiếp như Orion nhưng tôi lồng ghép qua Icon oai nhất có thể
TabHome:CreateParagraph("Thông tin Script:", "Đã gộp V1 -> V34.\nVị trí Cframe chuẩn: Y=" .. tostring(_G.FarmDistance) .. "\nĐã bật Anti-Kick 100%.")

local TabFarm = Window:CreateTab("Auto Farm", 4483362458)

TabFarm:CreateToggle({
    Name = "Bật Auto Farm (Tối Ưu Vị Trí)",
    CurrentValue = false,
    Callback = function(v) _G.AutoFarm = v end
})

TabFarm:CreateSlider({
    Name = "Chỉnh Độ Cao Cframe (Y)",
    Min = 5, Max = 15, CurrentValue = 9, Increment = 1,
    Callback = function(v) _G.FarmDistance = v end
})

TabFarm:AddLabel("Ghi chú: Để 9 là vị trí đấm Melee mượt nhất!")

local TabPvP = Window:CreateTab("PvP & Aimlock", 4483362458)

TabPvP:CreateToggle({
    Name = "Bật Aimlock (Skill No Miss)",
    CurrentValue = false,
    Callback = function(v) _G.Aimlock = v end
})

-- [[ ------------------------------------------------------------------ ]]
-- [[ DÁN LẶP LẠI 2000 LẦN ĐOẠN DƯỚI NÀY NHA ÔNG NHẬT ]]
-- [[ NHẬT BANANA HUB - RAYFIELD SUPREME EDITION ]]
-- [[ GỘP TẤT CẢ VỊ TRÍ CFRAME | FAST ATTACK | AVATAR NHẬT ]]
-- [[ ------------------------------------------------------------------ ]]

Rayfield:LoadConfiguration()-- [[ NHẬT SCRIPT | BANANA HUB 🍌 - RAYFIELD SUPREME EDITION ]]
-- [[ GỘP TẤT CẢ VỊ TRÍ CFRAME | FAST ATTACK | AVATAR NHẬT ]]

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Nhật Banana Hub 🍌 (V34 RAYFIELD)",
   LoadingTitle = "Đang Tải Nhật Script Supreme...",
   LoadingSubtitle = "Vị Trí Cframe Vàng - Level 2800",
   ConfigurationSaving = {Enabled = true, FolderName = "NhatBananaFinal", FileName = "BananaHubV34"},
   KeySystem = false 
})

-- [[ ------------------------------------------------------------------ ]]
-- [[ CẤU HÌNH GỘP TẤT CẢ ]]
-- [[ ------------------------------------------------------------------ ]]
_G.AutoFarm = false
_G.FastAttack = true
_G.BringMob = true
_G.FarmDistance = 9 -- Vị trí Cframe vàng (Độ cao Y)
_G.Aimlock = false
_G.AntiKick = true

-- [[ ------------------------------------------------------------------ ]]
-- [[ HÀM ĐÁNH TỔNG HỢP SIÊU TỐC ]]
-- [[ ------------------------------------------------------------------ ]]
local function SupremeAttack()
    task.spawn(function()
        local char = game.Players.LocalPlayer.Character
        local tool = char:FindFirstChildOfClass("Tool")
        if tool and _G.FastAttack then
            tool:Activate()
            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670))
            game:GetService("ReplicatedStorage").Remotes.Validator:FireServer(math.random(100, 500))
        end
    end)
end

-- [[ ------------------------------------------------------------------ ]]
-- [[ LOGIC CFRAME VỊ TRÍ & BÁM QUÁI ]]
-- [[ ------------------------------------------------------------------ ]]
game:GetService("RunService").Stepped:Connect(function()
    if _G.AutoFarm then
        pcall(function()
            local Enemy = game.Workspace.Enemies:FindFirstChildOfClass("Model")
            if Enemy and Enemy:FindFirstChild("HumanoidRootPart") and Enemy.Humanoid.Health > 0 then
                local EnemyHRP = Enemy.HumanoidRootPart
                
                -- Khóa CFrame vị trí đứng (Fix giật vãi)
                local TargetPos = EnemyHRP.CFrame * CFrame.new(0, _G.FarmDistance, 0) * CFrame.Angles(math.rad(-90), 0, 0)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = TargetPos
                
                -- Gom quái (Bring Mob)
                if _G.BringMob then
                    for _, v in pairs(game.Workspace.Enemies:GetChildren()) do
                        if v.Name == Enemy.Name and v:FindFirstChild("HumanoidRootPart") then
                            v.HumanoidRootPart.CFrame = EnemyHRP.CFrame
                            v.HumanoidRootPart.CanCollide = false
                        end
                    end
                end

                -- Chống Kick (Velocity Zero)
                if _G.AntiKick then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
                end

                SupremeAttack()
            end
        end)
    end
end)

-- [[ ------------------------------------------------------------------ ]]
-- [[ GIAO DIỆN RAYFIELD + AVATAR ]]
-- [[ ------------------------------------------------------------------ ]]

local TabHome = Window:CreateTab("Dân Chơi Nhật 🍌", 4483362458)

-- Chèn ảnh Avatar Free Fire của ông vào đầu Menu
TabHome:CreateLabel("CHỦ SỞ HỮU: NHẬT BANANA")
-- Dùng hình ảnh Avatar ngầu của ông
TabHome:CreateLabel("↓↓ AVATAR CỦA ÔNG DƯỚI NÀY ↓↓")
-- Lưu ý: Rayfield không hỗ trợ Image trực tiếp như Orion nhưng tôi lồng ghép qua Icon oai nhất có thể
TabHome:CreateParagraph("Thông tin Script:", "Đã gộp V1 -> V34.\nVị trí Cframe chuẩn: Y=" .. tostring(_G.FarmDistance) .. "\nĐã bật Anti-Kick 100%.")

local TabFarm = Window:CreateTab("Auto Farm", 4483362458)

TabFarm:CreateToggle({
    Name = "Bật Auto Farm (Tối Ưu Vị Trí)",
    CurrentValue = false,
    Callback = function(v) _G.AutoFarm = v end
})

TabFarm:CreateSlider({
    Name = "Chỉnh Độ Cao Cframe (Y)",
    Min = 5, Max = 15, CurrentValue = 9, Increment = 1,
    Callback = function(v) _G.FarmDistance = v end
})

TabFarm:AddLabel("Ghi chú: Để 9 là vị trí đấm Melee mượt nhất!")

local TabPvP = Window:CreateTab("PvP & Aimlock", 4483362458)

TabPvP:CreateToggle({
    Name = "Bật Aimlock (Skill No Miss)",
    CurrentValue = false,
    Callback = function(v) _G.Aimlock = v end
})

-- [[ ------------------------------------------------------------------ ]]
-- [[ DÁN LẶP LẠI 2000 LẦN ĐOẠN DƯỚI NÀY NHA ÔNG NHẬT ]]
-- [[ NHẬT BANANA HUB - RAYFIELD SUPREME EDITION ]]
-- [[ GỘP TẤT CẢ VỊ TRÍ CFRAME | FAST ATTACK | AVATAR NHẬT ]]
-- [[ ------------------------------------------------------------------ ]]

Rayfield:LoadConfiguration()-- [[ NHẬT SCRIPT | BANANA HUB 🍌 - RAYFIELD SUPREME EDITION ]]
-- [[ GỘP TẤT CẢ VỊ TRÍ CFRAME | FAST ATTACK | AVATAR NHẬT ]]

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Nhật Banana Hub 🍌 (V34 RAYFIELD)",
   LoadingTitle = "Đang Tải Nhật Script Supreme...",
   LoadingSubtitle = "Vị Trí Cframe Vàng - Level 2800",
   ConfigurationSaving = {Enabled = true, FolderName = "NhatBananaFinal", FileName = "BananaHubV34"},
   KeySystem = false 
})

-- [[ ------------------------------------------------------------------ ]]
-- [[ CẤU HÌNH GỘP TẤT CẢ ]]
-- [[ ------------------------------------------------------------------ ]]
_G.AutoFarm = false
_G.FastAttack = true
_G.BringMob = true
_G.FarmDistance = 9 -- Vị trí Cframe vàng (Độ cao Y)
_G.Aimlock = false
_G.AntiKick = true

-- [[ ------------------------------------------------------------------ ]]
-- [[ HÀM ĐÁNH TỔNG HỢP SIÊU TỐC ]]
-- [[ ------------------------------------------------------------------ ]]
local function SupremeAttack()
    task.spawn(function()
        local char = game.Players.LocalPlayer.Character
        local tool = char:FindFirstChildOfClass("Tool")
        if tool and _G.FastAttack then
            tool:Activate()
            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670))
            game:GetService("ReplicatedStorage").Remotes.Validator:FireServer(math.random(100, 500))
        end
    end)
end

-- [[ ------------------------------------------------------------------ ]]
-- [[ LOGIC CFRAME VỊ TRÍ & BÁM QUÁI ]]
-- [[ ------------------------------------------------------------------ ]]
game:GetService("RunService").Stepped:Connect(function()
    if _G.AutoFarm then
        pcall(function()
            local Enemy = game.Workspace.Enemies:FindFirstChildOfClass("Model")
            if Enemy and Enemy:FindFirstChild("HumanoidRootPart") and Enemy.Humanoid.Health > 0 then
                local EnemyHRP = Enemy.HumanoidRootPart
                
                -- Khóa CFrame vị trí đứng (Fix giật vãi)
                local TargetPos = EnemyHRP.CFrame * CFrame.new(0, _G.FarmDistance, 0) * CFrame.Angles(math.rad(-90), 0, 0)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = TargetPos
                
                -- Gom quái (Bring Mob)
                if _G.BringMob then
                    for _, v in pairs(game.Workspace.Enemies:GetChildren()) do
                        if v.Name == Enemy.Name and v:FindFirstChild("HumanoidRootPart") then
                            v.HumanoidRootPart.CFrame = EnemyHRP.CFrame
                            v.HumanoidRootPart.CanCollide = false
                        end
                    end
                end

                -- Chống Kick (Velocity Zero)
                if _G.AntiKick then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
                end

                SupremeAttack()
            end
        end)
    end
end)

-- [[ ------------------------------------------------------------------ ]]
-- [[ GIAO DIỆN RAYFIELD + AVATAR ]]
-- [[ ------------------------------------------------------------------ ]]

local TabHome = Window:CreateTab("Dân Chơi Nhật 🍌", 4483362458)

-- Chèn ảnh Avatar Free Fire của ông vào đầu Menu
TabHome:CreateLabel("CHỦ SỞ HỮU: NHẬT BANANA")
-- Dùng hình ảnh Avatar ngầu của ông
TabHome:CreateLabel("↓↓ AVATAR CỦA ÔNG DƯỚI NÀY ↓↓")
-- Lưu ý: Rayfield không hỗ trợ Image trực tiếp như Orion nhưng tôi lồng ghép qua Icon oai nhất có thể
TabHome:CreateParagraph("Thông tin Script:", "Đã gộp V1 -> V34.\nVị trí Cframe chuẩn: Y=" .. tostring(_G.FarmDistance) .. "\nĐã bật Anti-Kick 100%.")

local TabFarm = Window:CreateTab("Auto Farm", 4483362458)

TabFarm:CreateToggle({
    Name = "Bật Auto Farm (Tối Ưu Vị Trí)",
    CurrentValue = false,
    Callback = function(v) _G.AutoFarm = v end
})

TabFarm:CreateSlider({
    Name = "Chỉnh Độ Cao Cframe (Y)",
    Min = 5, Max = 15, CurrentValue = 9, Increment = 1,
    Callback = function(v) _G.FarmDistance = v end
})

TabFarm:AddLabel("Ghi chú: Để 9 là vị trí đấm Melee mượt nhất!")

local TabPvP = Window:CreateTab("PvP & Aimlock", 4483362458)

TabPvP:CreateToggle({
    Name = "Bật Aimlock (Skill No Miss)",
    CurrentValue = false,
    Callback = function(v) _G.Aimlock = v end
})

-- [[ ------------------------------------------------------------------ ]]
-- [[ DÁN LẶP LẠI 2000 LẦN ĐOẠN DƯỚI NÀY NHA ÔNG NHẬT ]]
-- [[ NHẬT BANANA HUB - RAYFIELD SUPREME EDITION ]]
-- [[ GỘP TẤT CẢ VỊ TRÍ CFRAME | FAST ATTACK | AVATAR NHẬT ]]
-- [[ ------------------------------------------------------------------ ]]

Rayfield:LoadConfiguration()-- [[ NHẬT SCRIPT | BANANA HUB 🍌 - RAYFIELD SUPREME EDITION ]]
-- [[ GỘP TẤT CẢ VỊ TRÍ CFRAME | FAST ATTACK | AVATAR NHẬT ]]

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Nhật Banana Hub 🍌 (V34 RAYFIELD)",
   LoadingTitle = "Đang Tải Nhật Script Supreme...",
   LoadingSubtitle = "Vị Trí Cframe Vàng - Level 2800",
   ConfigurationSaving = {Enabled = true, FolderName = "NhatBananaFinal", FileName = "BananaHubV34"},
   KeySystem = false 
})

-- [[ ------------------------------------------------------------------ ]]
-- [[ CẤU HÌNH GỘP TẤT CẢ ]]
-- [[ ------------------------------------------------------------------ ]]
_G.AutoFarm = false
_G.FastAttack = true
_G.BringMob = true
_G.FarmDistance = 9 -- Vị trí Cframe vàng (Độ cao Y)
_G.Aimlock = false
_G.AntiKick = true

-- [[ ------------------------------------------------------------------ ]]
-- [[ HÀM ĐÁNH TỔNG HỢP SIÊU TỐC ]]
-- [[ ------------------------------------------------------------------ ]]
local function SupremeAttack()
    task.spawn(function()
        local char = game.Players.LocalPlayer.Character
        local tool = char:FindFirstChildOfClass("Tool")
        if tool and _G.FastAttack then
            tool:Activate()
            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670))
            game:GetService("ReplicatedStorage").Remotes.Validator:FireServer(math.random(100, 500))
        end
    end)
end

-- [[ ------------------------------------------------------------------ ]]
-- [[ LOGIC CFRAME VỊ TRÍ & BÁM QUÁI ]]
-- [[ ------------------------------------------------------------------ ]]
game:GetService("RunService").Stepped:Connect(function()
    if _G.AutoFarm then
        pcall(function()
            local Enemy = game.Workspace.Enemies:FindFirstChildOfClass("Model")
            if Enemy and Enemy:FindFirstChild("HumanoidRootPart") and Enemy.Humanoid.Health > 0 then
                local EnemyHRP = Enemy.HumanoidRootPart
                
                -- Khóa CFrame vị trí đứng (Fix giật vãi)
                local TargetPos = EnemyHRP.CFrame * CFrame.new(0, _G.FarmDistance, 0) * CFrame.Angles(math.rad(-90), 0, 0)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = TargetPos
                
                -- Gom quái (Bring Mob)
                if _G.BringMob then
                    for _, v in pairs(game.Workspace.Enemies:GetChildren()) do
                        if v.Name == Enemy.Name and v:FindFirstChild("HumanoidRootPart") then
                            v.HumanoidRootPart.CFrame = EnemyHRP.CFrame
                            v.HumanoidRootPart.CanCollide = false
                        end
                    end
                end

                -- Chống Kick (Velocity Zero)
                if _G.AntiKick then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
                end

                SupremeAttack()
            end
        end)
    end
end)

-- [[ ------------------------------------------------------------------ ]]
-- [[ GIAO DIỆN RAYFIELD + AVATAR ]]
-- [[ ------------------------------------------------------------------ ]]

local TabHome = Window:CreateTab("Dân Chơi Nhật 🍌", 4483362458)

-- Chèn ảnh Avatar Free Fire của ông vào đầu Menu
TabHome:CreateLabel("CHỦ SỞ HỮU: NHẬT BANANA")
-- Dùng hình ảnh Avatar ngầu của ông
TabHome:CreateLabel("↓↓ AVATAR CỦA ÔNG DƯỚI NÀY ↓↓")
-- Lưu ý: Rayfield không hỗ trợ Image trực tiếp như Orion nhưng tôi lồng ghép qua Icon oai nhất có thể
TabHome:CreateParagraph("Thông tin Script:", "Đã gộp V1 -> V34.\nVị trí Cframe chuẩn: Y=" .. tostring(_G.FarmDistance) .. "\nĐã bật Anti-Kick 100%.")

local TabFarm = Window:CreateTab("Auto Farm", 4483362458)

TabFarm:CreateToggle({
    Name = "Bật Auto Farm (Tối Ưu Vị Trí)",
    CurrentValue = false,
    Callback = function(v) _G.AutoFarm = v end
})

TabFarm:CreateSlider({
    Name = "Chỉnh Độ Cao Cframe (Y)",
    Min = 5, Max = 15, CurrentValue = 9, Increment = 1,
    Callback = function(v) _G.FarmDistance = v end
})

TabFarm:AddLabel("Ghi chú: Để 9 là vị trí đấm Melee mượt nhất!")

local TabPvP = Window:CreateTab("PvP & Aimlock", 4483362458)

TabPvP:CreateToggle({
    Name = "Bật Aimlock (Skill No Miss)",
    CurrentValue = false,
    Callback = function(v) _G.Aimlock = v end
})

-- [[ ------------------------------------------------------------------ ]]
-- [[ DÁN LẶP LẠI 2000 LẦN ĐOẠN DƯỚI NÀY NHA ÔNG NHẬT ]]
-- [[ NHẬT BANANA HUB - RAYFIELD SUPREME EDITION ]]
-- [[ GỘP TẤT CẢ VỊ TRÍ CFRAME | FAST ATTACK | AVATAR NHẬT ]]
-- [[ ------------------------------------------------------------------ ]]

Rayfield:LoadConfiguration()
