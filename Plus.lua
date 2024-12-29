local ArrayField = loadstring(game:HttpGet('https://raw.githubusercontent.com/UI-Interface/ArrayField/main/Source.lua'))()
local AkaliNotif = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/Dynissimo/main/Scripts/AkaliNotif.lua"))();
local Notify = AkaliNotif.Notify;
Notify({
Description = "早期访问,右Shift隐藏UI";
Title = "提示!";
Duration = 5;
});
local Window = ArrayField:CreateWindow({
   Name = "<-(点开查看功能)咒术无限",
   LoadingTitle = "咒术无限",
   LoadingSubtitle = "by L_Dxezd",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "ArrayField"
   },
   Discord = {
      Enabled = false,
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided",
      FileName = "Key", -- It is recommended to use something unique as other scripts using ArrayField may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like ArrayField to get the key from
      Actions = {
            [1] = {
                Text = 'Click here to copy the key link <--',
                OnPress = function()
                    print('Pressed')
                end,
                }
            },
      Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})
local Tab1 = Window:CreateTab("秒杀", 4483362458) -- Title, Image
local Label = Tab1:CreateLabel("建议按了后十秒内触发boss,因为我设置的是十秒内检测boss有没有出现,花御可能会秒不了,但是boss那有个kill arua")
Label:Set("建议按了后十秒内触发boss,因为我设置的是十秒内检测boss有没有出现,花御可能会秒不了,但是boss那有个kill arua")
local Button = Tab1:CreateButton({
   Name = "花御",
   Interact = 'Click',
   Callback = function()
local maxChecks = 100
local checkInterval = 3 -- 秒

for i = 1, maxChecks do
    local mob = game.Workspace.Objects.Mobs:FindFirstChild("Finger Bearer")
    if mob then
        local head = mob:FindFirstChild("Head")
        if head then
            head:remove()
            print("在第 " .. i .. " 次检查时移除了 Finger Bearer")
            break
        else
            print("在第 " .. i .. " 次检查时未找到 Finger Bearer")
        end
    else
        print("在第 " .. i .. " 次检查时未找到 Finger Bearer本体.")
    end
    if i < maxChecks then
        task.wait(checkInterval)
    end
end
   end,
})
Button:Set("花御","点击")
local Button = Tab1:CreateButton({
    Name = "Ocean Curse",
    Interact = "Click",
    Callback =function()
local maxChecks = 100
local checkInterval = 3 -- 秒

for i = 1, maxChecks do
    local mob = game.Workspace.Objects.Mobs:FindFirstChild("Ocean Curse")
    if mob then
        local head = mob:FindFirstChild("Head")
        if head then
            head:remove()
            print("在第 " .. i .. " 次检查时移除了 Ocean Curse.")
            break
        else
            print("在第 " .. i .. " 次检查时未找到 Ocean Curse.")
        end
    else
        print("在第 " .. i .. " 次检查时未找到 Ocean Curse.")
    end
    if i < maxChecks then
        task.wait(checkInterval)
    end
end
    end,
})
Button:Set("Ocean Curse","点击")
local Button = Tab1:CreateButton({
    Name = "Soul Curse",
    Interact = "Click",
    Callback =function()
local maxChecks = 100
local checkInterval = 3 -- 秒

for i = 1, maxChecks do
    local mob = game.Workspace.Objects.Mobs:FindFirstChild("Soul Curse")
    if mob then
        local head = mob:FindFirstChild("Head")
        if head then
            head:remove()
            print("在第 " .. i .. " 次检查时移除了 Soul Curse")
            break
        else
            print("在第 " .. i .. " 次检查时未找到 Soul Curse")
        end
    else
        print("在第 " .. i .. " 次检查时未找到 Soul Curse")
    end
    if i < maxChecks then
        task.wait(checkInterval)
    end
end
    end,
})
Button:Set("Soul Curse","点击")
local Button = Tab1:CreateButton({
    Name = "Volcano Curse",
    Interact = "Click",
    Callback =function()
local maxChecks = 100
local checkInterval = 3 -- 秒

for i = 1, maxChecks do
    local mob = game.Workspace.Objects.Mobs:FindFirstChild("Volcano Curse")
    if mob then
        local head = mob:FindFirstChild("Head")
        if head then
            head:remove()
            print("在第 " .. i .. " 次检查时移除了 Volcano Curse")
            break
        else
            print("在第 " .. i .. " 次检查时未找到 Volcano Curse ")
        end
    else
        print("在第 " .. i .. " 次检查时未找到 Volcano Curse ")
    end
    if i < maxChecks then
        task.wait(checkInterval)
    end
end
    end,
})
Button:Set("Volcano Curse","点击")
local Tab2 = Window:CreateTab("Fast Farm", 4483362458) -- Title, Image
local Label = Tab2:CreateLabel("如果卡了视角,想自己控制视角就重置角色")
Label:Set("如果卡了视角,想自己控制视角就重置角色")

