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

local function extractTurnOwnerName(payload)
    local payloadType = typeof(payload)

    if payloadType == "string" then
        return payload
    end

    if payloadType == "Instance" then
        if payload:IsA("Player") then
            return payload.Name
        end
        return payload.Name
    end

    if payloadType == "table" then
        local candidates = {
            payload.CurrentTurn,
            payload.currentTurn,
            payload.Turn,
            payload.turn,
            payload.Player,
            payload.player,
            payload.Owner,
            payload.owner,
            payload.Name,
            payload.name,
            payload[1],
        }

        for _, candidate in ipairs(candidates) do
            local name = extractTurnOwnerName(candidate)
            if name then
                return name
            end
        end
    end

    return nil
end

local function unlockAndTryTurn(reason)
    waitingForTurnResult = false
    print("[AUTO] unlock:", reason)
    doTurn()
end

local function onTurnSignal(payload, sourceName)
    if payload == true then
        unlockAndTryTurn(sourceName .. ":true")
        return
    end

    local ownerName = extractTurnOwnerName(payload)
    if ownerName and ownerName == player.Name then
        unlockAndTryTurn(sourceName .. ":" .. ownerName)
    end
end

local function connectRemoteSignal(remoteName)
    local remote = remotes:FindFirstChild(remoteName)
    if not remote or not remote:IsA("RemoteEvent") then
        return
    end

    remote.OnClientEvent:Connect(function(payload)
        onTurnSignal(payload, remoteName)
    end)
end

connectRemoteSignal("UpdateTurn")
connectRemoteSignal("TurnEvent")
connectRemoteSignal("TurnTracker")
connectRemoteSignal("FireTurn")

-- Fallback без тайминга атаки: если видим, что ход снова доступен в UI, снимаем lock.
task.spawn(function()
    while task.wait(0.15) do
        if waitingForTurnResult then
            local playerGui = player:FindFirstChildOfClass("PlayerGui")
            local battleGui = playerGui and playerGui:FindFirstChild("BattleGui")
            local buttonFrame = battleGui and battleGui:FindFirstChild("Buttons")

            if battleGui and battleGui.Enabled and buttonFrame and buttonFrame.Visible then
                unlockAndTryTurn("battle_gui_ready")
            end
        end
    end
end)

task.wait(1)
doTurn()
