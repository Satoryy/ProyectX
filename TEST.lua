local PlayerP = game.Players.LocalPlayer
local PlayerW = game.Workspace:WaitForChild(PlayerP.Name)
local Humanoid = PlayerW:WaitForChild("Humanoid")
local UIS = game:GetService("UserInputService")

UIS.InputBegan:Connect(function(input)
	if input.KeyCode == Enum.KeyCode.F then
		Humanoid.Health = 100
	end
end)