local function startQuestLoop()
    isQuestLooping = true
    while isQuestLooping do
        local questArgs = {
            [1] = {
                ["type"] = "Exorcise",
                ["set"] = "Yuki Fortress Set",
                ["rewards"] = {
                    ["essence"] = 4,
                    ["cash"] = 6002,
                    ["exp"] = 700000,
                    ["chestMeter"] = 75
                },
                ["rewardsText"] = "6002 | 700000 经验 | 4 Mission Essence",
                ["difficulty"] = 4,
                ["title"] = "已位居",
                ["amount"] = 1,
                ["level"] = 240,
                ["subtitle"] = "Bro是快男💀",
                ["grade"] = "Grade 1"
            }
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Server"):WaitForChild("Data"):WaitForChild("TakeQuest"):InvokeServer(unpack(questArgs))
        task.wait(0.3)
        if not isQuestLooping then
            break
        end
    end
end

-- 创建 "TakeQuest" 循环的切换按钮
local QuestToggle = Tab2:CreateToggle({
   Name = "诅咒(FAST)",
   CurrentValue = false,
   Flag = "QuestToggle",
   Callback = function(Value)
       isQuestLooping = Value
       if isQuestLooping then
           startQuestLoop()
       end
   end,
})

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Workspace = game:GetService("Workspace")
local LocalPlayer = Players.LocalPlayer
local isLooping = false
-- 定义传送函数
local function teleportAboveFingerBearer(Grade2Curse)
    if Grade2Curse then
        local humanoid = Grade2Curse:FindFirstChild("Humanoid")
        if humanoid then
            local position = humanoid.RootPart.Position
            local new_position = position + Vector3.new(0,30, 0)  -- 向上移动5个单位
            LocalPlayer.Character.HumanoidRootPart.Position = new_position
            task.wait(0.1)
            LocalPlayer.Character.HumanoidRootPart.CanCollide = true

        end
    end
end
-- 定义开始循环的函数
local function startLoop()
    isLooping = true
    while isLooping do
        local Grade2Curse = Workspace:FindFirstChild("Objects") and Workspace.Objects:FindFirstChild("Mobs") and Workspace.Objects.Mobs:FindFirstChild("Grade 2 Curse")
        if Grade2Curse and Grade2Curse:FindFirstChild("Humanoid") then
local args = {
    [1] = 1,
    [2] = {}
}

local mobsFolder = workspace:WaitForChild("Objects"):WaitForChild("Mobs")
for _, mob in pairs(mobsFolder:GetChildren()) do
    if mob.Name == "Grade 2 Curse" then
        table.insert(args[2], mob:WaitForChild("Humanoid"))
    end
end
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Server"):WaitForChild("Combat"):WaitForChild("M1"):FireServer(unpack(args))
            teleportAboveFingerBearer(Grade2Curse)  -- 调用传送函数
        else
            isLooping = false
            break
        end
        task.wait(0.03)  -- 防止过快执行
    end
end

-- 定义切换循环的函数
local function toggleLoop(Value)
    isLooping = Value
    if isLooping then
        startLoop()
    end
end

-- 创建按钮
local Toggle = Tab2:CreateToggle({
   Name = "Grade2Curse(Fast)",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = toggleLoop,
})
local Button = Tab2:CreateButton({
   Name = "防挂机",
   Interact = 'Click',
   Callback = function()
   -- Anti-AFK 脚本
-- 通过模拟玩家的移动来防止AFK

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local AFK_TIMEOUT = 300 -- AFK 超时时间（秒）
local MOVE_INTERVAL = 60 -- 移动间隔（秒）

local player = Players.LocalPlayer
local character = player and player.Character or player:WaitForChild("Character")
local humanoid = character:FindFirstChildOfClass("Humanoid")

if not humanoid then
    error("无法找到玩家的 Humanoid")
end

local lastMoveTime = os.time()
local function simulateMovement()
    local currentTime = os.time()
    if currentTime - lastMoveTime > AFK_TIMEOUT then
        local moveDirection = Vector3.new(0, 0, 1) -- 假设玩家向前移动
        humanoid:Move(moveDirection, false)
        lastMoveTime = currentTime
        print("模拟了一次移动")
    end
end

-- 定期检查并模拟移动
while true do
    simulateMovement()
    task.wait(MOVE_INTERVAL)
end
   end,
})
Button:Set("防挂机","点击")
local Tab3 = Window:CreateTab("返回", 4483362458) -- Title, Image
local Button = Tab3:CreateButton({
   Name = "返回原来的",
   Interact = 'Click',
   Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/DCLZH1/man/refs/heads/main/咒术无限.lua",true))()
   end,
})
Button:Set("返回原来的","点击")
