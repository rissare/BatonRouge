local plr = game:GetService("Players").LocalPlayer
if plr:GetRankInGroup(13743188) == 2 then
    local NotificationBindable = Instance.new("BindableFunction")
    local function callback(Text)

        if Text == "Button1 text" then
            print ("Answer")
        end
    end

    NotificationBindable.OnInvoke = callback
    --
    game.StarterGui:SetCore("SendNotification",  {
        Title = "~";
        Text = "Successfully!";
        Icon = "";
        Duration = 5;
        Button1 = "Close";
        Callback = NotificationBindable;
    })
    while wait(0.1) do
        local args = {
            [1] = "StopWorking",
            [2] = 500
        }

        game:GetService("ReplicatedStorage").Work:FireServer(unpack(args))
    end
else
    plr:Kick("nigga ass")
end
