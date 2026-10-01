local LocalPlayer = game.Players.LocalPlayer

--Sprint script
loadstring(game:HttpGet("https://pastefy.app/T7yVIJRZ/raw"))()

--Message at the start

local mainGameSuccess, mainGame = pcall(function()

return require(LocalPlayer.PlayerGui:WaitForChild("MainUI"):WaitForChild("Initiator"):WaitForChild("Main_Game")) end)

if mainGameSuccess and mainGame and mainGame.caption then
  if game.ReplicatedStorage.GameData.DoorsOpened.Value ~= 0 then
    LocalPlayer.Character.Humanoid.Health = 0
    mainGame.caption("You must execute at door 0.", true)
  else
    mainGame.caption("Game turning radical...", true)
  end
  
  game.ReplicatedStorage.GameData.DoorsOpened.Changed:Connect(function()
  local number = game.ReplicatedStorage.GameData.DoorsOpened.Value

    if number == 1 then
      mainGame.caption("Radical initiated", true)
      task.wait(2)
      mainGame.caption("Mode by Zaydtruck on youtube", true)
    elseif number == 2 then
      mainGame.caption("Design and ideas...", true)
      task.wait(2)
      mainGame.caption("...still by Zaydtruck", true)
    elseif number == 3 then
      mainGame.caption("You won't finish it,", true)
      task.wait(1)
      mainGame.caption("So have fun while you can ! (I hope...)", true)
    elseif number == 4 then
      mainGame.caption("Good luck !", true)
    end
  end)
end


--Fog and ambience
loadstring(game:HttpGet("https://pastefy.app/75StWwnj/raw"))() --Fog
loadstring(game:HttpGet("https://pastefy.app/NoNoZyco/raw"))() --Ambience

--Doors where Storm may spawn
local StormSpawns = {
  14,
  21,
  28,
  35,
  42,
  49,
  56,
  70,
  77,
  84,
  98
}

--Doors where entities can't spawn
local EntitySpawns = {
  11,
  18,
  24,
  27,
  39,
  43,
  50,
  84,
  87,
  89,
  90,
  91,
  92,
  93,
  94,
  95,
  96,
  97,
  98,
  99
}

--Entities
local StormReplacements = {
  "https://pastefy.app/lcIYg856/raw", --Storm
  "https://pastefy.app/w912iNIp/raw", --Secrecy
  "https://pastefy.app/zbg4Dngh/raw" --Depth
}

Entities = {
  "https://pastefy.app/w912iNIp/raw", --Secrecy
  "https://pastefy.app/4hSQ7WgJ/raw", --Strive
  "https://pastefy.app/zbg4Dngh/raw", --Depth
  "https://pastefy.app/pMcvcVAF/raw" -- Truelnyte
}

--Making entities spawn
task.spawn(function()
    while true do
    task.wait(math.random(200, 300))
      if math.random(1, 3) == 3 then
        loadstring(game:HttpGet("https://pastefy.app/Z1dGi8A9/raw"))()
      end
    end
end)

game.ReplicatedStorage.GameData.DoorsOpened.Changed:Connect(function()
  local number = game.ReplicatedStorage.GameData.DoorsOpened.Value

  for i, StormSpawn in ipairs(StormSpawns) do
      if number == StormSpawn then
        local Random = math.random(1, #Entities)
        local RandomEntity = StormReplacements[Random]

        loadstring(game:HttpGet(RandomEntity))()
      end
  end

  for i, Spawn in ipairs(EntitySpawns) do
    if number ~= Spawn then
      local Random = math.random(1, #Entities)
      local RandomEntity = Entities[Random]

      loadstring(game:HttpGet(RandomEntity))()
    end
  end

  if number == 54 or number == 74 then
    loadstring(game:HttpGet("https://pastefy.app/rURpVWIV/raw"))()
  end

  if number == 50 then
    task.wait(5)
    loadstring(game:HttpGet("https://pastefy.app/kSk8o2RL/raw"))()
  end
end)
