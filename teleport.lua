local teleportDoor = script.Parent
local mydor = workspace.savepoint1 --name position part

local function onTouched(hit)
	local character = hit.Parent
	local humanoid = character:FindFirstChildOfClass("Humanoid")
	if humanoid then
		local player = game.Players:GetPlayerFromCharacter(character)
		if player then
			character:SetPrimaryPartCFrame(mydor.CFrame + Vector3.new(0, 3, 0)) 
		end
	end
end

teleportDoor.Touched:Connect(onTouched)
