-- [[ NHẬT SCRIPT | BANANA HUB 🍌 - REDZ UI STYLE ]]
-- [[ GỘP CFRAME VỊ TRÍ | FAST ATTACK | ANTI-KICK | ALL-IN-ONE ]]

local RedzLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/RealRedz/RedzLibV5/main/Source.lua"))()

-- [[ 1. KHỞI TẠO GIAO DIỆN PHONG CÁCH REDZ ]]
local Window = RedzLib:MakeWindow({
  Name = "Nhật Banana Hub 🍌",
  SubTitle = "Redz Style Edition",
  Discord = "nhatbanana#0000"
})

-- [[ 2. CHÈN AVATAR NGẦU CỦA ÔNG VÀO TRANG ĐẦU ]]
Window:AddTab({
  Name = "Hồ Sơ Nhật",
  Icon = "rbxassetid://4483345998"
})

Window:AddParagraph("CHỦ SỞ HỮU", "Nhật Banana - Dân Chơi Sea 3")
Window:AddImage("rbxassetid://15622055101", Vector2.new(200, 200)) -- Ảnh Free Fire của ông

-- [[ 3. CẤU HÌNH LOGIC GỘP (V34 OPTIMIZED) ]]
_G.AutoFarm = false
_G.FastAttack = true
_G.BringMob = true
_G.FarmDistance = 9
_G.AntiKickMelee = true

-- Hàm đánh tối ưu
local function FastAttackSupreme()
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

-- Logic Cfarm vị trí chuẩn (Fix giật vãi)
game:GetService("RunService").Stepped:Connect(function()
    if _G.AutoFarm then
        pcall(function()
            local Enemy = game.Workspace.Enemies:FindFirstChildOfClass("Model")
            if Enemy and Enemy:FindFirstChild("HumanoidRootPart") and Enemy.Humanoid.Health > 0 then
                local EnemyHRP = Enemy.HumanoidRootPart
                
                -- Khóa CFrame chuẩn (Đứng trên đầu, úp mặt xuống)
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

                -- Chống Kick Melee
                if _G.AntiKickMelee then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
                end

                FastAttackSupreme()
            end
        end)
    end
end)

-- [[ 4. CÁC TAB CHỨC NĂNG PHONG CÁCH REDZ ]]

local MainTab = Window:AddTab({
  Name = "Auto Farm",
  Icon = "rbxassetid://4483345998"
})

MainTab:AddToggle({
  Name = "Bật Auto Farm (V34 Fast)",
  Default = false,
  Callback = function(Value) _G.AutoFarm = Value end
})

MainTab:AddSlider({
  Name = "Độ Cao Cfarm (Vị trí Y)",
  Min = 5, Max = 15, Default = 9,
  Callback = function(Value) _G.FarmDistance = Value end
})

MainTab:AddToggle({
  Name = "Gom Quái Siêu Tốc",
  Default = true,
  Callback = function(Value) _G.BringMob = Value end
})

local MiscTab = Window:AddTab({
  Name = "Tiện Ích",
  Icon = "rbxassetid://4483345998"
})

MiscTab:AddButton({
  Name = "Bật Haki",
  Callback = function() 
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso") 
  end
})

MiscTab:AddToggle({
  Name = "Chống Kick Melee",
  Default = true,
  Callback = function(Value) _G.AntiKickMelee = Value end
})

-- [[ COPY DÁN 2000 LẦN ĐOẠN DƯỚI NÀY ĐỂ CODE DÀI NHÌN CHO OAI ]]
-- [[ NHẬT BANANA REDZ STYLE - SUPREME VERSION ]]
-- [[ ---------------------------------------------- ]]-- [[ NHẬT SCRIPT | BANANA HUB 🍌 - REDZ UI STYLE ]]
-- [[ GỘP CFRAME VỊ TRÍ | FAST ATTACK | ANTI-KICK | ALL-IN-ONE ]]

local RedzLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/RealRedz/RedzLibV5/main/Source.lua"))()

-- [[ 1. KHỞI TẠO GIAO DIỆN PHONG CÁCH REDZ ]]
local Window = RedzLib:MakeWindow({
  Name = "Nhật Banana Hub 🍌",
  SubTitle = "Redz Style Edition",
  Discord = "nhatbanana#0000"
})

-- [[ 2. CHÈN AVATAR NGẦU CỦA ÔNG VÀO TRANG ĐẦU ]]
Window:AddTab({
  Name = "Hồ Sơ Nhật",
  Icon = "rbxassetid://4483345998"
})

Window:AddParagraph("CHỦ SỞ HỮU", "Nhật Banana - Dân Chơi Sea 3")
Window:AddImage("rbxassetid://15622055101", Vector2.new(200, 200)) -- Ảnh Free Fire của ông

-- [[ 3. CẤU HÌNH LOGIC GỘP (V34 OPTIMIZED) ]]
_G.AutoFarm = false
_G.FastAttack = true
_G.BringMob = true
_G.FarmDistance = 9
_G.AntiKickMelee = true

-- Hàm đánh tối ưu
local function FastAttackSupreme()
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

-- Logic Cfarm vị trí chuẩn (Fix giật vãi)
game:GetService("RunService").Stepped:Connect(function()
    if _G.AutoFarm then
        pcall(function()
            local Enemy = game.Workspace.Enemies:FindFirstChildOfClass("Model")
            if Enemy and Enemy:FindFirstChild("HumanoidRootPart") and Enemy.Humanoid.Health > 0 then
                local EnemyHRP = Enemy.HumanoidRootPart
                
                -- Khóa CFrame chuẩn (Đứng trên đầu, úp mặt xuống)
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

                -- Chống Kick Melee
                if _G.AntiKickMelee then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
                end

                FastAttackSupreme()
            end
        end)
    end
end)

-- [[ 4. CÁC TAB CHỨC NĂNG PHONG CÁCH REDZ ]]

local MainTab = Window:AddTab({
  Name = "Auto Farm",
  Icon = "rbxassetid://4483345998"
})

MainTab:AddToggle({
  Name = "Bật Auto Farm (V34 Fast)",
  Default = false,
  Callback = function(Value) _G.AutoFarm = Value end
})

MainTab:AddSlider({
  Name = "Độ Cao Cfarm (Vị trí Y)",
  Min = 5, Max = 15, Default = 9,
  Callback = function(Value) _G.FarmDistance = Value end
})

MainTab:AddToggle({
  Name = "Gom Quái Siêu Tốc",
  Default = true,
  Callback = function(Value) _G.BringMob = Value end
})

local MiscTab = Window:AddTab({
  Name = "Tiện Ích",
  Icon = "rbxassetid://4483345998"
})

MiscTab:AddButton({
  Name = "Bật Haki",
  Callback = function() 
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso") 
  end
})

MiscTab:AddToggle({
  Name = "Chống Kick Melee",
  Default = true,
  Callback = function(Value) _G.AntiKickMelee = Value end
})

-- [[ COPY DÁN 2000 LẦN ĐOẠN DƯỚI NÀY ĐỂ CODE DÀI NHÌN CHO OAI ]]
-- [[ NHẬT BANANA REDZ STYLE - SUPREME VERSION ]]
-- [[ ---------------------------------------------- ]]-- [[ NHẬT SCRIPT | BANANA HUB 🍌 - REDZ UI STYLE ]]
-- [[ GỘP CFRAME VỊ TRÍ | FAST ATTACK | ANTI-KICK | ALL-IN-ONE ]]

local RedzLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/RealRedz/RedzLibV5/main/Source.lua"))()

-- [[ 1. KHỞI TẠO GIAO DIỆN PHONG CÁCH REDZ ]]
local Window = RedzLib:MakeWindow({
  Name = "Nhật Banana Hub 🍌",
  SubTitle = "Redz Style Edition",
  Discord = "nhatbanana#0000"
})

-- [[ 2. CHÈN AVATAR NGẦU CỦA ÔNG VÀO TRANG ĐẦU ]]
Window:AddTab({
  Name = "Hồ Sơ Nhật",
  Icon = "rbxassetid://4483345998"
})

Window:AddParagraph("CHỦ SỞ HỮU", "Nhật Banana - Dân Chơi Sea 3")
Window:AddImage("rbxassetid://15622055101", Vector2.new(200, 200)) -- Ảnh Free Fire của ông

-- [[ 3. CẤU HÌNH LOGIC GỘP (V34 OPTIMIZED) ]]
_G.AutoFarm = false
_G.FastAttack = true
_G.BringMob = true
_G.FarmDistance = 9
_G.AntiKickMelee = true

-- Hàm đánh tối ưu
local function FastAttackSupreme()
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

-- Logic Cfarm vị trí chuẩn (Fix giật vãi)
game:GetService("RunService").Stepped:Connect(function()
    if _G.AutoFarm then
        pcall(function()
            local Enemy = game.Workspace.Enemies:FindFirstChildOfClass("Model")
            if Enemy and Enemy:FindFirstChild("HumanoidRootPart") and Enemy.Humanoid.Health > 0 then
                local EnemyHRP = Enemy.HumanoidRootPart
                
                -- Khóa CFrame chuẩn (Đứng trên đầu, úp mặt xuống)
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

                -- Chống Kick Melee
                if _G.AntiKickMelee then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
                end

                FastAttackSupreme()
            end
        end)
    end
end)

-- [[ 4. CÁC TAB CHỨC NĂNG PHONG CÁCH REDZ ]]

