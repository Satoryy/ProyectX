local PlayerP = game.Players.LocalPlayer
local PlayerW = game.Workspace:WaitForChild(PlayerP.Name)
local Humanoid = PlayerW:WaitForChild("Humanoid")

Humanoid.MaxHealth = 500
Humanoid.Health = 500