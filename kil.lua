local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/oicx7154/UI/refs/heads/main/Rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "咒术无限",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "咒术无限",
   LoadingSubtitle = "by L_Dxezd",
   Theme = "Serenity", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = false,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Big Hub"
   },

   Discord = {
      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

Rayfield:Notify({
   Title = "提示!",
   Content = "这是早期访问,你被封了不管我事,但是你能告诉我你开了什么被封",
   Duration = 6.5,
   Image = "badge-check",
})
Rayfield:Notify({
   Title = "提示!",
   Content = "等我添加关于主线的传送",
   Duration = 6.5,
   Image = "badge-check",
})
Rayfield:Notify({
   Title = "提示!",
   Content = "420级那里打宿傩任务不要开秒杀!!!!!因为有动画!!!!!",
   Duration = 6.5,
   Image = "badge-check",
})
local Tab = Window:CreateTab("功能", "file-badge")
local Button = Tab:CreateButton({
    Name = "删除真人",
    Interact = "Click",
    Callback =function()
    local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
rootPart.CFrame = workspace.Objects.Spawns.BossSpawn.CFrame
task.wait(3.5)
local maxChecks = 100
local checkInterval = 3 -- 秒

for i = 1, maxChecks do
    local mob = game.Workspace.Objects.Mobs:FindFirstChild("Soul Curse")
    if mob then
        local head = mob:FindFirstChild("Head")
        if head then
            head:remove()
        end
        
    end
    if i < maxChecks then
        task.wait(checkInterval)
    end
end
end
})
local isLooping = false
local function getVolcanoCurseHumanoid()
    local mobs = game:GetService("Workspace").Objects.Mobs
    local volcanoCurse = mobs:FindFirstChild("Soul Curse")
    if volcanoCurse then
        return volcanoCurse:FindFirstChild("Humanoid")
    end
    return nil
end

local function setVolcanoCurseHealthToZero()
    local humanoid = getVolcanoCurseHumanoid()
    if humanoid then
        humanoid.Health = 0
    end
end

local function loopSettingHealth()
    while isLooping do
        setVolcanoCurseHealthToZero()
        task.wait(0.1)
    end
end

local function toggleLoop(value)
    if value then
        isLooping = true
local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
rootPart.CFrame = workspace.Objects.Spawns.BossSpawn.CFrame
task.wait(2)
        task.spawn(loopSettingHealth)

    else
        isLooping = false
    end
end

local Toggle = Tab:CreateToggle({
   Name = "真人血量调成0(同样秒杀)",
   CurrentValue = false,
   Flag = "Toggle1",
   Callback = toggleLoop,
})
local Button = Tab:CreateButton({
    Name = "删除喷壶",
    Interact = "Click",
    Callback =function()
    local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
rootPart.CFrame = workspace.Objects.Spawns.BossSpawn.CFrame
task.wait(8)
local maxChecks = 100
local checkInterval = 3 -- 秒

for i = 1, maxChecks do
    local mob = game.Workspace.Objects.Mobs:FindFirstChild("Volcano Curse")
    if mob then
        local head = mob:FindFirstChild("Head")
        if head then
            head:remove()
        end
        
    end
    if i < maxChecks then
        task.wait(checkInterval)
    end
end
end
})
local isLooping = false
local function getVolcanoCurseHumanoid()
    local mobs = game:GetService("Workspace").Objects.Mobs
    local volcanoCurse = mobs:FindFirstChild("Volcano Curse")
    if volcanoCurse then
        return volcanoCurse:FindFirstChild("Humanoid")
    end
    return nil
end

local function setVolcanoCurseHealthToZero()
    local humanoid = getVolcanoCurseHumanoid()
    if humanoid then
        humanoid.Health = 0
    end
end

local function loopSettingHealth()
    while isLooping do
        setVolcanoCurseHealthToZero()
        task.wait(0.1)
    end
end

local function toggleLoop(value)
    if value then
        isLooping = true
local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
rootPart.CFrame = workspace.Objects.Spawns.BossSpawn.CFrame
        task.spawn(loopSettingHealth)

    else
        isLooping = false
    end
end

local Toggle = Tab:CreateToggle({
   Name = "喷壶血量调成0(同样秒杀)",
   CurrentValue = false,
   Flag = "Toggle1",
   Callback = toggleLoop,
})