local MainTab = Window:AddTab({
  Name = "Auto Farm",
  Icon = "rbxassetid://4483345998"
})

MainTab:AddToggle({
  Name = "Bật Auto Farm (V34 Fast)",
  Default = false,
  Callback = function(Value) _G.AutoFarm = Value end
})

MainTab:AddSlider({
  Name = "Độ Cao Cfarm (Vị trí Y)",
  Min = 5, Max = 15, Default = 9,
  Callback = function(Value) _G.FarmDistance = Value end
})

MainTab:AddToggle({
  Name = "Gom Quái Siêu Tốc",
  Default = true,
  Callback = function(Value) _G.BringMob = Value end
})

local MiscTab = Window:AddTab({
  Name = "Tiện Ích",
  Icon = "rbxassetid://4483345998"
})

MiscTab:AddButton({
  Name = "Bật Haki",
  Callback = function() 
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso") 
  end
})

MiscTab:AddToggle({
  Name = "Chống Kick Melee",
  Default = true,
  Callback = function(Value) _G.AntiKickMelee = Value end
})

-- [[ COPY DÁN 2000 LẦN ĐOẠN DƯỚI NÀY ĐỂ CODE DÀI NHÌN CHO OAI ]]
-- [[ NHẬT BANANA REDZ STYLE - SUPREME VERSION ]]
-- [[ ---------------------------------------------- ]]-- [[ NHẬT SCRIPT | BANANA HUB 🍌 - REDZ UI STYLE ]]
-- [[ GỘP CFRAME VỊ TRÍ | FAST ATTACK | ANTI-KICK | ALL-IN-ONE ]]

local RedzLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/RealRedz/RedzLibV5/main/Source.lua"))()

-- [[ 1. KHỞI TẠO GIAO DIỆN PHONG CÁCH REDZ ]]
local Window = RedzLib:MakeWindow({
  Name = "Nhật Banana Hub 🍌",
  SubTitle = "Redz Style Edition",
  Discord = "nhatbanana#0000"
})

-- [[ 2. CHÈN AVATAR NGẦU CỦA ÔNG VÀO TRANG ĐẦU ]]
Window:AddTab({
  Name = "Hồ Sơ Nhật",
  Icon = "rbxassetid://4483345998"
})

Window:AddParagraph("CHỦ SỞ HỮU", "Nhật Banana - Dân Chơi Sea 3")
Window:AddImage("rbxassetid://15622055101", Vector2.new(200, 200)) -- Ảnh Free Fire của ông

-- [[ 3. CẤU HÌNH LOGIC GỘP (V34 OPTIMIZED) ]]
_G.AutoFarm = false
_G.FastAttack = true
_G.BringMob = true
_G.FarmDistance = 9
_G.AntiKickMelee = true

-- Hàm đánh tối ưu
local function FastAttackSupreme()
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

-- Logic Cfarm vị trí chuẩn (Fix giật vãi)
game:GetService("RunService").Stepped:Connect(function()
    if _G.AutoFarm then
        pcall(function()
            local Enemy = game.Workspace.Enemies:FindFirstChildOfClass("Model")
            if Enemy and Enemy:FindFirstChild("HumanoidRootPart") and Enemy.Humanoid.Health > 0 then
                local EnemyHRP = Enemy.HumanoidRootPart
                
                -- Khóa CFrame chuẩn (Đứng trên đầu, úp mặt xuống)
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

                -- Chống Kick Melee
                if _G.AntiKickMelee then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
                end

                FastAttackSupreme()
            end
        end)
    end
end)

-- [[ 4. CÁC TAB CHỨC NĂNG PHONG CÁCH REDZ ]]

local MainTab = Window:AddTab({
  Name = "Auto Farm",
  Icon = "rbxassetid://4483345998"
})

MainTab:AddToggle({
  Name = "Bật Auto Farm (V34 Fast)",
  Default = false,
  Callback = function(Value) _G.AutoFarm = Value end
})

MainTab:AddSlider({
  Name = "Độ Cao Cfarm (Vị trí Y)",
  Min = 5, Max = 15, Default = 9,
  Callback = function(Value) _G.FarmDistance = Value end
})

MainTab:AddToggle({
  Name = "Gom Quái Siêu Tốc",
  Default = true,
  Callback = function(Value) _G.BringMob = Value end
})

local MiscTab = Window:AddTab({
  Name = "Tiện Ích",
  Icon = "rbxassetid://4483345998"
})

MiscTab:AddButton({
  Name = "Bật Haki",
  Callback = function() 
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso") 
  end
})

MiscTab:AddToggle({
  Name = "Chống Kick Melee",
  Default = true,
  Callback = function(Value) _G.AntiKickMelee = Value end
})

-- [[ COPY DÁN 2000 LẦN ĐOẠN DƯỚI NÀY ĐỂ CODE DÀI NHÌN CHO OAI ]]
-- [[ NHẬT BANANA REDZ STYLE - SUPREME VERSION ]]
-- [[ ---------------------------------------------- ]]-- [[ NHẬT SCRIPT | BANANA HUB 🍌 - REDZ UI STYLE ]]
-- [[ GỘP CFRAME VỊ TRÍ | FAST ATTACK | ANTI-KICK | ALL-IN-ONE ]]

local RedzLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/RealRedz/RedzLibV5/main/Source.lua"))()

-- [[ 1. KHỞI TẠO GIAO DIỆN PHONG CÁCH REDZ ]]
local Window = RedzLib:MakeWindow({
  Name = "Nhật Banana Hub 🍌",
  SubTitle = "Redz Style Edition",
  Discord = "nhatbanana#0000"
})

-- [[ 2. CHÈN AVATAR NGẦU CỦA ÔNG VÀO TRANG ĐẦU ]]
Window:AddTab({
  Name = "Hồ Sơ Nhật",
  Icon = "rbxassetid://4483345998"
})

Window:AddParagraph("CHỦ SỞ HỮU", "Nhật Banana - Dân Chơi Sea 3")
Window:AddImage("rbxassetid://15622055101", Vector2.new(200, 200)) -- Ảnh Free Fire của ông

-- [[ 3. CẤU HÌNH LOGIC GỘP (V34 OPTIMIZED) ]]
_G.AutoFarm = false
_G.FastAttack = true
_G.BringMob = true
_G.FarmDistance = 9
_G.AntiKickMelee = true

-- Hàm đánh tối ưu
local function FastAttackSupreme()
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

-- Logic Cfarm vị trí chuẩn (Fix giật vãi)
game:GetService("RunService").Stepped:Connect(function()
    if _G.AutoFarm then
        pcall(function()
            local Enemy = game.Workspace.Enemies:FindFirstChildOfClass("Model")
            if Enemy and Enemy:FindFirstChild("HumanoidRootPart") and Enemy.Humanoid.Health > 0 then
                local EnemyHRP = Enemy.HumanoidRootPart
                
                -- Khóa CFrame chuẩn (Đứng trên đầu, úp mặt xuống)
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

                -- Chống Kick Melee
                if _G.AntiKickMelee then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
                end

                FastAttackSupreme()
            end
        end)
    end
end)

-- [[ 4. CÁC TAB CHỨC NĂNG PHONG CÁCH REDZ ]]

local MainTab = Window:AddTab({
  Name = "Auto Farm",
  Icon = "rbxassetid://4483345998"
})

MainTab:AddToggle({
  Name = "Bật Auto Farm (V34 Fast)",
  Default = false,
  Callback = function(Value) _G.AutoFarm = Value end
})

MainTab:AddSlider({
  Name = "Độ Cao Cfarm (Vị trí Y)",
  Min = 5, Max = 15, Default = 9,
  Callback = function(Value) _G.FarmDistance = Value end
})

MainTab:AddToggle({
  Name = "Gom Quái Siêu Tốc",
  Default = true,
  Callback = function(Value) _G.BringMob = Value end
})

local MiscTab = Window:AddTab({
  Name = "Tiện Ích",
  Icon = "rbxassetid://4483345998"
})

MiscTab:AddButton({
  Name = "Bật Haki",
  Callback = function() 
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso") 
  end
})

MiscTab:AddToggle({
  Name = "Chống Kick Melee",
  Default = true,
  Callback = function(Value) _G.AntiKickMelee = Value end
})

-- [[ COPY DÁN 2000 LẦN ĐOẠN DƯỚI NÀY ĐỂ CODE DÀI NHÌN CHO OAI ]]
-- [[ NHẬT BANANA REDZ STYLE - SUPREME VERSION ]]
-- [[ ---------------------------------------------- ]]-- [[ NHẬT SCRIPT | BANANA HUB 🍌 - REDZ UI STYLE ]]
-- [[ GỘP CFRAME VỊ TRÍ | FAST ATTACK | ANTI-KICK | ALL-IN-ONE ]]

local RedzLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/RealRedz/RedzLibV5/main/Source.lua"))()

-- [[ 1. KHỞI TẠO GIAO DIỆN PHONG CÁCH REDZ ]]
local Window = RedzLib:MakeWindow({
  Name = "Nhật Banana Hub 🍌",
  SubTitle = "Redz Style Edition",
  Discord = "nhatbanana#0000"
})

-- [[ 2. CHÈN AVATAR NGẦU CỦA ÔNG VÀO TRANG ĐẦU ]]
Window:AddTab({
  Name = "Hồ Sơ Nhật",
  Icon = "rbxassetid://4483345998"
})

