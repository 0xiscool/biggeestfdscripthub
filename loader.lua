local baseUrl = "https://raw.githubusercontent.com/0xiscool/biggeestfdscripthub/refs/heads/main/scripts/"

local scripts = {
    "Adonis.txt", "Alteris Huge Sword.lua", "Anime laptop.txt", "Anti-Suit.txt", "Argentum.lua",
    "Artillrey_Beacon.txt", "Asgore Color Changing Trident.lua", "Attack on Titan (Swords).txt",
    "Barrel_War_Machine.txt", "Baseplate.txt", "Blue saber.lua", "Bow.txt", "BrackHub 4.0.lua",
    "Broa.lua", "Bulldogs Pistols.lua", "C00lGui for Rc7(2) (1).txt", "C00lKid Gui.txt", "Cerberus Scythe.lua",
    "Chaosnity.lua", "Crimson Fate.txt", "Crystal Warden.lua", "Dark Fighting.lua", "Dark Zerioth.lua",
    "Dex.txt", "Dick_Gun.txt", "Dragon Power.txt", "Dual Revys.lua", "Dubstep Gun.txt", "Evelyn.txt",
    "Fairy.lua", "Glock.lua", "God_Sword_legend27.txt", "Grab_Knife.txt", "Grabknifev3.txt", "Gyro_Gun.txt",
    "Hades Blade.lua", "IY.txt", "Influx.txt", "InsertModel.txt", "Kitty_Kat_Boxing_Gloves.txt", "Kohls admin.txt",
    "Leagues_Galaga.txt", "Light Blade.lua", "LostSoul.txt", "Moon_Man.txt", "Mystic warrior.txt",
    "Neon Laser Launcher.lua", "New_flash.lua", "Noobicider.txt", "Pheonix.txt", "Piercer.lua",
    "Pink Dual Laser Pistols.lua", "Rainbow Assasin.lua", "Rainbow_Titan.txt", "Ravager Gauntlets.lua",
    "Red Spider.lua", "Revolver.txt", "RoXploit_Patch.txt", "Roboto.lua", "Saitama.lua", "Sans Thing.lua",
    "Shadow.lua", "Subsitution_Sword_VERY_RARE.txt", "Suicide Gun.lua", "Super Sayan.lua", "Teleport Tool.lua",
    "The Power of Christ Compels you.lua", "TheHappyButton.txt", "Trap rifle.txt", "Twin-Beast.lua",
    "Ultima & Gun.lua", "Ultimate_PePe_3.0_Script.txt", "Undyne.lua", "V3rmillion TABS.txt", "VaporGun.txt",
    "Vortex Ninja.lua", "Xester.txt", "YourMom Gui.txt", "Zenatic.lua", "admin_patcch.txt", "anon all.txt",
    "bird_wings.txt", "book of wisdom.txt", "elysian.txt", "eren titan.txt", "esp.txt", "eyeball.txt",
    "fencing fd op script.txt", "grab knife.txt", "green long sword.lua", "la in 2025.txt", "live event test.txt",
    "mlg particles.txt", "nebula v2.txt", "neon gun.lua", "neon orb test.txt", "neonyleaderboardtest.txt",
    "rap gui.txt", "reanimated.txt", "red vortex.lua", "rockysadmin.txt", "rotate and part tool.txt",
    "roxploitv4.txt", "rpg.txt", "sigma sigma boy.txt", "skeleton skybox.txt", "staff.txt", "sword script.txt",
    "test.txt", "topk3k 3.0.txt", "topkek 4.0.txt", "wingz.txt", "wyd form.txt"
}

local gui = Instance.new("ScreenGui", game.Players.LocalPlayer:WaitForChild("PlayerGui"))
gui.Name = "0xiansFDLibrary"

local frame = Instance.new("Frame", gui)
frame.Size = UDim2.new(0, 450, 0, 600)
frame.Position = UDim2.new(0.5, -225, 0.5, -300)
frame.BackgroundColor3 = Color3.fromRGB(35, 35, 50)
frame.BorderSizePixel = 0
frame.Active = true
frame.Draggable = true

local title = Instance.new("TextLabel", frame)
title.Size = UDim2.new(1, 0, 0, 50)
title.Position = UDim2.new(0, 0, 0, 0)
title.Text = "0xian's FD Library"
title.Font = Enum.Font.GothamBold
title.TextSize = 26
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.BackgroundTransparency = 1

local discord = Instance.new("TextLabel", frame)
discord.Size = UDim2.new(1, 0, 0, 30)
discord.Position = UDim2.new(0, 0, 0, 50)
discord.Text = "Discord: discord.gg/TNRDA3Fz8S"
discord.Font = Enum.Font.Gotham
discord.TextSize = 18
discord.TextColor3 = Color3.fromRGB(200, 200, 255)
discord.BackgroundTransparency = 1

local scrollingFrame = Instance.new("ScrollingFrame", frame)
scrollingFrame.Size = UDim2.new(1, -20, 0, 480)
scrollingFrame.Position = UDim2.new(0, 10, 0, 90)
scrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 100)
scrollingFrame.ScrollBarThickness = 8
scrollingFrame.BackgroundTransparency = 1

local layout = Instance.new("UIListLayout", scrollingFrame)
layout.Padding = UDim.new(0, 10)

local function createButton(name, file)
    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(1, -20, 0, 40)
    btn.Position = UDim2.new(0, 10, 0, 0)
    btn.Text = name
    btn.BackgroundColor3 = Color3.fromRGB(58, 50, 98)
    btn.TextColor3 = Color3.fromRGB(255, 255, 255)
    btn.Font = Enum.Font.Gotham
    btn.TextSize = 18
    btn.Parent = scrollingFrame

    btn.MouseButton1Click:Connect(function()
        local url = baseUrl .. file
        loadstring(game:HttpGet(url))()
    end)
end

for _, scriptFile in ipairs(scripts) do
    createButton(scriptFile:gsub(".lua", ""):gsub(".txt", ""), scriptFile)
end
