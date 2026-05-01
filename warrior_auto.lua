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

local function getBattleButtonsVisible()
    local playerGui = player:FindFirstChildOfClass("PlayerGui")
    if not playerGui then
        return false
    end

    local battleGui = playerGui:FindFirstChild("BattleGui")
    if not battleGui or not battleGui.Enabled then
        return false
    end

    local buttons = battleGui:FindFirstChild("Buttons")
    if not buttons then
        return false
    end

    return buttons.Visible
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

-- Главный цикл: действие только когда UI реально разрешает ход.
task.spawn(function()
    while task.wait(0.1) do
        local buttonsVisible = getBattleButtonsVisible()

        if buttonsVisible and not actionSentForCurrentTurn then
            actionSentForCurrentTurn = true
            performAction()
        elseif not buttonsVisible and actionSentForCurrentTurn then
            -- Новый ход будет, когда кнопки снова появятся.
            actionSentForCurrentTurn = false
        end
    end
end)

print("[AUTO] warrior_auto.lua started")