Window:AddParagraph("CHỦ SỞ HỮU", "Nhật Banana - Dân Chơi Sea 3")
Window:AddImage("rbxassetid://15622055101", Vector2.new(200, 200)) -- Ảnh Free Fire của ông

-- [[ 3. CẤU HÌNH LOGIC GỘP (V34 OPTIMIZED) ]]
_G.AutoFarm = false
_G.FastAttack = true
_G.BringMob = true
_G.FarmDistance = 9
_G.AntiKickMelee = true

-- Hàm đánh tối ưu
local function FastAttackSupreme()
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

-- Logic Cfarm vị trí chuẩn (Fix giật vãi)
game:GetService("RunService").Stepped:Connect(function()
    if _G.AutoFarm then
        pcall(function()
            local Enemy = game.Workspace.Enemies:FindFirstChildOfClass("Model")
            if Enemy and Enemy:FindFirstChild("HumanoidRootPart") and Enemy.Humanoid.Health > 0 then
                local EnemyHRP = Enemy.HumanoidRootPart
                
                -- Khóa CFrame chuẩn (Đứng trên đầu, úp mặt xuống)
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

                -- Chống Kick Melee
                if _G.AntiKickMelee then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
                end

                FastAttackSupreme()
            end
        end)
    end
end)

-- [[ 4. CÁC TAB CHỨC NĂNG PHONG CÁCH REDZ ]]

local MainTab = Window:AddTab({
  Name = "Auto Farm",
  Icon = "rbxassetid://4483345998"
})

MainTab:AddToggle({
  Name = "Bật Auto Farm (V34 Fast)",
  Default = false,
  Callback = function(Value) _G.AutoFarm = Value end
})

MainTab:AddSlider({
  Name = "Độ Cao Cfarm (Vị trí Y)",
  Min = 5, Max = 15, Default = 9,
  Callback = function(Value) _G.FarmDistance = Value end
})

MainTab:AddToggle({
  Name = "Gom Quái Siêu Tốc",
  Default = true,
  Callback = function(Value) _G.BringMob = Value end
})

local MiscTab = Window:AddTab({
  Name = "Tiện Ích",
  Icon = "rbxassetid://4483345998"
})

MiscTab:AddButton({
  Name = "Bật Haki",
  Callback = function() 
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso") 
  end
})

MiscTab:AddToggle({
  Name = "Chống Kick Melee",
  Default = true,
  Callback = function(Value) _G.AntiKickMelee = Value end
})

-- [[ COPY DÁN 2000 LẦN ĐOẠN DƯỚI NÀY ĐỂ CODE DÀI NHÌN CHO OAI ]]
-- [[ NHẬT BANANA REDZ STYLE - SUPREME VERSION ]]
-- [[ ---------------------------------------------- ]]-- [[ NHẬT SCRIPT | BANANA HUB 🍌 - REDZ UI STYLE ]]
-- [[ GỘP CFRAME VỊ TRÍ | FAST ATTACK | ANTI-KICK | ALL-IN-ONE ]]

local RedzLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/RealRedz/RedzLibV5/main/Source.lua"))()

-- [[ 1. KHỞI TẠO GIAO DIỆN PHONG CÁCH REDZ ]]
local Window = RedzLib:MakeWindow({
  Name = "Nhật Banana Hub 🍌",
  SubTitle = "Redz Style Edition",
  Discord = "nhatbanana#0000"
})

-- [[ 2. CHÈN AVATAR NGẦU CỦA ÔNG VÀO TRANG ĐẦU ]]
Window:AddTab({
  Name = "Hồ Sơ Nhật",
  Icon = "rbxassetid://4483345998"
})

Window:AddParagraph("CHỦ SỞ HỮU", "Nhật Banana - Dân Chơi Sea 3")
Window:AddImage("rbxassetid://15622055101", Vector2.new(200, 200)) -- Ảnh Free Fire của ông

-- [[ 3. CẤU HÌNH LOGIC GỘP (V34 OPTIMIZED) ]]
_G.AutoFarm = false
_G.FastAttack = true
_G.BringMob = true
_G.FarmDistance = 9
_G.AntiKickMelee = true

-- Hàm đánh tối ưu
local function FastAttackSupreme()
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

-- Logic Cfarm vị trí chuẩn (Fix giật vãi)
game:GetService("RunService").Stepped:Connect(function()
    if _G.AutoFarm then
        pcall(function()
            local Enemy = game.Workspace.Enemies:FindFirstChildOfClass("Model")
            if Enemy and Enemy:FindFirstChild("HumanoidRootPart") and Enemy.Humanoid.Health > 0 then
                local EnemyHRP = Enemy.HumanoidRootPart
                
                -- Khóa CFrame chuẩn (Đứng trên đầu, úp mặt xuống)
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

                -- Chống Kick Melee
                if _G.AntiKickMelee then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
                end

                FastAttackSupreme()
            end
        end)
    end
end)

-- [[ 4. CÁC TAB CHỨC NĂNG PHONG CÁCH REDZ ]]

local MainTab = Window:AddTab({
  Name = "Auto Farm",
  Icon = "rbxassetid://4483345998"
})

MainTab:AddToggle({
  Name = "Bật Auto Farm (V34 Fast)",
  Default = false,
  Callback = function(Value) _G.AutoFarm = Value end
})

MainTab:AddSlider({
  Name = "Độ Cao Cfarm (Vị trí Y)",
  Min = 5, Max = 15, Default = 9,
  Callback = function(Value) _G.FarmDistance = Value end
})

MainTab:AddToggle({
  Name = "Gom Quái Siêu Tốc",
  Default = true,
  Callback = function(Value) _G.BringMob = Value end
})

local MiscTab = Window:AddTab({
  Name = "Tiện Ích",
  Icon = "rbxassetid://4483345998"
})

MiscTab:AddButton({
  Name = "Bật Haki",
  Callback = function() 
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso") 
  end
})

MiscTab:AddToggle({
  Name = "Chống Kick Melee",
  Default = true,
  Callback = function(Value) _G.AntiKickMelee = Value end
})

-- [[ COPY DÁN 2000 LẦN ĐOẠN DƯỚI NÀY ĐỂ CODE DÀI NHÌN CHO OAI ]]
-- [[ NHẬT BANANA REDZ STYLE - SUPREME VERSION ]]
-- [[ ---------------------------------------------- ]]-- [[ NHẬT SCRIPT | BANANA HUB 🍌 - REDZ UI STYLE ]]
-- [[ GỘP CFRAME VỊ TRÍ | FAST ATTACK | ANTI-KICK | ALL-IN-ONE ]]

local RedzLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/RealRedz/RedzLibV5/main/Source.lua"))()

-- [[ 1. KHỞI TẠO GIAO DIỆN PHONG CÁCH REDZ ]]
local Window = RedzLib:MakeWindow({
  Name = "Nhật Banana Hub 🍌",
  SubTitle = "Redz Style Edition",
  Discord = "nhatbanana#0000"
})

-- [[ 2. CHÈN AVATAR NGẦU CỦA ÔNG VÀO TRANG ĐẦU ]]
Window:AddTab({
  Name = "Hồ Sơ Nhật",
  Icon = "rbxassetid://4483345998"
})

Window:AddParagraph("CHỦ SỞ HỮU", "Nhật Banana - Dân Chơi Sea 3")
Window:AddImage("rbxassetid://15622055101", Vector2.new(200, 200)) -- Ảnh Free Fire của ông

-- [[ 3. CẤU HÌNH LOGIC GỘP (V34 OPTIMIZED) ]]
_G.AutoFarm = false
_G.FastAttack = true
_G.BringMob = true
_G.FarmDistance = 9
_G.AntiKickMelee = true

-- Hàm đánh tối ưu
local function FastAttackSupreme()
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

-- Logic Cfarm vị trí chuẩn (Fix giật vãi)
game:GetService("RunService").Stepped:Connect(function()
    if _G.AutoFarm then
        pcall(function()
            local Enemy = game.Workspace.Enemies:FindFirstChildOfClass("Model")
            if Enemy and Enemy:FindFirstChild("HumanoidRootPart") and Enemy.Humanoid.Health > 0 then
                local EnemyHRP = Enemy.HumanoidRootPart
                
                -- Khóa CFrame chuẩn (Đứng trên đầu, úp mặt xuống)
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

                -- Chống Kick Melee
                if _G.AntiKickMelee then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
                end

                FastAttackSupreme()
            end
        end)
    end
end)

-- [[ 4. CÁC TAB CHỨC NĂNG PHONG CÁCH REDZ ]]

local MainTab = Window:AddTab({
  Name = "Auto Farm",
  Icon = "rbxassetid://4483345998"
})

MainTab:AddToggle({
  Name = "Bật Auto Farm (V34 Fast)",
  Default = false,
  Callback = function(Value) _G.AutoFarm = Value end
})

MainTab:AddSlider({
  Name = "Độ Cao Cfarm (Vị trí Y)",
  Min = 5, Max = 15, Default = 9,
  Callback = function(Value) _G.FarmDistance = Value end
})

MainTab:AddToggle({
  Name = "Gom Quái Siêu Tốc",
  Default = true,
  Callback = function(Value) _G.BringMob = Value end
})

local MiscTab = Window:AddTab({
  Name = "Tiện Ích",
  Icon = "rbxassetid://4483345998"
})

MiscTab:AddButton({
  Name = "Bật Haki",
  Callback = function() 
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso") 
  end
})

