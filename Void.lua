-- Void GUI
-- By Nexxor#1824


--[[
 /$$    /$$  /$$$$$$  /$$$$$$ /$$$$$$$ 
| $$   | $$ /$$__  $$|_  $$_/| $$__  $$
| $$   | $$| $$  \ $$  | $$  | $$  \ $$
|  $$ / $$/| $$  | $$  | $$  | $$  | $$
 \  $$ $$/ | $$  | $$  | $$  | $$  | $$
  \  $$$/  | $$  | $$  | $$  | $$  | $$
   \  $/   |  $$$$$$/ /$$$$$$| $$$$$$$/
    \_/     \______/ |______/|_______/ 
]]
--[[
         .-') _   ('-.  ) (`-.     ) (`-.                 _  .-')   
    ( OO ) )_(  OO)  ( OO ).    ( OO ).              ( \( -O )  
,--./ ,--,'(,------.(_/.  \_)-.(_/.  \_)-..-'),-----. ,------.  
|   \ |  |\ |  .---' \  `.'  /  \  `.'  /( OO'  .-.  '|   /`. ' 
|    \|  | )|  |      \     /\   \     /\/   |  | |  ||  /  | | 
|  .     |/(|  '--.    \   \ |    \   \ |\_) |  |\|  ||  |_.' | 
|  |\    |  |  .--'   .'    \_)  .'    \_) \ |  | |  ||  .  '.' 
|  | \   |  |  `---. /  .'.  \  /  .'.  \   `'  '-'  '|  |\  \  
`--'  `--'  `------''--'   '--''--'   '--'    `-----' `--' '--' 
]]

function noti(text)
    game.StarterGui:SetCore("SendNotification", {
        Title = "Void GUI"; 
        Text = text; 
        Duration = 5;
    })
end
noti("Welcome To Void GUI v2.0")
wait(0.5)
noti("Please Wait Until Fully Loaded...")
wait(1)
noti("Loaded! Made By Nexxor#1824")

function ArrestAll()
    spawn(function()
	for i, v in pairs(game.Teams.Criminals:GetPlayers()) do
		if v.Name ~= game.Players.LocalPlayer.Name then
			local inp = 10
			repeat
				wait()
				inp = inp-1
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 1)
                game.Workspace.Remote.arrest:InvokeServer(v.Character.HumanoidRootPart)
			until inp == 0
            noti("Arested: " ..v.Name)
		end
	end
    for i, v in pairs(game.Teams.Inmates:GetPlayers()) do
        if v.Name ~= game.Players.LocalPlayer.Name then
            num1 = 3
            repeat
            wait()
            num1 = num1-1
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 1)
            game.Workspace.Remote.arrest:InvokeServer(v.Character.HumanoidRootPart)
            until num1 == 0
        end
end
end)
end
function Outside()
    spawn(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(283, 72, 2213)
    end)
end
function Guns()
    spawn(function()
        workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
        workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["AK-47"].ITEMPICKUP)
        workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["M9"].ITEMPICKUP)
    end)
end
function YardTP()
    spawn(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(713, 97, 2470)
    end)
end
function RMDoors()
    spawn(function()
	game.Workspace.Doors:Destroy()
    end)
end
function PoliceTP()
    spawn(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(838.245361, 99.9899826, 2307.9397)
    end)
end
function crim()
    spawn(function()
        local head = game.Players.LocalPlayer.Character.Head
        firetouchinterest(head, game:GetService("Workspace")["Criminals Spawn"].SpawnLocation, 0)
        wait(0.02)
        firetouchinterest(head, game:GetService("Workspace")["Criminals Spawn"].SpawnLocation, 1)
    end)
end
function crimbase()
    spawn(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-910.591553, 95.1272888, 2132.29419)
    end)
end
function nspawn()
    spawn(function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(884.563965, 27.7899857, 2348.13843)
    end)
end
function Acuse(plyr)
    spawn(function()
        local playerCheck2 = game.Players:FindFirstChild(plyr)
        if playerCheck2 == nil then
            noti("Not A Real Player")
        else
            function say(i) game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(i, "ALL") end
            say(plyr.. " is hacking")
            wait(5)
            say(plyr.. " stop hacking")
            wait(3)
            say("WTH " ..plyr.. " Just teleported to me")
            wait(4)
            say(plyr.. " just auto arrested me :(")
        end
    end)
end




















-- Libary Properties
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("Void Gui v2.0", "BloodTheme")
--

-- TABS
    local Main = Window:NewTab("Main")
    local Tel = Window:NewTab("Teleports")
    local Abuse = Window:NewTab("Abusive")
    local Credits = Window:NewTab("Credits")
--

-- Sections
    local Section = Main:NewSection("Main")
    local Section2 = Main:NewSection("Player Mods")
    local Teams = Main:NewSection("Change Teams")
    local Section3 = Main:NewSection("Misc")
--

