local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")

local player = Players.LocalPlayer
local remotes = ReplicatedStorage:WaitForChild("Remotes")
local turnDecision = remotes:WaitForChild("TurnDecision")
local enemiesFolder = workspace:WaitForChild("Enemies")

local STRIKE = "Strike"
local CROSS_SLASH = "Cross Slash"

local energy = 0
local lastTargetName = nil
local actionSentForCurrentTurn = false

local function getWeakestEnemy()
    local weakestEnemy
    local minHp = math.huge

    for _, enemy in ipairs(enemiesFolder:GetChildren()) do
        local humanoid = enemy:FindFirstChildOfClass("Humanoid")
        if humanoid and humanoid.Health > 0 and humanoid.Health < minHp then
            minHp = humanoid.Health
            weakestEnemy = enemy
        end
    end

    return weakestEnemy
end

local function hasTurnUIReady()
    local playerGui = player:FindFirstChildOfClass("PlayerGui")
    if not playerGui then
        return false
    end

    for _, gui in ipairs(playerGui:GetDescendants()) do
        if gui:IsA("GuiObject") and gui.Name == "Buttons" and gui.Visible then
            local screen = gui:FindFirstAncestorWhichIsA("ScreenGui")
            if screen and screen.Enabled then
                return true
            end
        end
    end

    return false
end

local function focus()
    turnDecision:FireServer("Focus")
    energy += 1
    lastTargetName = nil
    print("[AUTO] Focus")
end

local function castAbility(target, abilityName)
    turnDecision:FireServer("Ability", target, abilityName, false)
    print(string.format("[AUTO] %s -> %s", abilityName, target.Name))
end

local function performAction()
    local target = getWeakestEnemy()
    if not target then
        energy = 0
        lastTargetName = nil
        return
    end

    if lastTargetName == target.Name then
        castAbility(target, STRIKE)
        return
    end

    if energy >= 2 then
        castAbility(target, CROSS_SLASH)
        energy -= 2
        lastTargetName = target.Name
    else
        focus()
    end
end

local function tryAct(reason)
    if actionSentForCurrentTurn then
        return
    end

    if hasTurnUIReady() then
        actionSentForCurrentTurn = true
        print("[AUTO] Acting by", reason)
        performAction()
    end
end

local function connectTurnRemote(name)
    local remote = remotes:FindFirstChild(name)
    if remote and remote:IsA("RemoteEvent") then
        remote.OnClientEvent:Connect(function()
            actionSentForCurrentTurn = false
            tryAct("remote:" .. name)
        end)
    end
end

connectTurnRemote("UpdateTurn")
connectTurnRemote("TurnEvent")
connectTurnRemote("TurnTracker")
connectTurnRemote("FireTurn")

-- fallback: если ход начался без remotes, увидим UI и нажмём один раз
task.spawn(function()
    while task.wait(0.1) do
        if not hasTurnUIReady() then
            actionSentForCurrentTurn = false
        else
            tryAct("ui")
        end
    end
end)

print("[AUTO] warrior_auto.lua started")