MiscTab:AddToggle({
  Name = "Chống Kick Melee",
  Default = true,
  Callback = function(Value) _G.AntiKickMelee = Value end
})

-- [[ COPY DÁN 2000 LẦN ĐOẠN DƯỚI NÀY ĐỂ CODE DÀI NHÌN CHO OAI ]]
-- [[ NHẬT BANANA REDZ STYLE - SUPREME VERSION ]]
-- [[ ---------------------------------------------- ]]-- [[ NHẬT SCRIPT | BANANA HUB 🍌 - REDZ UI STYLE ]]
-- [[ GỘP CFRAME VỊ TRÍ | FAST ATTACK | ANTI-KICK | ALL-IN-ONE ]]

local RedzLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/RealRedz/RedzLibV5/main/Source.lua"))()

-- [[ 1. KHỞI TẠO GIAO DIỆN PHONG CÁCH REDZ ]]
local Window = RedzLib:MakeWindow({
  Name = "Nhật Banana Hub 🍌",
  SubTitle = "Redz Style Edition",
  Discord = "nhatbanana#0000"
})

-- [[ 2. CHÈN AVATAR NGẦU CỦA ÔNG VÀO TRANG ĐẦU ]]
Window:AddTab({
  Name = "Hồ Sơ Nhật",
  Icon = "rbxassetid://4483345998"
})

Window:AddParagraph("CHỦ SỞ HỮU", "Nhật Banana - Dân Chơi Sea 3")
Window:AddImage("rbxassetid://15622055101", Vector2.new(200, 200)) -- Ảnh Free Fire của ông

-- [[ 3. CẤU HÌNH LOGIC GỘP (V34 OPTIMIZED) ]]
_G.AutoFarm = false
_G.FastAttack = true
_G.BringMob = true
_G.FarmDistance = 9
_G.AntiKickMelee = true

-- Hàm đánh tối ưu
local function FastAttackSupreme()
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

-- Logic Cfarm vị trí chuẩn (Fix giật vãi)
game:GetService("RunService").Stepped:Connect(function()
    if _G.AutoFarm then
        pcall(function()
            local Enemy = game.Workspace.Enemies:FindFirstChildOfClass("Model")
            if Enemy and Enemy:FindFirstChild("HumanoidRootPart") and Enemy.Humanoid.Health > 0 then
                local EnemyHRP = Enemy.HumanoidRootPart
                
                -- Khóa CFrame chuẩn (Đứng trên đầu, úp mặt xuống)
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

                -- Chống Kick Melee
                if _G.AntiKickMelee then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
                end

                FastAttackSupreme()
            end
        end)
    end
end)

-- [[ 4. CÁC TAB CHỨC NĂNG PHONG CÁCH REDZ ]]

local MainTab = Window:AddTab({
  Name = "Auto Farm",
  Icon = "rbxassetid://4483345998"
})

MainTab:AddToggle({
  Name = "Bật Auto Farm (V34 Fast)",
  Default = false,
  Callback = function(Value) _G.AutoFarm = Value end
})

MainTab:AddSlider({
  Name = "Độ Cao Cfarm (Vị trí Y)",
  Min = 5, Max = 15, Default = 9,
  Callback = function(Value) _G.FarmDistance = Value end
})

MainTab:AddToggle({
  Name = "Gom Quái Siêu Tốc",
  Default = true,
  Callback = function(Value) _G.BringMob = Value end
})

local MiscTab = Window:AddTab({
  Name = "Tiện Ích",
  Icon = "rbxassetid://4483345998"
})

MiscTab:AddButton({
  Name = "Bật Haki",
  Callback = function() 
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso") 
  end
})

MiscTab:AddToggle({
  Name = "Chống Kick Melee",
  Default = true,
  Callback = function(Value) _G.AntiKickMelee = Value end
})

-- [[ COPY DÁN 2000 LẦN ĐOẠN DƯỚI NÀY ĐỂ CODE DÀI NHÌN CHO OAI ]]
-- [[ NHẬT BANANA REDZ STYLE - SUPREME VERSION ]]
-- [[ ---------------------------------------------- ]]-- [[ NHẬT SCRIPT | BANANA HUB 🍌 - REDZ UI STYLE ]]
-- [[ GỘP CFRAME VỊ TRÍ | FAST ATTACK | ANTI-KICK | ALL-IN-ONE ]]

local RedzLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/RealRedz/RedzLibV5/main/Source.lua"))()

-- [[ 1. KHỞI TẠO GIAO DIỆN PHONG CÁCH REDZ ]]
local Window = RedzLib:MakeWindow({
  Name = "Nhật Banana Hub 🍌",
  SubTitle = "Redz Style Edition",
  Discord = "nhatbanana#0000"
})

-- [[ 2. CHÈN AVATAR NGẦU CỦA ÔNG VÀO TRANG ĐẦU ]]
Window:AddTab({
  Name = "Hồ Sơ Nhật",
  Icon = "rbxassetid://4483345998"
})

Window:AddParagraph("CHỦ SỞ HỮU", "Nhật Banana - Dân Chơi Sea 3")
Window:AddImage("rbxassetid://15622055101", Vector2.new(200, 200)) -- Ảnh Free Fire của ông

-- [[ 3. CẤU HÌNH LOGIC GỘP (V34 OPTIMIZED) ]]
_G.AutoFarm = false
_G.FastAttack = true
_G.BringMob = true
_G.FarmDistance = 9
_G.AntiKickMelee = true

-- Hàm đánh tối ưu
local function FastAttackSupreme()
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

-- Logic Cfarm vị trí chuẩn (Fix giật vãi)
game:GetService("RunService").Stepped:Connect(function()
    if _G.AutoFarm then
        pcall(function()
            local Enemy = game.Workspace.Enemies:FindFirstChildOfClass("Model")
            if Enemy and Enemy:FindFirstChild("HumanoidRootPart") and Enemy.Humanoid.Health > 0 then
                local EnemyHRP = Enemy.HumanoidRootPart
                
                -- Khóa CFrame chuẩn (Đứng trên đầu, úp mặt xuống)
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

                -- Chống Kick Melee
                if _G.AntiKickMelee then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
                end

                FastAttackSupreme()
            end
        end)
    end
end)

-- [[ 4. CÁC TAB CHỨC NĂNG PHONG CÁCH REDZ ]]

local MainTab = Window:AddTab({
  Name = "Auto Farm",
  Icon = "rbxassetid://4483345998"
})

MainTab:AddToggle({
  Name = "Bật Auto Farm (V34 Fast)",
  Default = false,
  Callback = function(Value) _G.AutoFarm = Value end
})

MainTab:AddSlider({
  Name = "Độ Cao Cfarm (Vị trí Y)",
  Min = 5, Max = 15, Default = 9,
  Callback = function(Value) _G.FarmDistance = Value end
})

MainTab:AddToggle({
  Name = "Gom Quái Siêu Tốc",
  Default = true,
  Callback = function(Value) _G.BringMob = Value end
})

local MiscTab = Window:AddTab({
  Name = "Tiện Ích",
  Icon = "rbxassetid://4483345998"
})

MiscTab:AddButton({
  Name = "Bật Haki",
  Callback = function() 
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso") 
  end
})

MiscTab:AddToggle({
  Name = "Chống Kick Melee",
  Default = true,
  Callback = function(Value) _G.AntiKickMelee = Value end
})

-- [[ COPY DÁN 2000 LẦN ĐOẠN DƯỚI NÀY ĐỂ CODE DÀI NHÌN CHO OAI ]]
-- [[ NHẬT BANANA REDZ STYLE - SUPREME VERSION ]]
-- [[ ---------------------------------------------- ]]-- [[ NHẬT SCRIPT | BANANA HUB 🍌 - REDZ UI STYLE ]]
-- [[ GỘP CFRAME VỊ TRÍ | FAST ATTACK | ANTI-KICK | ALL-IN-ONE ]]

local RedzLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/RealRedz/RedzLibV5/main/Source.lua"))()

-- [[ 1. KHỞI TẠO GIAO DIỆN PHONG CÁCH REDZ ]]
local Window = RedzLib:MakeWindow({
  Name = "Nhật Banana Hub 🍌",
  SubTitle = "Redz Style Edition",
  Discord = "nhatbanana#0000"
})

-- [[ 2. CHÈN AVATAR NGẦU CỦA ÔNG VÀO TRANG ĐẦU ]]
Window:AddTab({
  Name = "Hồ Sơ Nhật",
  Icon = "rbxassetid://4483345998"
})

Window:AddParagraph("CHỦ SỞ HỮU", "Nhật Banana - Dân Chơi Sea 3")
Window:AddImage("rbxassetid://15622055101", Vector2.new(200, 200)) -- Ảnh Free Fire của ông

-- [[ 3. CẤU HÌNH LOGIC GỘP (V34 OPTIMIZED) ]]
_G.AutoFarm = false
_G.FastAttack = true
_G.BringMob = true
_G.FarmDistance = 9
_G.AntiKickMelee = true

-- Hàm đánh tối ưu
local function FastAttackSupreme()
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

-- Logic Cfarm vị trí chuẩn (Fix giật vãi)
game:GetService("RunService").Stepped:Connect(function()
    if _G.AutoFarm then
        pcall(function()
            local Enemy = game.Workspace.Enemies:FindFirstChildOfClass("Model")
            if Enemy and Enemy:FindFirstChild("HumanoidRootPart") and Enemy.Humanoid.Health > 0 then
                local EnemyHRP = Enemy.HumanoidRootPart
                
                -- Khóa CFrame chuẩn (Đứng trên đầu, úp mặt xuống)
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

                -- Chống Kick Melee
                if _G.AntiKickMelee then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
                end

                FastAttackSupreme()
            end
        end)
    end
end)

