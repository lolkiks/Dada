-- Auto Forest Boss Loop (Roblox Lua)
-- Цель: автоматически проходить старт леса, стараться скипать события,
-- приоритизировать усиление Warrior, доходить до босса и намеренно умирать,
-- чтобы цикл начинался заново.

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local player = Players.LocalPlayer
local remotes = ReplicatedStorage:WaitForChild("Remotes")

local VotingEvent = remotes:WaitForChild("VotingEvent")
local TurnDecision = remotes:WaitForChild("TurnDecision")
local ClassSelect = remotes:WaitForChild("ClassSelect")
local Upgrade = remotes:WaitForChild("Upgrade")
local InvestStats = remotes:WaitForChild("InvestStats")
local ReplayEvent = remotes:WaitForChild("ReplayEvent")

local CONFIG = {
	className = "Warrior",
	subclassPriority = {"Knight", "Rampager", "Grudge Settler"},
	preferSkipEvents = true,
	tryUpgradeOnInventory = true,
	deathCheckInterval = 0.5,
	actionDelay = 0.2,
}

local state = {
	inRun = false,
	reachedForestBoss = false,
	runId = 0,
}

local function safeFire(remote, ...)
	local ok, err = pcall(function()
		remote:FireServer(...)
	end)
	if not ok then
		warn("[AUTO LOOP] Remote error:", remote.Name, err)
	end
end

local function chooseClass()
	safeFire(ClassSelect, CONFIG.className)
	for _, sub in ipairs(CONFIG.subclassPriority) do
		safeFire(ClassSelect, sub)
		task.wait(0.05)
	end
end

local function investWarriorStats()
	-- Приоритет: STR/CON для Warrior
	for i = 1, 3 do
		safeFire(InvestStats, "STR", 1)
		safeFire(InvestStats, "CON", 1)
	end
end

local function doInventoryUpgrades()
	if not CONFIG.tryUpgradeOnInventory then
		return
	end
	-- Универсальные попытки прокачки (если есть ресурсы)
	safeFire(Upgrade, "AutoEquipBest")
	safeFire(Upgrade, "AutoCraftWarrior")
	investWarriorStats()
end

local function skipOrBestChoice(eventName, options)
	-- Базовая политика: скипать всё, кроме явной прокачки класса/stat.
	if not options then
		return nil
	end

	local lowerEvent = string.lower(tostring(eventName or ""))
	local boostKeywords = {
		"become", "class", "subclass", "train", "power", "stat", "knight", "rampager"
	}

	for idx, opt in ipairs(options) do
		local txt = string.lower(tostring(opt))
		for _, key in ipairs(boostKeywords) do
			if string.find(txt, key, 1, true) then
				return idx
			end
		end
	end

	if CONFIG.preferSkipEvents then
		for idx, opt in ipairs(options) do
			local txt = string.lower(tostring(opt))
			if string.find(txt, "move on", 1, true)
				or string.find(txt, "ignore", 1, true)
				or string.find(txt, "leave", 1, true)
				or string.find(txt, "pay no mind", 1, true)
			then
				return idx
			end
		end
	end

	return 1
end

local function onEventPrompt(payload)
	-- Ожидаемый формат payload зависит от вашей реализации.
	-- Здесь универсально обрабатываем таблицу с полями name/options.
	if typeof(payload) ~= "table" then
		return
	end

	local eventName = payload.name or payload.eventName or ""
	local options = payload.options or payload.choices

	if string.find(string.lower(eventName), "forest") and string.find(string.lower(eventName), "boss") then
		state.reachedForestBoss = true
	end

	local pick = skipOrBestChoice(eventName, options)
	if pick then
		safeFire(VotingEvent, pick)
	end
end

local function onBattleDecision(data)
	-- На обычных боях: атаковать базовым решением, чтобы быстро проходить.
	-- На боссе леса: если дошли, играем рискованно/без защиты, чтобы умереть и рестартнуть цикл.
	if state.reachedForestBoss then
		safeFire(TurnDecision, {
			action = "BasicAttack",
			target = "Self" -- намеренно плохое решение, если сервер поддерживает self-target
		})
	else
		safeFire(TurnDecision, {
			action = "BasicAttack",
			target = "LowestHP",
		})
	end
end

local function monitorDeathLoop()
	while true do
		task.wait(CONFIG.deathCheckInterval)
		local char = player.Character
		local hum = char and char:FindFirstChildOfClass("Humanoid")
		if hum and hum.Health <= 0 then
			-- После поражения запрашиваем повтор/новый запуск
			safeFire(ReplayEvent, "Replay")
			state.inRun = false
			state.reachedForestBoss = false
			state.runId += 1
			task.wait(2)
			chooseClass()
			doInventoryUpgrades()
			safeFire(VotingEvent, "Ready")
		end
	end
end

local function startRun()
	state.inRun = true
	state.reachedForestBoss = false
	chooseClass()
	doInventoryUpgrades()
	task.wait(CONFIG.actionDelay)
	safeFire(VotingEvent, "Ready")
end

-- Подписки
remotes:WaitForChild("DialogueEvent").OnClientEvent:Connect(onEventPrompt)
remotes:WaitForChild("SceneEvent").OnClientEvent:Connect(onEventPrompt)
remotes:WaitForChild("TurnEvent").OnClientEvent:Connect(onBattleDecision)
remotes:WaitForChild("ReplayEvent").OnClientEvent:Connect(function(msg)
	if tostring(msg):lower():find("defeat") then
		safeFire(ReplayEvent, "Replay")
	end
end)

-- Старт
startRun()
task.spawn(monitorDeathLoop)

print("[AUTO LOOP] Forest boss loop started")