Section:NewButton("Get Guns", "Gets All Guns (except paid ones you loser)", function()
    Guns()
end)
Section:NewButton("Remove Doors", "Removes All Doors On The Map (client side ofc)", function()
    RMDoors()
end)
Section2:NewButton("Walkspeed +10", "Adds 10 To Your Walkspeed", function()
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = game.Players.LocalPlayer.Character.Humanoid.WalkSpeed + 10
end)
Section2:NewButton("Walkspeed -10", "Remove 10 From Your Walkspeed", function()
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = game.Players.LocalPlayer.Character.Humanoid.WalkSpeed - 10
end)
Section2:NewButton("Jumppower +10", "Adds 10 To Your Jumppower", function()
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = game.Players.LocalPlayer.Character.Humanoid.JumpPower + 10
end)
Section2:NewButton("Jumppower -10", "Removes 10 From Your Jumppower", function()
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = game.Players.LocalPlayer.Character.Humanoid.JumpPower - 10
end)
Section2:NewButton("Hip Height +1", "Jesus...", function()
    game.Players.LocalPlayer.Character.Humanoid.HipHeight = game.Players.LocalPlayer.Character.Humanoid.HipHeight + 1
end)
Section2:NewButton("Hip Height -1", "Jesus...", function()
    game.Players.LocalPlayer.Character.Humanoid.HipHeight = game.Players.LocalPlayer.Character.Humanoid.HipHeight - 1
end)
Section2:NewButton("Infinite Jump", "AKA Air Jump", function()
local Player = game:GetService'Players'.LocalPlayer;
local UIS = game:GetService'UserInputService';

_G.JumpHeight = 50;

function Action(Object, Function) if Object ~= nil then Function(Object); end end

UIS.InputBegan:connect(function(UserInput)
    if UserInput.UserInputType == Enum.UserInputType.Keyboard and UserInput.KeyCode == Enum.KeyCode.Space then
        Action(Player.Character.Humanoid, function(self)
            if self:GetState() == Enum.HumanoidStateType.Jumping or self:GetState() == Enum.HumanoidStateType.Freefall then
                Action(self.Parent.HumanoidRootPart, function(self)
                    self.Velocity = Vector3.new(0, _G.JumpHeight, 0);
                end)
            end
        end)
    end
end)
end)
local acuseplyr
Section3:NewTextBox("Acuser", "Acuse A Player Of Hacking", function(plyr)
    acuseplyr = plyr
end)
Section3:NewButton("Start Acuse!", "Starts Acuser v2", function()
    Acuse(acuseplyr)
end)


-- Teleports Page

-- Sections
    local Section = Tel:NewSection("Teleports")
--
Section:NewButton("Yard", "Teleports To Yard", function()
    YardTP()
    noti("Teleported!")
end)
Section:NewButton("Criminal Base", "Teleports To Criminal Base", function()
    crimbase()
    noti("Teleported!")
end)
Section:NewButton("Police Spawn", "Teleports To Police Spawn", function()
    PoliceTP()
    noti("Teleported!")
end)
Section:NewButton("Outside Of Prison", "Teleports Outside Of Prison", function()
    Outside()
    noti("Teleported!")
end)
Section:NewButton("Netural Spawn", "Teleports To Netural Spawn aka Safe Place", function()
    nspawn()
    noti("Teleported!")
end)
Section:NewButton("Secret Warehouse", "Not Many People Know About This Place ;)", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-920, 95, 1990)
    noti("Teleported!")
end)
local playerto
Section:NewTextBox("Teleport To A Player", "Teleports To A Player? -_-", function(txt)
	noti("Player Set")
    playerto = txt
end)
Section:NewButton("Teleport To Player", "eleports To A Player? -_-", function()
    local playerCheck = game.Players:FindFirstChild(playerto)
    if playerCheck == nil then
        noti("are you a retard? thats not a real player -_-")
    else
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[playerto].Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 1)
    end
end)
-- Abuse Page

-- Sections
    local Section = Abuse:NewSection("!! ABUSIVE SCRIPTS !!")
--
Section:NewButton("Arrest All", "Arrest Every Criminal (even if your not police ;)  )", function()
    ArrestAll()
end)
Teams:NewButton("Criminal", "Arrest Every Criminal (even if your not police ;)  )", function()
    crim()
end)
Teams:NewButton("Police", "Change Team To Police", function()
workspace.Remote.TeamEvent:FireServer("Bright blue")
end)
Teams:NewButton("Inmate", "Change Team To Inmate", function()
workspace.Remote.TeamEvent:FireServer("Bright orange")
end)
Teams:NewButton("Neutral", "Change Team To Neutral", function()
workspace.Remote.TeamEvent:FireServer("Medium stone grey")
end)
Teams:NewButton("Red", "Change Name Color To Red", function()
    local savedcf = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    local savedcamcf = workspace.CurrentCamera.CFrame
    game.workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new("Bright red").Name)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
    game.workspace.CurrentCamera.CFrame = savedcamcf
end)
Teams:NewButton("Purple", "Change Name Color To Purple", function()
    local savedcf = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    local savedcamcf = workspace.CurrentCamera.CFrame
    game.workspace.Remote.loadchar:InvokeServer(nil, BrickColor.new("Royal purple").Name)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcf
    game.workspace.CurrentCamera.CFrame = savedcamcf
end)

-- Credits

-- Sections
    local Section = Credits:NewSection("Credits")
--
Section:NewLabel("Made By Nexxor#1824")
Section:NewLabel("UI Libary: Kavo Libary Blood Theme")
