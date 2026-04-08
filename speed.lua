return function()
    local player = game.Players.LocalPlayer
    
    local function setSpeed(speed)
        local character = player.Character
        if character then
            local humanoid = character:FindFirstChild("Humanoid")
            if humanoid then
                humanoid.WalkSpeed = speed
                print("スピード変更: " .. speed)
            end
        end
    end

    setSpeed(50)

    player.Chatted:Connect(function(msg)
        local num = tonumber(msg)
        if num then
            setSpeed(num)
        end
    end)
end
