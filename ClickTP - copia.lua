local PlayerP = game.Players.LocalPlayer
local PlayerW = game.Workspace:WaitForChild(PlayerP.Name)
local Hum = PlayerW:WaitForChild("Humanoid")
local HumRP = PlayerW:WaitForChild("HumanoidRootPart")
local Mouse = PlayerP:GetMouse()

Mouse.Button1Down:Connect(function()
	if Mouse.Target == nil then
		print("You Cant Teleport In the Void or Air")
	else
		local mouseP = Mouse.Hit.Position
		HumRP.CFrame = CFrame.new(mouseP)
	end
end)