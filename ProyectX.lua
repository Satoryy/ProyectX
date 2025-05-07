local PlayerP = game.Players.LocalPlayer
local PlayerW = game.Workspace:WaitForChild(PlayerP.Name)
local Hum = PlayerW:WaitForChild("Humanoid")
local Mouse = PlayerP:GetMouse()

Mouse.Button1Down:Connect(function()
	
	local FolderPartsFinder	= game.Workspace:FindFirstChild("FolderParts")
	if not FolderPartsFinder then
		local FolderParts = Instance.new("Folder")
		FolderParts.Name = "FolderParts"
		FolderParts.Parent = game.Workspace
	end
	
	local Part = Instance.new("Part")
	Part.Name = "Block"
	Part.Parent = game.Workspace:WaitForChild("FolderParts")

	if Hum.RigType == Enum.HumanoidRigType.R6 then
		local LeftLegR6 = PlayerW:WaitForChild("Left Leg")
		Part.Position = LeftLegR6.Position
		print("The Rig Type Is R6")

	else
		local LeftLegR15 = PlayerW:WaitForChild("LeftFoot")
		Part.Position = LeftLegR15.Position
		print("The Rig Type Is R15")
	end
end)

