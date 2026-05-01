local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")

local player = Players.LocalPlayer
local remotes = ReplicatedStorage:WaitForChild("Remotes")
local turnDecision = remotes:WaitForChild("TurnDecision")
local updateTurn = remotes:WaitForChild("UpdateTurn")
local enemiesFolder = workspace:WaitForChild("Enemies")

local STRIKE = "Strike"
local CROSS_SLASH = "Cross Slash"

local energy = 0
local lastTargetName = nil
local waitingForTurnResult = false

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

local function doTurn()
    if waitingForTurnResult then
        return
    end

    local target = getWeakestEnemy()
    if not target then
        energy = 0
        lastTargetName = nil
        return
    end

    waitingForTurnResult = true

    -- Если продолжаем бить ту же цель, добиваем Strike (0 энергии)
    if lastTargetName == target.Name then
        castAbility(target, STRIKE)
        return
    end

    -- На новую цель стараемся дать Cross Slash при >=2 энергии
    if energy >= 2 then
        castAbility(target, CROSS_SLASH)
        energy -= 2
        lastTargetName = target.Name
    else
        focus()
    end
end

local function unlockAndTryTurn()
    task.wait(0.15)
    waitingForTurnResult = false
    doTurn()
end

updateTurn.OnClientEvent:Connect(function(turnData)
    -- На разных версиях игры turnData может быть bool, именем игрока или Player.
    local isOurTurn = false

    if turnData == true then
        isOurTurn = true
    elseif typeof(turnData) == "string" and turnData == player.Name then
        isOurTurn = true
    elseif typeof(turnData) == "Instance" and turnData == player then
        isOurTurn = true
    end

    if isOurTurn then
        unlockAndTryTurn()
    end
end)

-- Страховка: если UI активен и мы "зависли", попробуем разблокироваться.
task.spawn(function()
    while task.wait(0.2) do
        if waitingForTurnResult then
            local playerGui = player:FindFirstChildOfClass("PlayerGui")
            local battleGui = playerGui and playerGui:FindFirstChild("BattleGui")
            if battleGui and battleGui.Enabled then
                waitingForTurnResult = false
                doTurn()
            end
        end
    end
end)

-- Первый запуск после загрузки персонажа/UI.
task.wait(1)
doTurn()