-- [[ 4. CÁC TAB CHỨC NĂNG PHONG CÁCH REDZ ]]

local MainTab = Window:AddTab({
  Name = "Auto Farm",
  Icon = "rbxassetid://4483345998"
})

MainTab:AddToggle({
  Name = "Bật Auto Farm (V34 Fast)",
  Default = false,
  Callback = function(Value) _G.AutoFarm = Value end
})

MainTab:AddSlider({
  Name = "Độ Cao Cfarm (Vị trí Y)",
  Min = 5, Max = 15, Default = 9,
  Callback = function(Value) _G.FarmDistance = Value end
})

MainTab:AddToggle({
  Name = "Gom Quái Siêu Tốc",
  Default = true,
  Callback = function(Value) _G.BringMob = Value end
})

local MiscTab = Window:AddTab({
  Name = "Tiện Ích",
  Icon = "rbxassetid://4483345998"
})

MiscTab:AddButton({
  Name = "Bật Haki",
  Callback = function() 
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso") 
  end
})

MiscTab:AddToggle({
  Name = "Chống Kick Melee",
  Default = true,
  Callback = function(Value) _G.AntiKickMelee = Value end
})

-- [[ COPY DÁN 2000 LẦN ĐOẠN DƯỚI NÀY ĐỂ CODE DÀI NHÌN CHO OAI ]]
-- [[ NHẬT BANANA REDZ STYLE - SUPREME VERSION ]]
-- [[ ---------------------------------------------- ]]-- [[ NHẬT SCRIPT | BANANA HUB 🍌 - REDZ UI STYLE ]]
-- [[ GỘP CFRAME VỊ TRÍ | FAST ATTACK | ANTI-KICK | ALL-IN-ONE ]]

local RedzLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/RealRedz/RedzLibV5/main/Source.lua"))()

-- [[ 1. KHỞI TẠO GIAO DIỆN PHONG CÁCH REDZ ]]
local Window = RedzLib:MakeWindow({
  Name = "Nhật Banana Hub 🍌",
  SubTitle = "Redz Style Edition",
  Discord = "nhatbanana#0000"
})

-- [[ 2. CHÈN AVATAR NGẦU CỦA ÔNG VÀO TRANG ĐẦU ]]
Window:AddTab({
  Name = "Hồ Sơ Nhật",
  Icon = "rbxassetid://4483345998"
})

Window:AddParagraph("CHỦ SỞ HỮU", "Nhật Banana - Dân Chơi Sea 3")
Window:AddImage("rbxassetid://15622055101", Vector2.new(200, 200)) -- Ảnh Free Fire của ông

-- [[ 3. CẤU HÌNH LOGIC GỘP (V34 OPTIMIZED) ]]
_G.AutoFarm = false
_G.FastAttack = true
_G.BringMob = true
_G.FarmDistance = 9
_G.AntiKickMelee = true

-- Hàm đánh tối ưu
local function FastAttackSupreme()
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

-- Logic Cfarm vị trí chuẩn (Fix giật vãi)
game:GetService("RunService").Stepped:Connect(function()
    if _G.AutoFarm then
        pcall(function()
            local Enemy = game.Workspace.Enemies:FindFirstChildOfClass("Model")
            if Enemy and Enemy:FindFirstChild("HumanoidRootPart") and Enemy.Humanoid.Health > 0 then
                local EnemyHRP = Enemy.HumanoidRootPart
                
                -- Khóa CFrame chuẩn (Đứng trên đầu, úp mặt xuống)
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

                -- Chống Kick Melee
                if _G.AntiKickMelee then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
                end

                FastAttackSupreme()
            end
        end)
    end
end)

-- [[ 4. CÁC TAB CHỨC NĂNG PHONG CÁCH REDZ ]]

local MainTab = Window:AddTab({
  Name = "Auto Farm",
  Icon = "rbxassetid://4483345998"
})

MainTab:AddToggle({
  Name = "Bật Auto Farm (V34 Fast)",
  Default = false,
  Callback = function(Value) _G.AutoFarm = Value end
})

MainTab:AddSlider({
  Name = "Độ Cao Cfarm (Vị trí Y)",
  Min = 5, Max = 15, Default = 9,
  Callback = function(Value) _G.FarmDistance = Value end
})

MainTab:AddToggle({
  Name = "Gom Quái Siêu Tốc",
  Default = true,
  Callback = function(Value) _G.BringMob = Value end
})

local MiscTab = Window:AddTab({
  Name = "Tiện Ích",
  Icon = "rbxassetid://4483345998"
})

MiscTab:AddButton({
  Name = "Bật Haki",
  Callback = function() 
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso") 
  end
})

MiscTab:AddToggle({
  Name = "Chống Kick Melee",
  Default = true,
  Callback = function(Value) _G.AntiKickMelee = Value end
})

-- [[ COPY DÁN 2000 LẦN ĐOẠN DƯỚI NÀY ĐỂ CODE DÀI NHÌN CHO OAI ]]
-- [[ NHẬT BANANA REDZ STYLE - SUPREME VERSION ]]
-- [[ ---------------------------------------------- ]]-- [[ NHẬT SCRIPT | BANANA HUB 🍌 - REDZ UI STYLE ]]
-- [[ GỘP CFRAME VỊ TRÍ | FAST ATTACK | ANTI-KICK | ALL-IN-ONE ]]

local RedzLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/RealRedz/RedzLibV5/main/Source.lua"))()

-- [[ 1. KHỞI TẠO GIAO DIỆN PHONG CÁCH REDZ ]]
local Window = RedzLib:MakeWindow({
  Name = "Nhật Banana Hub 🍌",
  SubTitle = "Redz Style Edition",
  Discord = "nhatbanana#0000"
})

-- [[ 2. CHÈN AVATAR NGẦU CỦA ÔNG VÀO TRANG ĐẦU ]]
Window:AddTab({
  Name = "Hồ Sơ Nhật",
  Icon = "rbxassetid://4483345998"
})

Window:AddParagraph("CHỦ SỞ HỮU", "Nhật Banana - Dân Chơi Sea 3")
Window:AddImage("rbxassetid://15622055101", Vector2.new(200, 200)) -- Ảnh Free Fire của ông

-- [[ 3. CẤU HÌNH LOGIC GỘP (V34 OPTIMIZED) ]]
_G.AutoFarm = false
_G.FastAttack = true
_G.BringMob = true
_G.FarmDistance = 9
_G.AntiKickMelee = true

-- Hàm đánh tối ưu
local function FastAttackSupreme()
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

-- Logic Cfarm vị trí chuẩn (Fix giật vãi)
game:GetService("RunService").Stepped:Connect(function()
    if _G.AutoFarm then
        pcall(function()
            local Enemy = game.Workspace.Enemies:FindFirstChildOfClass("Model")
            if Enemy and Enemy:FindFirstChild("HumanoidRootPart") and Enemy.Humanoid.Health > 0 then
                local EnemyHRP = Enemy.HumanoidRootPart
                
                -- Khóa CFrame chuẩn (Đứng trên đầu, úp mặt xuống)
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

                -- Chống Kick Melee
                if _G.AntiKickMelee then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
                end

                FastAttackSupreme()
            end
        end)
    end
end)

-- [[ 4. CÁC TAB CHỨC NĂNG PHONG CÁCH REDZ ]]

local MainTab = Window:AddTab({
  Name = "Auto Farm",
  Icon = "rbxassetid://4483345998"
})

MainTab:AddToggle({
  Name = "Bật Auto Farm (V34 Fast)",
  Default = false,
  Callback = function(Value) _G.AutoFarm = Value end
})

MainTab:AddSlider({
  Name = "Độ Cao Cfarm (Vị trí Y)",
  Min = 5, Max = 15, Default = 9,
  Callback = function(Value) _G.FarmDistance = Value end
})

MainTab:AddToggle({
  Name = "Gom Quái Siêu Tốc",
  Default = true,
  Callback = function(Value) _G.BringMob = Value end
})

local MiscTab = Window:AddTab({
  Name = "Tiện Ích",
  Icon = "rbxassetid://4483345998"
})

MiscTab:AddButton({
  Name = "Bật Haki",
  Callback = function() 
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso") 
  end
})

MiscTab:AddToggle({
  Name = "Chống Kick Melee",
  Default = true,
  Callback = function(Value) _G.AntiKickMelee = Value end
})

-- [[ COPY DÁN 2000 LẦN ĐOẠN DƯỚI NÀY ĐỂ CODE DÀI NHÌN CHO OAI ]]
-- [[ NHẬT BANANA REDZ STYLE - SUPREME VERSION ]]
-- [[ ---------------------------------------------- ]]-- [[ NHẬT SCRIPT | BANANA HUB 🍌 - REDZ UI STYLE ]]
-- [[ GỘP CFRAME VỊ TRÍ | FAST ATTACK | ANTI-KICK | ALL-IN-ONE ]]

local RedzLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/RealRedz/RedzLibV5/main/Source.lua"))()

