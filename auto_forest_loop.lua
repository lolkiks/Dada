-- Auto Forest Boss Loop (Roblox Lua)
-- Цель: быстро и стабильно доходить до босса леса, умирать там и начинать заново.
-- Скрипт работает поверх уже существующей игровой системы (Remote'ы не изобретаются, только вызываются).

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Workspace = game:GetService("Workspace")

local player = Players.LocalPlayer
local remotes = ReplicatedStorage:WaitForChild("Remotes")

local VotingEvent = remotes:WaitForChild("VotingEvent")
local TurnDecision = remotes:WaitForChild("TurnDecision")
local ClassSelect = remotes:FindFirstChild("ClassSelect")
local Upgrade = remotes:FindFirstChild("Upgrade")
local InvestStats = remotes:FindFirstChild("InvestStats")
local ReplayEvent = remotes:WaitForChild("ReplayEvent")

local CONFIG = {
	className = "Warrior",
	subclassPriority = {"Knight", "Rampager", "Grudge Settler"},
	abilityPriority = {"Cross Slash", "Strike"},
	focusFallback = true,
	preferSkipEvents = true,
	maxNoProgressSeconds = 24,
	deathCheckInterval = 0.4,
	actionCooldown = 0.12,
	runBootDelay = 0.75,
	maxReplayAttempts = 4,
}

local state = {
	runId = 0,
	lastActionAt = 0,
	lastProgressAt = 0,
	reachedForestBoss = false,
	replayAttempts = 0,
	busy = false,
}

local function now()
	return os.clock()
end

local function markProgress(reason)
	state.lastProgressAt = now()
	if reason then
		print("[AUTO LOOP] progress:", reason)
	end
end

local function safeFire(remote, ...)
	if not remote then
		return false, "remote missing"
	end
	local ok, err = pcall(function()
		remote:FireServer(...)
	end)
	if ok then
		state.lastActionAt = now()
		return true
	end
	warn("[AUTO LOOP] remote error:", remote.Name, err)
	return false, err
end

local function findEnemyByNames(names)
	local enemies = Workspace:FindFirstChild("Enemies")
	if not enemies then
		return nil
	end
	for _, name in ipairs(names) do
		local target = enemies:FindFirstChild(name)
		if target then
			return target
		end
	end
	return nil
end

local function sendAbility(nameList, targetNames)
	local target = findEnemyByNames(targetNames)
	if not target then
		return false
	end
	for _, abilityName in ipairs(nameList) do
		local ok = safeFire(TurnDecision, "Ability", target, abilityName, false)
		if ok then
			markProgress("ability " .. abilityName .. " -> " .. target.Name)
			return true
		end
	end
	return false
end

local function sendFocusFallback()
	if CONFIG.focusFallback then
		safeFire(TurnDecision, "Focus")
		markProgress("focus fallback")
		return true
	end
	return false
end

local function investWarriorStats()
	if not InvestStats then
		return
	end
	-- Пример из ТЗ: отправляем именно таблицу, упор в STR.
	safeFire(InvestStats, {STR = 8})
	task.wait(CONFIG.actionCooldown)
	-- Доп. попытка более безопасного распределения, если сервер не принял 8 сразу.
	safeFire(InvestStats, {STR = 5, CON = 3})
	markProgress("invest stats")
end

local function chooseClass()
	if not ClassSelect then
		return
	end
	safeFire(ClassSelect, CONFIG.className)
	task.wait(CONFIG.actionCooldown)
	for _, sub in ipairs(CONFIG.subclassPriority) do
		safeFire(ClassSelect, sub)
		task.wait(CONFIG.actionCooldown)
	end
	markProgress("class selection")
end

local function doInventoryPhaseActions()
	if Upgrade then
		safeFire(Upgrade, "AutoEquipBest")
		safeFire(Upgrade, "AutoCraftWarrior")
	end
	investWarriorStats()
	-- После инвентаря часто нужен Rest в ивенты.
	safeFire(VotingEvent, "Rest")
	markProgress("inventory done -> rest")
end

local function voteBestEffort(...)
	safeFire(VotingEvent, ...)
	task.wait(CONFIG.actionCooldown)
end

local function handleEventPayload(payload)
	if typeof(payload) ~= "table" then
		return
	end
	local eventName = tostring(payload.name or payload.eventName or payload[2] or "")
	local options = payload.options or payload.choices
	local lowerEvent = string.lower(eventName)

	if lowerEvent:find("forest", 1, true) and lowerEvent:find("boss", 1, true) then
		state.reachedForestBoss = true
		markProgress("forest boss reached")
	end

	if lowerEvent:find("strange man", 1, true) then
		voteBestEffort("Encounter", "Strange Man")
		voteBestEffort("Scene", "Approach")
		voteBestEffort("SceneClient", "Accept Offer")
		markProgress("handled Strange Man flow")
		return
	end

	if type(options) == "table" then
		for _, candidate in ipairs(options) do
			local text = string.lower(tostring(candidate))
			if text:find("class", 1, true) or text:find("train", 1, true) or text:find("strength", 1, true) then
				voteBestEffort("Scene", candidate)
				markProgress("event power option")
				return
			end
		end
		if CONFIG.preferSkipEvents then
			for _, candidate in ipairs(options) do
				local text = string.lower(tostring(candidate))
				if text:find("move on", 1, true) or text:find("ignore", 1, true) or text:find("leave", 1, true) then
					voteBestEffort("Scene", candidate)
					markProgress("event skip option")
					return
				end
			end
		end
	end

	voteBestEffort("Scene", "Approach")
	markProgress("event default approach")
end

local function onTurnEvent(_payload)
	if state.busy then
		return
	end
	state.busy = true

	local acted = false
	if not state.reachedForestBoss then
		acted = sendAbility(CONFIG.abilityPriority, {"Rat", "Pebble"})
		if not acted then
			acted = sendAbility(CONFIG.abilityPriority, {"Pebble", "Rat"})
		end
	else
		-- На боссе не сейвимся: чаще прожимаем focus/слабые удары, чтобы быстрее умереть.
		acted = sendFocusFallback()
		if not acted then
			safeFire(TurnDecision, "Ability", findEnemyByNames({"Forest Boss"}) or findEnemyByNames({"Boss"}), "Strike", false)
			markProgress("boss phase unsafe action")
			acted = true
		end
	end

	if not acted then
		sendFocusFallback()
	end

	task.wait(CONFIG.actionCooldown)
	state.busy = false
end

local function startRun()
	state.runId += 1
	state.reachedForestBoss = false
	state.replayAttempts = 0
	state.lastActionAt = now()
	markProgress("run start #" .. state.runId)

	task.wait(CONFIG.runBootDelay)
	chooseClass()
	doInventoryPhaseActions()

	-- "Start Game" не обязателен, но безопасно пробуем как fallback.
	voteBestEffort("Start Game")
	voteBestEffort("Ready")
	markProgress("ready sent")
end

local function tryReplay(reason)
	if state.replayAttempts >= CONFIG.maxReplayAttempts then
		warn("[AUTO LOOP] replay limit hit, soft reset run. reason:", reason)
		startRun()
		return
	end
	state.replayAttempts += 1
	safeFire(ReplayEvent)
	markProgress("replay requested: " .. tostring(reason))
	task.wait(1.5)
	startRun()
end

local function watchdogLoop()
	while true do
		task.wait(CONFIG.deathCheckInterval)
		local char = player.Character
		local hum = char and char:FindFirstChildOfClass("Humanoid")
		if hum and hum.Health <= 0 then
			tryReplay("death")
		end

		if now() - state.lastProgressAt > CONFIG.maxNoProgressSeconds then
			warn("[AUTO LOOP] no progress timeout, recovering")
			tryReplay("stuck-timeout")
		end
	end
end

local function wireEvents()
	local dialogueEvent = remotes:FindFirstChild("DialogueEvent")
	if dialogueEvent then
		dialogueEvent.OnClientEvent:Connect(handleEventPayload)
	end

	local sceneEvent = remotes:FindFirstChild("SceneEvent")
	if sceneEvent then
		sceneEvent.OnClientEvent:Connect(handleEventPayload)
	end

	local turnEvent = remotes:FindFirstChild("TurnEvent")
	if turnEvent then
		turnEvent.OnClientEvent:Connect(onTurnEvent)
	end

	ReplayEvent.OnClientEvent:Connect(function(msg)
		local text = string.lower(tostring(msg or ""))
		if text:find("defeat", 1, true) or text:find("lose", 1, true) then
			tryReplay("defeat-event")
		end
	end)
end

wireEvents()
startRun()
task.spawn(watchdogLoop)

print("[AUTO LOOP] Forest loop script started")
