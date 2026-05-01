local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")

local player = Players.LocalPlayer
local remotes = ReplicatedStorage:WaitForChild("Remotes")
local turnDecision = remotes:WaitForChild("TurnDecision")

local STRIKE = "Strike"
local CROSS_SLASH = "Cross Slash"

local energy = 0
local lastTargetName = nil
local actionSentForCurrentTurn = false

local function getEnemyContainers()
    local containers = {}

    local direct = workspace:FindFirstChild("Enemies")
    if direct then
        table.insert(containers, direct)
    end

    for _, obj in ipairs(workspace:GetChildren()) do
        if obj:IsA("Folder") and obj.Name:lower():find("enemies") and obj ~= direct then
            table.insert(containers, obj)
        end
    end

    return containers
end

local function getWeakestEnemy()
    local weakestEnemy
    local minHp = math.huge

    for _, container in ipairs(getEnemyContainers()) do
        for _, enemy in ipairs(container:GetChildren()) do
            local humanoid = enemy:FindFirstChildOfClass("Humanoid")
            if humanoid and humanoid.Health > 0 and humanoid.Health < minHp then
                minHp = humanoid.Health
                weakestEnemy = enemy
            end
        end
    end

    return weakestEnemy
end

local function hasAnyAliveEnemy()
    return getWeakestEnemy() ~= nil
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
        print("[AUTO] No target found")
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

    if hasAnyAliveEnemy() then
        actionSentForCurrentTurn = true
        print("[AUTO] Acting by", reason)
        performAction()
    end
end

local function connectTurnRemote(name)
    local remote = remotes:FindFirstChild(name)
    if remote and remote:IsA("RemoteEvent") then
        remote.OnClientEvent:Connect(function(...)
            actionSentForCurrentTurn = false
            tryAct("remote:" .. name)
        end)
    end
end

connectTurnRemote("UpdateTurn")
connectTurnRemote("TurnEvent")
connectTurnRemote("TurnTracker")
connectTurnRemote("FireTurn")
connectTurnRemote("TurnTimerEvent")

-- Fallback: если ремоуты не приходят, всё равно пытаемся походить, когда есть живые враги.
task.spawn(function()
    while task.wait(0.25) do
        if not hasAnyAliveEnemy() then
            actionSentForCurrentTurn = false
        else
            tryAct("fallback")
            -- если сервер не принял ход, следующий сигнал/цикл даст ещё попытку
            task.wait(0.1)
            actionSentForCurrentTurn = false
        end
    end
end)

print("[AUTO] warrior_auto.lua started")