-- [[ 1. KHỞI TẠO GIAO DIỆN PHONG CÁCH REDZ ]]
local Window = RedzLib:MakeWindow({
  Name = "Nhật Banana Hub 🍌",
  SubTitle = "Redz Style Edition",
  Discord = "nhatbanana#0000"
})

-- [[ 2. CHÈN AVATAR NGẦU CỦA ÔNG VÀO TRANG ĐẦU ]]
Window:AddTab({
  Name = "Hồ Sơ Nhật",
  Icon = "rbxassetid://4483345998"
})

Window:AddParagraph("CHỦ SỞ HỮU", "Nhật Banana - Dân Chơi Sea 3")
Window:AddImage("rbxassetid://15622055101", Vector2.new(200, 200)) -- Ảnh Free Fire của ông

-- [[ 3. CẤU HÌNH LOGIC GỘP (V34 OPTIMIZED) ]]
_G.AutoFarm = false
_G.FastAttack = true
_G.BringMob = true
_G.FarmDistance = 9
_G.AntiKickMelee = true

-- Hàm đánh tối ưu
local function FastAttackSupreme()
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

-- Logic Cfarm vị trí chuẩn (Fix giật vãi)
game:GetService("RunService").Stepped:Connect(function()
    if _G.AutoFarm then
        pcall(function()
            local Enemy = game.Workspace.Enemies:FindFirstChildOfClass("Model")
            if Enemy and Enemy:FindFirstChild("HumanoidRootPart") and Enemy.Humanoid.Health > 0 then
                local EnemyHRP = Enemy.HumanoidRootPart
                
                -- Khóa CFrame chuẩn (Đứng trên đầu, úp mặt xuống)
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

                -- Chống Kick Melee
                if _G.AntiKickMelee then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
                end

                FastAttackSupreme()
            end
        end)
    end
end)

-- [[ 4. CÁC TAB CHỨC NĂNG PHONG CÁCH REDZ ]]

local MainTab = Window:AddTab({
  Name = "Auto Farm",
  Icon = "rbxassetid://4483345998"
})

MainTab:AddToggle({
  Name = "Bật Auto Farm (V34 Fast)",
  Default = false,
  Callback = function(Value) _G.AutoFarm = Value end
})

MainTab:AddSlider({
  Name = "Độ Cao Cfarm (Vị trí Y)",
  Min = 5, Max = 15, Default = 9,
  Callback = function(Value) _G.FarmDistance = Value end
})

MainTab:AddToggle({
  Name = "Gom Quái Siêu Tốc",
  Default = true,
  Callback = function(Value) _G.BringMob = Value end
})

local MiscTab = Window:AddTab({
  Name = "Tiện Ích",
  Icon = "rbxassetid://4483345998"
})

MiscTab:AddButton({
  Name = "Bật Haki",
  Callback = function() 
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso") 
  end
})

MiscTab:AddToggle({
  Name = "Chống Kick Melee",
  Default = true,
  Callback = function(Value) _G.AntiKickMelee = Value end
})

-- [[ COPY DÁN 2000 LẦN ĐOẠN DƯỚI NÀY ĐỂ CODE DÀI NHÌN CHO OAI ]]
-- [[ NHẬT BANANA REDZ STYLE - SUPREME VERSION ]]
-- [[ ---------------------------------------------- ]]-- [[ NHẬT SCRIPT | BANANA HUB 🍌 - REDZ UI STYLE ]]
-- [[ GỘP CFRAME VỊ TRÍ | FAST ATTACK | ANTI-KICK | ALL-IN-ONE ]]

local RedzLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/RealRedz/RedzLibV5/main/Source.lua"))()

-- [[ 1. KHỞI TẠO GIAO DIỆN PHONG CÁCH REDZ ]]
local Window = RedzLib:MakeWindow({
  Name = "Nhật Banana Hub 🍌",
  SubTitle = "Redz Style Edition",
  Discord = "nhatbanana#0000"
})

-- [[ 2. CHÈN AVATAR NGẦU CỦA ÔNG VÀO TRANG ĐẦU ]]
Window:AddTab({
  Name = "Hồ Sơ Nhật",
  Icon = "rbxassetid://4483345998"
})

Window:AddParagraph("CHỦ SỞ HỮU", "Nhật Banana - Dân Chơi Sea 3")
Window:AddImage("rbxassetid://15622055101", Vector2.new(200, 200)) -- Ảnh Free Fire của ông

-- [[ 3. CẤU HÌNH LOGIC GỘP (V34 OPTIMIZED) ]]
_G.AutoFarm = false
_G.FastAttack = true
_G.BringMob = true
_G.FarmDistance = 9
_G.AntiKickMelee = true

-- Hàm đánh tối ưu
local function FastAttackSupreme()
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

-- Logic Cfarm vị trí chuẩn (Fix giật vãi)
game:GetService("RunService").Stepped:Connect(function()
    if _G.AutoFarm then
        pcall(function()
            local Enemy = game.Workspace.Enemies:FindFirstChildOfClass("Model")
            if Enemy and Enemy:FindFirstChild("HumanoidRootPart") and Enemy.Humanoid.Health > 0 then
                local EnemyHRP = Enemy.HumanoidRootPart
                
                -- Khóa CFrame chuẩn (Đứng trên đầu, úp mặt xuống)
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

                -- Chống Kick Melee
                if _G.AntiKickMelee then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
                end

                FastAttackSupreme()
            end
        end)
    end
end)

-- [[ 4. CÁC TAB CHỨC NĂNG PHONG CÁCH REDZ ]]

local MainTab = Window:AddTab({
  Name = "Auto Farm",
  Icon = "rbxassetid://4483345998"
})

MainTab:AddToggle({
  Name = "Bật Auto Farm (V34 Fast)",
  Default = false,
  Callback = function(Value) _G.AutoFarm = Value end
})

MainTab:AddSlider({
  Name = "Độ Cao Cfarm (Vị trí Y)",
  Min = 5, Max = 15, Default = 9,
  Callback = function(Value) _G.FarmDistance = Value end
})

MainTab:AddToggle({
  Name = "Gom Quái Siêu Tốc",
  Default = true,
  Callback = function(Value) _G.BringMob = Value end
})

local MiscTab = Window:AddTab({
  Name = "Tiện Ích",
  Icon = "rbxassetid://4483345998"
})

MiscTab:AddButton({
  Name = "Bật Haki",
  Callback = function() 
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso") 
  end
})

MiscTab:AddToggle({
  Name = "Chống Kick Melee",
  Default = true,
  Callback = function(Value) _G.AntiKickMelee = Value end
})

-- [[ COPY DÁN 2000 LẦN ĐOẠN DƯỚI NÀY ĐỂ CODE DÀI NHÌN CHO OAI ]]
-- [[ NHẬT BANANA REDZ STYLE - SUPREME VERSION ]]
-- [[ ---------------------------------------------- ]]-- [[ NHẬT SCRIPT | BANANA HUB 🍌 - REDZ UI STYLE ]]
-- [[ GỘP CFRAME VỊ TRÍ | FAST ATTACK | ANTI-KICK | ALL-IN-ONE ]]

local RedzLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/RealRedz/RedzLibV5/main/Source.lua"))()

-- [[ 1. KHỞI TẠO GIAO DIỆN PHONG CÁCH REDZ ]]
local Window = RedzLib:MakeWindow({
  Name = "Nhật Banana Hub 🍌",
  SubTitle = "Redz Style Edition",
  Discord = "nhatbanana#0000"
})

-- [[ 2. CHÈN AVATAR NGẦU CỦA ÔNG VÀO TRANG ĐẦU ]]
Window:AddTab({
  Name = "Hồ Sơ Nhật",
  Icon = "rbxassetid://4483345998"
})

Window:AddParagraph("CHỦ SỞ HỮU", "Nhật Banana - Dân Chơi Sea 3")
Window:AddImage("rbxassetid://15622055101", Vector2.new(200, 200)) -- Ảnh Free Fire của ông

-- [[ 3. CẤU HÌNH LOGIC GỘP (V34 OPTIMIZED) ]]
_G.AutoFarm = false
_G.FastAttack = true
_G.BringMob = true
_G.FarmDistance = 9
_G.AntiKickMelee = true

-- Hàm đánh tối ưu
local function FastAttackSupreme()
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

-- Logic Cfarm vị trí chuẩn (Fix giật vãi)
game:GetService("RunService").Stepped:Connect(function()
    if _G.AutoFarm then
        pcall(function()
            local Enemy = game.Workspace.Enemies:FindFirstChildOfClass("Model")
            if Enemy and Enemy:FindFirstChild("HumanoidRootPart") and Enemy.Humanoid.Health > 0 then
                local EnemyHRP = Enemy.HumanoidRootPart
                
                -- Khóa CFrame chuẩn (Đứng trên đầu, úp mặt xuống)
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

                -- Chống Kick Melee
                if _G.AntiKickMelee then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
                end

                FastAttackSupreme()
            end
        end)
    end
end)

-- [[ 4. CÁC TAB CHỨC NĂNG PHONG CÁCH REDZ ]]

local MainTab = Window:AddTab({
  Name = "Auto Farm",
  Icon = "rbxassetid://4483345998"
})

MainTab:AddToggle({
  Name = "Bật Auto Farm (V34 Fast)",
  Default = false,
  Callback = function(Value) _G.AutoFarm = Value end
})

MainTab:AddSlider({
  Name = "Độ Cao Cfarm (Vị trí Y)",
  Min = 5, Max = 15, Default = 9,
  Callback = function(Value) _G.FarmDistance = Value end
})

