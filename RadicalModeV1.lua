local LocalPlayer = game.Players.LocalPlayer

local runSeed = game.ReplicatedStorage.GameData.GameSeed.Value
local firstSeedDigit = tonumber(string.sub(tostring(runSeed), 1, 1))
print(firstSeedDigit)

local randomValue = Instance.new("NumberValue")
randomValue.Parent = workspace
local random = randomValue.Value

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

game.ReplicatedStorage.GameData.DoorsOpened.Changed:Connect(function()
  local number = game.ReplicatedStorage.GameData.DoorsOpened.Value
  if number == 1 then
    task.spawn(function()
      while true do
        task.wait(1)
        if random == 4 or random > 4 then
          random = 1
        else
          random = random + 1
        end

        print(random)
      end
    end)
  end
end)


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

}

if firstSeedDigit == 1 then
  EntitySpawns = {
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
elseif firstSeedDigit == 2 then
  EntitySpawns = {
    13,
    20,
    22,
    27,
    40,
    45,
    50,
    80,
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
elseif firstSeedDigit == 3 then
  EntitySpawns = {
    7,
    14,
    21,
    25,
    27,
    45,
    50,
    80,
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
elseif firstSeedDigit == 4 then
  EntitySpawns = {
    9,
    14,
    21,
    27,
    38,
    47,
    50,
    58,
    73,
    84,
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
elseif firstSeedDigit == 5 then
  EntitySpawns = {
    13,
    20,
    22,
    27,
    40,
    45,
    50,
    80,
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
elseif firstSeedDigit == 6 then
  EntitySpawns = {
    7,
    14,
    21,
    25,
    27,
    45,
    50,
    80,
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
elseif firstSeedDigit == 7 then
  EntitySpawns = {
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
elseif firstSeedDigit == 8 then
  EntitySpawns = {
    9,
    14,
    21,
    27,
    38,
    47,
    50,
    58,
    73,
    84,
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
elseif firstSeedDigit == 9 then
  EntitySpawns = {
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
end



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
    task.wait(200 + firstSeedDigit)
      loadstring(game:HttpGet("https://pastefy.app/Z1dGi8A9/raw"))()
    end
end)

game.ReplicatedStorage.GameData.DoorsOpened.Changed:Connect(function()
  local number = game.ReplicatedStorage.GameData.DoorsOpened.Value

  for i, StormSpawn in ipairs(StormSpawns) do
      if number == StormSpawn then
        loadstring(game:HttpGet("https://pastefy.app/lcIYg856/raw"))()
      end
  end

  for i, Spawn in ipairs(EntitySpawns) do
    if number == Spawn then
      local RandomEntity = Entities[random]

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
