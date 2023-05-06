local library = loadstring(game:HttpGet("https://pastebin.com/raw/Uub92rmN"))()


local Window = library:AddWindow("Sync X - Cheating Tool",
    {
        main_color = Color3.fromRGB(170, 0, 0),
        min_size = Vector2.new(373, 433),
        toggle_key = Enum.KeyCode.RightShift,
    })

-- local speaker = game.Players.LocalPlayer

--[[
local Boss_1 = game:GetService("Workspace").CloneStageBoss.Boss1
local Boss_2 = game:GetService("Workspace").CloneStageBoss.Boss2
local Boss_3 = game:GetService("Workspace").CloneStageBoss.Boss3
local Boss_4 = game:GetService("Workspace").CloneStageBoss.Boss4
local Boss_5 = game:GetService("Workspace").CloneStageBoss.Boss5
local Boss_6 = game:GetService("Workspace").CloneStageBoss.Boss6

local distance_Boss_1 = 0
local distance_Boss_2 = 0
local distance_Boss_3 = 0
local distance_Boss_4 = 0
local distance_Boss_5 = 0
local distance_Boss_6 = 0
--]]

local T1 = Window:AddTab("Attack")
local T2 = Window:AddTab("Coin & sword")

local BossDistance = T1:AddConsole({
    ["y"] = 50,
    ["source"] = "",
})

function set(Table, content)
    Table:Set(content)
end

--[[
while wait() do
    if speaker then
        local playerPosition = speaker.Character and speaker.Character:FindFirstChild("HumanoidRootPart") and speaker.Character.HumanoidRootPart.Position
        if playerPosition then
            distance_Boss_1 = (playerPosition - Boss_1.Position).magnitude
            distance_Boss_2 = (playerPosition - Boss_2.Position).magnitude
            distance_Boss_3 = (playerPosition - Boss_3.Position).magnitude
            distance_Boss_4 = (playerPosition - Boss_4.Position).magnitude
            distance_Boss_5 = (playerPosition - Boss_5.Position).magnitude
            distance_Boss_6 = (playerPosition - Boss_6.Position).magnitude
            set(BossDistance, "Boss Distance \nBoss 1:  " .. distance_Boss_1 .. " \nBoss 2: " .. distance_Boss_2 .. " \nBoss 3: " .. distance_Boss_3 .. " \nBoss 4: " .. distance_Boss_4 .. " \nBoss 5: " .. distance_Boss_5 .. " \nBoss 6: " .. distance_Boss_6
        end
    end
end
--]]

function teleport(part)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(part.CFrame)
end

T1:AddSwitch("Attack", function(bool)
    _G.Tog_Att = bool

while wait() do
if _G.Tog_Att == false then break end
game:GetService("ReplicatedStorage").RmEvent:FindFirstChild("Status/Data").Attack:FireServer()
end
end)

local skill = T1:AddDropdown("Select skill", function(object)
   _G.Skill = object
end)

T1:AddSwitch("Spam skill", function(bool)
_G.SkillSpam = bool

while wait() do
if _G.SkillSpam == false then break end
local args = {
    [1] = _G.Skill
}

game:GetService("ReplicatedStorage").RmEvent:FindFirstChild("Status/Data").CastSkill:FireServer(unpack(args))
end
end)

T1:AddTextBox("Cooldown skill", function(v)
_G.SkillCD = v or 1
end)

T1:AddSwitch("Spam random skill", function(bool)
_G.SkillRandom = bool

while wait(_G.SkillCD) do
if _G.SkillRandom == false then break end
local args = {
    [1] = math.random(6)
}

game:GetService("ReplicatedStorage").RmEvent:FindFirstChild("Status/Data").CastSkill:FireServer(unpack(args))
speaker.Character:FindFirstChildOfClass('Humanoid').HipHeight = 3
end
end)

local Boss_A1 = T1:AddDropdown("Select boss", function(object)
   _G.Boss_1 = object
end)

Boss_A1:Add("Boss 1")
Boss_A1:Add("Boss 2")
Boss_A1:Add("Boss 3")
Boss_A1:Add("Boss 4")
Boss_A1:Add("Boss 5")
Boss_A1:Add("Boss 6")

T1:AddSwitch("Raid boss (turn on spam random skill first)", function(bool)
_G.RaidBoss = bool

while wait() do
if _G.RaidBoss == false then break end
if _G.Boss_1 == "Boss 1" then
teleport(game:GetService("Workspace").CloneStageBoss.Boss1.Torso.ChestPlate)
end
if _G.Boss_1 == "Boss 2" then
teleport(game:GetService("Workspace").CloneStageBoss.Boss2.Torso)
end
if _G.Boss_1 == "Boss 3" then
teleport(game:GetService("Workspace").CloneStageBoss.Boss3.UpperTorso)
end
if _G.Boss_1 == "Boss 4" then
teleport(game:GetService("Workspace").CloneStageBoss.Boss4.Torso)
end
if _G.Boss_1 == "Boss 5" then
teleport(game:GetService("Workspace").CloneStageBoss.Boss5.HumanoidRootPart)
end
if _G.Boss_1 == "Boss 6" then
teleport(game:GetService("Workspace").CloneStageBoss.Boss6.Torso)
end
end
end)


skill:Add("1")
skill:Add("2")
skill:Add("3")
skill:Add("4")
skill:Add("5")
skill:Add("6")

T2:AddButton("infinite coin", function()
local args = {
    [1] = {
        [1] = 60
    },
    [2] = "Sword",
    [3] = -11111
}

game:GetService("ReplicatedStorage").RmEvent:FindFirstChild("Status/Data").DrawSuccess:FireServer(unpack(args))
end)

T2:AddButton("Get best sword", function()
local args = {
    [1] = {
        [1] = 60
    },
    [2] = "Sword",
    [3] = 1
}

game:GetService("ReplicatedStorage").RmEvent:FindFirstChild("Status/Data").DrawSuccess:FireServer(unpack(args))
end)
