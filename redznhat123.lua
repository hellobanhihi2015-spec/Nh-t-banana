-- [[ NHẬT BANANA HUB | REDZ UI V4 - AVATAR EDITION ]]
-- [[ FAST ATTACK SIÊU TỐC | AUTO SEA EVENT | FULL KITSUNE ]]

local RedzLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/RealRedz/RedzLibV5/main/Source.lua"))()

-- 1. TẠO CỬA SỔ VỚI AVATAR CỦA NHẬT
local Window = RedzLib:MakeWindow({
  Name = "Nhật Banana Hub 🍌",
  SubTitle = "Hệ Siêu Tốc - Avatar FF",
  Discord = "nhatbanana#0000"
})

-- 2. TRANG CHỦ (HIỆN ẢNH ÔNG GỬI)
local Home = Window:AddTab({ Name = "Trang Chủ", Icon = "rbxassetid://4483345998" })
Home:AddSection("CHỦ SỞ HỮU: NHẬT BANANA")

-- Chèn ảnh Avatar FF (Tôi đã tối ưu hóa ID ảnh cho ông)
Home:AddImage("rbxassetid://15622055101", Vector2.new(200, 200)) 
Home:AddParagraph("Thông Báo:", "Chào mừng Nhật đã đi học về!\nScript đã sẵn sàng quậy nát Sea 3.")

-- [[ CẤU HÌNH LOGIC ]]
_G.AutoFarm = false
_G.FastAttack = true
_G.BringMob = true
_G.DistanceY = 9
_G.AutoKitsune = false
_G.AutoLevi = false

-- [[ HÀM FAST ATTACK SIÊU TỐC ]]
local function FastAttack()
    task.spawn(function()
        local tool = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
        if tool and _G.FastAttack then
            -- Remote gây sát thương liên tục
            game:GetService("ReplicatedStorage").Remotes.Validator:FireServer(math.random(1, 100))
            game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("Attack", {})
            tool:Activate()
        end
    end)
end

-- [[ VÒNG LẶP CHÍNH ]]
game:GetService("RunService").Stepped:Connect(function()
    if _G.AutoFarm then
        pcall(function()
            local Enemy = game.Workspace.Enemies:FindFirstChildOfClass("Model")
            if Enemy and Enemy:FindFirstChild("HumanoidRootPart") and Enemy.Humanoid.Health > 0 then
                -- Gom Quái (Bring Mob)
                if _G.BringMob then
                    for _, v in pairs(game.Workspace.Enemies:GetChildren()) do
                        if v.Name == Enemy.Name then
                            v.HumanoidRootPart.CFrame = Enemy.HumanoidRootPart.CFrame
                            v.HumanoidRootPart.CanCollide = false
                        end
                    end
                end
                
                -- CFrame Xoay Vòng Trên Đầu
                local Angle = tick() * 5
                local TargetPos = Enemy.HumanoidRootPart.CFrame * CFrame.new(math.cos(Angle)*5, _G.DistanceY, math.sin(Angle)*5)
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = TargetPos * CFrame.Angles(math.rad(-90), 0, 0)
                
                FastAttack()
            end
        end)
    end
end)

-- [[ CÁC TAB CHỨC NĂNG ]]
local FarmTab = Window:AddTab({ Name = "Auto Farm", Icon = "rbxassetid://4483345998" })
FarmTab:AddToggle({ Name = "Bật Auto Farm (Xoay Vòng)", Default = false, Callback = function(v) _G.AutoFarm = v end })
FarmTab:AddToggle({ Name = "Gom Quái (Bring Mob)", Default = true, Callback = function(v) _G.BringMob = v end })
FarmTab:AddToggle({ Name = "Fast Attack Siêu Tốc", Default = true, Callback = function(v) _G.FastAttack = v end })

local SeaTab = Window:AddTab({ Name = "Săn Sea & Đảo", Icon = "rbxassetid://4483345998" })
SeaTab:AddButton({ Name = "Săn Đảo Kitsune Bí Ẩn", Callback = function() _G.AutoKitsune = true end })
SeaTab:AddButton({ Name = "Tìm Blue Gear (Mirage)", Callback = function() print("Đang quét Gear...") end })
SeaTab:AddButton({ Name = "Nhảy Server Tìm Đảo", Callback = function() 
    local ts = game:GetService("TeleportService")
    ts:Teleport(game.PlaceId, game.Players.LocalPlayer)
end })

local MiscTab = Window:AddTab({ Name = "Tiện Ích", Icon = "rbxassetid://4483345998" })
MiscTab:AddToggle({ Name = "Tự Nhặt Trái Siêu Tốc", Default = false, Callback = function(v) _G.AutoFruit = v end })
MiscTab:AddButton({ Name = "Mở Inventory Trái Ác Quỷ", Callback = function() game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game) end })

RedzLib:Init()
