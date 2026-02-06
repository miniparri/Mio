local part = script.Parent
local SPEED_BOOST = 50
local BOOST_TIME = 5 -- seconds

local function onTouch(hit)
	local character = hit.Parent
	local humanoid = character:FindFirstChild("Humanoid")

	if humanoid then
		local originalSpeed = humanoid.WalkSpeed
		humanoid.WalkSpeed = SPEED_BOOST

		wait(BOOST_TIME)

		if humanoid then
			humanoid.WalkSpeed = originalSpeed
		end
	end
end

part.Touched:Connect(onTouch)
