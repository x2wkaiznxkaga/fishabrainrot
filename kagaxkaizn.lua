game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "KaGa Hub x x2w_Kaizn",
    Text = "https://discord.gg/pMzfF9rvTx",
    Duration = 60,
    Button1 = "special thank for support us.",
    Callback = function(buttonPressed)
        if buttonPressed == "special thank for support us." then
            if setclipboard then
                setclipboard("https://discord.gg/pMzfF9rvTx")
                game:GetService("StarterGui"):SetCore("SendNotification", {
                    Title = "KaGa Hub x Kaizn/_>",
                    Text = "Thank for support us.",
                    Duration = 3
                })
            else
                game:GetService("StarterGui"):SetCore("SendNotification", {
                    Title = "sorry for this error",
                    Text = "not supported",
                    Duration = 10
                })
            end
        end
    end
})

local player = game.Players.LocalPlayer
local gui = player:WaitForChild("PlayerGui"):WaitForChild("Fishing"):WaitForChild("Container"):WaitForChild("ReelFrame")

local reelBar = gui:WaitForChild("ReelBar")
local target = gui:WaitForChild("Target")

game:GetService("RunService").RenderStepped:Connect(function()
    reelBar.Position = target.Position
    reelBar.AnchorPoint = target.AnchorPoint
end)
