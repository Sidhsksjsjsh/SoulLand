local library = loadstring(game:HttpGet("https://pastebin.com/raw/Uub92rmN"))()


local Window = library:AddWindow("Sync X - Cheating Tool",
    {
        main_color = Color3.fromRGB(170, 0, 0),
        min_size = Vector2.new(373, 433),
        toggle_key = Enum.KeyCode.RightShift,
    })

local T1 = Window:AddTab("Attack")
local T2 = Window:AddTab("Coin & sword")

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