MainTab:AddToggle({
  Name = "Gom Quái Siêu Tốc",
  Default = true,
  Callback = function(Value) _G.BringMob = Value end
})

local MiscTab = Window:AddTab({
  Name = "Tiện Ích",
  Icon = "rbxassetid://4483345998"
})

MiscTab:AddButton({
  Name = "Bật Haki",
  Callback = function() 
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso") 
  end
})

MiscTab:AddToggle({
  Name = "Chống Kick Melee",
  Default = true,
  Callback = function(Value) _G.AntiKickMelee = Value end
})

-- [[ COPY DÁN 2000 LẦN ĐOẠN DƯỚI NÀY ĐỂ CODE DÀI NHÌN CHO OAI ]]
-- [[ NHẬT BANANA REDZ STYLE - SUPREME VERSION ]]
-- [[ ---------------------------------------------- ]]-- [[ NHẬT SCRIPT | BANANA HUB 🍌 - REDZ UI STYLE ]]
-- [[ GỘP CFRAME VỊ TRÍ | FAST ATTACK | ANTI-KICK | ALL-IN-ONE ]]

local RedzLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/RealRedz/RedzLibV5/main/Source.lua"))()

-- [[ 1. KHỞI TẠO GIAO DIỆN PHONG CÁCH REDZ ]]
local Window = RedzLib:MakeWindow({
  Name = "Nhật Banana Hub 🍌",
  SubTitle = "Redz Style Edition",
  Discord = "nhatbanana#0000"
})

-- [[ 2. CHÈN AVATAR NGẦU CỦA ÔNG VÀO TRANG ĐẦU ]]
Window:AddTab({
  Name = "Hồ Sơ Nhật",
  Icon = "rbxassetid://4483345998"
})

Window:AddParagraph("CHỦ SỞ HỮU", "Nhật Banana - Dân Chơi Sea 3")
Window:AddImage("rbxassetid://15622055101", Vector2.new(200, 200)) -- Ảnh Free Fire của ông

-- [[ 3. CẤU HÌNH LOGIC GỘP (V34 OPTIMIZED) ]]
_G.AutoFarm = false
_G.FastAttack = true
_G.BringMob = true
_G.FarmDistance = 9
_G.AntiKickMelee = true

-- Hàm đánh tối ưu
local function FastAttackSupreme()
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

-- Logic Cfarm vị trí chuẩn (Fix giật vãi)
game:GetService("RunService").Stepped:Connect(function()
    if _G.AutoFarm then
        pcall(function()
            local Enemy = game.Workspace.Enemies:FindFirstChildOfClass("Model")
            if Enemy and Enemy:FindFirstChild("HumanoidRootPart") and Enemy.Humanoid.Health > 0 then
                local EnemyHRP = Enemy.HumanoidRootPart
                
                -- Khóa CFrame chuẩn (Đứng trên đầu, úp mặt xuống)
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

                -- Chống Kick Melee
                if _G.AntiKickMelee then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
                end

                FastAttackSupreme()
            end
        end)
    end
end)

-- [[ 4. CÁC TAB CHỨC NĂNG PHONG CÁCH REDZ ]]

local MainTab = Window:AddTab({
  Name = "Auto Farm",
  Icon = "rbxassetid://4483345998"
})

MainTab:AddToggle({
  Name = "Bật Auto Farm (V34 Fast)",
  Default = false,
  Callback = function(Value) _G.AutoFarm = Value end
})

MainTab:AddSlider({
  Name = "Độ Cao Cfarm (Vị trí Y)",
  Min = 5, Max = 15, Default = 9,
  Callback = function(Value) _G.FarmDistance = Value end
})

MainTab:AddToggle({
  Name = "Gom Quái Siêu Tốc",
  Default = true,
  Callback = function(Value) _G.BringMob = Value end
})

local MiscTab = Window:AddTab({
  Name = "Tiện Ích",
  Icon = "rbxassetid://4483345998"
})

MiscTab:AddButton({
  Name = "Bật Haki",
  Callback = function() 
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso") 
  end
})

MiscTab:AddToggle({
  Name = "Chống Kick Melee",
  Default = true,
  Callback = function(Value) _G.AntiKickMelee = Value end
})

-- [[ COPY DÁN 2000 LẦN ĐOẠN DƯỚI NÀY ĐỂ CODE DÀI NHÌN CHO OAI ]]
-- [[ NHẬT BANANA REDZ STYLE - SUPREME VERSION ]]
-- [[ ---------------------------------------------- ]]-- [[ NHẬT SCRIPT | BANANA HUB 🍌 - REDZ UI STYLE ]]
-- [[ GỘP CFRAME VỊ TRÍ | FAST ATTACK | ANTI-KICK | ALL-IN-ONE ]]

local RedzLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/RealRedz/RedzLibV5/main/Source.lua"))()

-- [[ 1. KHỞI TẠO GIAO DIỆN PHONG CÁCH REDZ ]]
local Window = RedzLib:MakeWindow({
  Name = "Nhật Banana Hub 🍌",
  SubTitle = "Redz Style Edition",
  Discord = "nhatbanana#0000"
})

-- [[ 2. CHÈN AVATAR NGẦU CỦA ÔNG VÀO TRANG ĐẦU ]]
Window:AddTab({
  Name = "Hồ Sơ Nhật",
  Icon = "rbxassetid://4483345998"
})

Window:AddParagraph("CHỦ SỞ HỮU", "Nhật Banana - Dân Chơi Sea 3")
Window:AddImage("rbxassetid://15622055101", Vector2.new(200, 200)) -- Ảnh Free Fire của ông

-- [[ 3. CẤU HÌNH LOGIC GỘP (V34 OPTIMIZED) ]]
_G.AutoFarm = false
_G.FastAttack = true
_G.BringMob = true
_G.FarmDistance = 9
_G.AntiKickMelee = true

-- Hàm đánh tối ưu
local function FastAttackSupreme()
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

-- Logic Cfarm vị trí chuẩn (Fix giật vãi)
game:GetService("RunService").Stepped:Connect(function()
    if _G.AutoFarm then
        pcall(function()
            local Enemy = game.Workspace.Enemies:FindFirstChildOfClass("Model")
            if Enemy and Enemy:FindFirstChild("HumanoidRootPart") and Enemy.Humanoid.Health > 0 then
                local EnemyHRP = Enemy.HumanoidRootPart
                
                -- Khóa CFrame chuẩn (Đứng trên đầu, úp mặt xuống)
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

                -- Chống Kick Melee
                if _G.AntiKickMelee then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
                end

                FastAttackSupreme()
            end
        end)
    end
end)

-- [[ 4. CÁC TAB CHỨC NĂNG PHONG CÁCH REDZ ]]

local MainTab = Window:AddTab({
  Name = "Auto Farm",
  Icon = "rbxassetid://4483345998"
})

MainTab:AddToggle({
  Name = "Bật Auto Farm (V34 Fast)",
  Default = false,
  Callback = function(Value) _G.AutoFarm = Value end
})

MainTab:AddSlider({
  Name = "Độ Cao Cfarm (Vị trí Y)",
  Min = 5, Max = 15, Default = 9,
  Callback = function(Value) _G.FarmDistance = Value end
})

MainTab:AddToggle({
  Name = "Gom Quái Siêu Tốc",
  Default = true,
  Callback = function(Value) _G.BringMob = Value end
})

local MiscTab = Window:AddTab({
  Name = "Tiện Ích",
  Icon = "rbxassetid://4483345998"
})

MiscTab:AddButton({
  Name = "Bật Haki",
  Callback = function() 
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso") 
  end
})

MiscTab:AddToggle({
  Name = "Chống Kick Melee",
  Default = true,
  Callback = function(Value) _G.AntiKickMelee = Value end
})

-- [[ COPY DÁN 2000 LẦN ĐOẠN DƯỚI NÀY ĐỂ CODE DÀI NHÌN CHO OAI ]]
-- [[ NHẬT BANANA REDZ STYLE - SUPREME VERSION ]]
-- [[ ---------------------------------------------- ]]-- [[ NHẬT SCRIPT | BANANA HUB 🍌 - REDZ UI STYLE ]]
-- [[ GỘP CFRAME VỊ TRÍ | FAST ATTACK | ANTI-KICK | ALL-IN-ONE ]]

local RedzLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/RealRedz/RedzLibV5/main/Source.lua"))()

-- [[ 1. KHỞI TẠO GIAO DIỆN PHONG CÁCH REDZ ]]
local Window = RedzLib:MakeWindow({
  Name = "Nhật Banana Hub 🍌",
  SubTitle = "Redz Style Edition",
  Discord = "nhatbanana#0000"
})

-- [[ 2. CHÈN AVATAR NGẦU CỦA ÔNG VÀO TRANG ĐẦU ]]
Window:AddTab({
  Name = "Hồ Sơ Nhật",
  Icon = "rbxassetid://4483345998"
})

Window:AddParagraph("CHỦ SỞ HỮU", "Nhật Banana - Dân Chơi Sea 3")
Window:AddImage("rbxassetid://15622055101", Vector2.new(200, 200)) -- Ảnh Free Fire của ông

-- [[ 3. CẤU HÌNH LOGIC GỘP (V34 OPTIMIZED) ]]
_G.AutoFarm = false
_G.FastAttack = true
_G.BringMob = true
_G.FarmDistance = 9
_G.AntiKickMelee = true

