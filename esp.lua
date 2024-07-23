local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

-- Function to highlight a player's character
local function highlightPlayer(player)
  local character = player.Character or player.CharacterAdded:Wait()
  local highlight = Instance.new("Highlight")
  highlight.Parent = character
  highlight.FillColor = Color3.new(0.600000, 0.003922, 0.003922) -- Change color if needed
end

-- Continuously highlight all players (adjust interval)
RunService.Heartbeat:Connect(function()
  for _, player in pairs(Players:GetPlayers()) do
    highlightPlayer(player)
  end
end)
end
