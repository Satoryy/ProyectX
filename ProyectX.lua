print("Starter Script Bye Sato1622X")

local PlayerP = game.Players.LocalPlayer
local PlayerW = game.Workspace:WaitForChild(PlayerP.Name)
local Hum = PlayerW:WaitForChild("Humanoid")
local Mouse = PlayerP:GetMouse()
local UIS = game:GetService("UserInputService")

local FolderPartsFinder	= game.Workspace:FindFirstChild("FolderParts")
if not FolderPartsFinder then
	local FolderParts = Instance.new("Folder")
	FolderParts.Name = "FolderParts"
	FolderParts.Parent = game.Workspace
end


Mouse.Button1Down:Connect(function()
	

	local Part = Instance.new("Part")
	Part.Name = "Block"
	Part.Parent = game.Workspace:WaitForChild("FolderParts")

	if Hum.RigType == Enum.HumanoidRigType.R6 then
		local LeftLegR6 = PlayerW:WaitForChild("Left Leg")
		Part.Position = LeftLegR6.Position

	else
		local LeftLegR15 = PlayerW:WaitForChild("LeftFoot")
		Part.Position = LeftLegR15.Position
	end
	
end)

Mouse.Button2Down:Connect(function()
	
	local FolderPartsFinder	= game.Workspace:FindFirstChild("FolderParts")
	local FindPartsInTheFolder = FolderPartsFinder:FindFirstChild("Block")
	
	if not FindPartsInTheFolder then
		print("No Parts Finder")
	else
		FolderPartsFinder:ClearAllChildren()
		print("Parts Remove")
	end
	
end)

UIS.InputBegan:Connect(function(input)
	
	if input.KeyCode == Enum.KeyCode.Q then
		Hum.WalkSpeed = 100
	end
	
	if input.KeyCode == Enum.KeyCode.E then
		Hum.WalkSpeed = 16
	end
	
end)