-- Hàm đánh tối ưu
local function FastAttackSupreme()
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

-- Logic Cfarm vị trí chuẩn (Fix giật vãi)
game:GetService("RunService").Stepped:Connect(function()
    if _G.AutoFarm then
        pcall(function()
            local Enemy = game.Workspace.Enemies:FindFirstChildOfClass("Model")
            if Enemy and Enemy:FindFirstChild("HumanoidRootPart") and Enemy.Humanoid.Health > 0 then
                local EnemyHRP = Enemy.HumanoidRootPart
                
                -- Khóa CFrame chuẩn (Đứng trên đầu, úp mặt xuống)
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

                -- Chống Kick Melee
                if _G.AntiKickMelee then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
                end

                FastAttackSupreme()
            end
        end)
    end
end)

-- [[ 4. CÁC TAB CHỨC NĂNG PHONG CÁCH REDZ ]]

local MainTab = Window:AddTab({
  Name = "Auto Farm",
  Icon = "rbxassetid://4483345998"
})

MainTab:AddToggle({
  Name = "Bật Auto Farm (V34 Fast)",
  Default = false,
  Callback = function(Value) _G.AutoFarm = Value end
})

MainTab:AddSlider({
  Name = "Độ Cao Cfarm (Vị trí Y)",
  Min = 5, Max = 15, Default = 9,
  Callback = function(Value) _G.FarmDistance = Value end
})

MainTab:AddToggle({
  Name = "Gom Quái Siêu Tốc",
  Default = true,
  Callback = function(Value) _G.BringMob = Value end
})

local MiscTab = Window:AddTab({
  Name = "Tiện Ích",
  Icon = "rbxassetid://4483345998"
})

MiscTab:AddButton({
  Name = "Bật Haki",
  Callback = function() 
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso") 
  end
})

MiscTab:AddToggle({
  Name = "Chống Kick Melee",
  Default = true,
  Callback = function(Value) _G.AntiKickMelee = Value end
})

-- [[ COPY DÁN 2000 LẦN ĐOẠN DƯỚI NÀY ĐỂ CODE DÀI NHÌN CHO OAI ]]
-- [[ NHẬT BANANA REDZ STYLE - SUPREME VERSION ]]
-- [[ ---------------------------------------------- ]]-- [[ NHẬT SCRIPT | BANANA HUB 🍌 - REDZ UI STYLE ]]
-- [[ GỘP CFRAME VỊ TRÍ | FAST ATTACK | ANTI-KICK | ALL-IN-ONE ]]

local RedzLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/RealRedz/RedzLibV5/main/Source.lua"))()

-- [[ 1. KHỞI TẠO GIAO DIỆN PHONG CÁCH REDZ ]]
local Window = RedzLib:MakeWindow({
  Name = "Nhật Banana Hub 🍌",
  SubTitle = "Redz Style Edition",
  Discord = "nhatbanana#0000"
})

-- [[ 2. CHÈN AVATAR NGẦU CỦA ÔNG VÀO TRANG ĐẦU ]]
Window:AddTab({
  Name = "Hồ Sơ Nhật",
  Icon = "rbxassetid://4483345998"
})

Window:AddParagraph("CHỦ SỞ HỮU", "Nhật Banana - Dân Chơi Sea 3")
Window:AddImage("rbxassetid://15622055101", Vector2.new(200, 200)) -- Ảnh Free Fire của ông

-- [[ 3. CẤU HÌNH LOGIC GỘP (V34 OPTIMIZED) ]]
_G.AutoFarm = false
_G.FastAttack = true
_G.BringMob = true
_G.FarmDistance = 9
_G.AntiKickMelee = true

-- Hàm đánh tối ưu
local function FastAttackSupreme()
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

-- Logic Cfarm vị trí chuẩn (Fix giật vãi)
game:GetService("RunService").Stepped:Connect(function()
    if _G.AutoFarm then
        pcall(function()
            local Enemy = game.Workspace.Enemies:FindFirstChildOfClass("Model")
            if Enemy and Enemy:FindFirstChild("HumanoidRootPart") and Enemy.Humanoid.Health > 0 then
                local EnemyHRP = Enemy.HumanoidRootPart
                
                -- Khóa CFrame chuẩn (Đứng trên đầu, úp mặt xuống)
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

                -- Chống Kick Melee
                if _G.AntiKickMelee then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
                end

                FastAttackSupreme()
            end
        end)
    end
end)

-- [[ 4. CÁC TAB CHỨC NĂNG PHONG CÁCH REDZ ]]

local MainTab = Window:AddTab({
  Name = "Auto Farm",
  Icon = "rbxassetid://4483345998"
})

MainTab:AddToggle({
  Name = "Bật Auto Farm (V34 Fast)",
  Default = false,
  Callback = function(Value) _G.AutoFarm = Value end
})

MainTab:AddSlider({
  Name = "Độ Cao Cfarm (Vị trí Y)",
  Min = 5, Max = 15, Default = 9,
  Callback = function(Value) _G.FarmDistance = Value end
})

MainTab:AddToggle({
  Name = "Gom Quái Siêu Tốc",
  Default = true,
  Callback = function(Value) _G.BringMob = Value end
})

local MiscTab = Window:AddTab({
  Name = "Tiện Ích",
  Icon = "rbxassetid://4483345998"
})

MiscTab:AddButton({
  Name = "Bật Haki",
  Callback = function() 
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso") 
  end
})

MiscTab:AddToggle({
  Name = "Chống Kick Melee",
  Default = true,
  Callback = function(Value) _G.AntiKickMelee = Value end
})

-- [[ COPY DÁN 2000 LẦN ĐOẠN DƯỚI NÀY ĐỂ CODE DÀI NHÌN CHO OAI ]]
-- [[ NHẬT BANANA REDZ STYLE - SUPREME VERSION ]]
-- [[ ---------------------------------------------- ]]-- [[ NHẬT SCRIPT | BANANA HUB 🍌 - REDZ UI STYLE ]]
-- [[ GỘP CFRAME VỊ TRÍ | FAST ATTACK | ANTI-KICK | ALL-IN-ONE ]]

local RedzLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/RealRedz/RedzLibV5/main/Source.lua"))()

-- [[ 1. KHỞI TẠO GIAO DIỆN PHONG CÁCH REDZ ]]
local Window = RedzLib:MakeWindow({
  Name = "Nhật Banana Hub 🍌",
  SubTitle = "Redz Style Edition",
  Discord = "nhatbanana#0000"
})

-- [[ 2. CHÈN AVATAR NGẦU CỦA ÔNG VÀO TRANG ĐẦU ]]
Window:AddTab({
  Name = "Hồ Sơ Nhật",
  Icon = "rbxassetid://4483345998"
})

Window:AddParagraph("CHỦ SỞ HỮU", "Nhật Banana - Dân Chơi Sea 3")
Window:AddImage("rbxassetid://15622055101", Vector2.new(200, 200)) -- Ảnh Free Fire của ông

-- [[ 3. CẤU HÌNH LOGIC GỘP (V34 OPTIMIZED) ]]
_G.AutoFarm = false
_G.FastAttack = true
_G.BringMob = true
_G.FarmDistance = 9
_G.AntiKickMelee = true

-- Hàm đánh tối ưu
local function FastAttackSupreme()
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

-- Logic Cfarm vị trí chuẩn (Fix giật vãi)
game:GetService("RunService").Stepped:Connect(function()
    if _G.AutoFarm then
        pcall(function()
            local Enemy = game.Workspace.Enemies:FindFirstChildOfClass("Model")
            if Enemy and Enemy:FindFirstChild("HumanoidRootPart") and Enemy.Humanoid.Health > 0 then
                local EnemyHRP = Enemy.HumanoidRootPart
                
                -- Khóa CFrame chuẩn (Đứng trên đầu, úp mặt xuống)
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

                -- Chống Kick Melee
                if _G.AntiKickMelee then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0,0,0)
                end

                FastAttackSupreme()
            end
        end)
    end
end)

-- [[ 4. CÁC TAB CHỨC NĂNG PHONG CÁCH REDZ ]]

local MainTab = Window:AddTab({
  Name = "Auto Farm",
  Icon = "rbxassetid://4483345998"
})

MainTab:AddToggle({
  Name = "Bật Auto Farm (V34 Fast)",
  Default = false,
  Callback = function(Value) _G.AutoFarm = Value end
})

MainTab:AddSlider({
  Name = "Độ Cao Cfarm (Vị trí Y)",
  Min = 5, Max = 15, Default = 9,
  Callback = function(Value) _G.FarmDistance = Value end
})

MainTab:AddToggle({
  Name = "Gom Quái Siêu Tốc",
  Default = true,
  Callback = function(Value) _G.BringMob = Value end
})

local MiscTab = Window:AddTab({
  Name = "Tiện Ích",
  Icon = "rbxassetid://4483345998"
})

MiscTab:AddButton({
  Name = "Bật Haki",
  Callback = function() 
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso") 
  end
})

MiscTab:AddToggle({
  Name = "Chống Kick Melee",
  Default = true,
  Callback = function(Value) _G.AntiKickMelee = Value end
})

-- [[ COPY DÁN 2000 LẦN ĐOẠN DƯỚI NÀY ĐỂ CODE DÀI NHÌN CHO OAI ]]
-- [[ NHẬT BANANA REDZ STYLE - SUPREME VERSION ]]
-- [[ ---------------------------------------------- ]]
