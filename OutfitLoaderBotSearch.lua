if game.PlaceId == 4984400432 then  
end

    local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/ejlol2/ejLibrary/main/Library.lua"))()
    library.rank = "ej Outfit Loader v1.0"
    local Wm = library:Watermark("ej Outfit Loader v1.0")
    local FpsWm = Wm:AddWatermark("FPS: " .. library.fps)
    coroutine.wrap(function()
        while wait(.75) do
            FpsWm:Text("FPS: " .. library.fps)
        end
    end)()

    local Notif = library:InitNotifications()

    for i = 1,0,-2 do 
        task.wait(0.05)
        local LoadingXSX = Notif:Notify("Loading ej Outfit Loader - Search Bot", 3)
    end 

    library.title = "ej Outfit Loader v1.0 | Outfit Loader Search Bot"
    
    library:Introduction()
    wait(1)
    local Init = library:Init()
    local Tab1 = Init:NewTab("Main")
    local Section1 = Tab1:NewSection("Features")

    local Tab2 = Init:NewTab("Community")
    local Section2 = Tab2:NewSection("Discord")

    local Button2 = Tab1:NewButton("Start Search Bot", function()
        local id = game:GetService("Players").LocalPlayer.UserId
        local username = game:GetService("Players").LocalPlayer.Name
        getgenv().search = true
        if getgenv().search == true then
            while wait() do
                local args = {
                    [1] = id
                }
                game:GetService("ReplicatedStorage"):WaitForChild("\226\160\128\226\160\128\226\160\128\226\160\128\240\159\152\131_outfit_\226\160\129\226\160\128\226" ..
                    "\160\128\226\160\128\226\160\128\226\160\128\226\160\128\226\160\128\226\160\128\226\160\128" ..
                    "\226\160\128\226\160\128"):FireServer(unpack(args))
                warn("Currently botting searches for: ", username)
            end
        end    
    end)

    local Button3 = Tab2:NewButton("https://discord.gg/47AwBj5fUe - ej Hub Discord Server", function()
    end)
