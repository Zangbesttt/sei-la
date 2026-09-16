--[[ PLAYERS SEPARADO ]]
local P=game:GetService("Players")
local R=game:GetService("RunService")
local LP=P.LocalPlayer
local GG={Alvo=nil,Conn=nil}
local sg=Instance.new("ScreenGui")
sg.Name="PlayersGUI"
sg.ResetOnSpawn=false
sg.Parent=LP:WaitForChild("PlayerGui")
local m=Instance.new("Frame")
m.Size=UDim2.new(0,260,0,380)
m.Position=UDim2.new(0,290,0,20)
m.BackgroundColor3=Color3.fromRGB(0,0,0)
m.BorderSizePixel=0
m.Active=true
m.Draggable=true
m.Parent=sg
local mc=Instance.new("UICorner")
mc.CornerRadius=UDim.new(0,10)
mc.Parent=m
local ms=Instance.new("UIStroke")
ms.Color=Color3.fromRGB(0,150,255)
ms.Thickness=2
ms.Parent=m
local tt=Instance.new("TextLabel")
tt.Size=UDim2.new(1,0,0,28)
tt.BackgroundColor3=Color3.fromRGB(10,10,20)
tt.BorderSizePixel=0
tt.Text="👥 PLAYERS"
tt.TextColor3=Color3.fromRGB(0,180,255)
tt.TextSize=12
tt.Font=Enum.Font.GothamBold
tt.Parent=m
local ttc=Instance.new("UICorner")
ttc.CornerRadius=UDim.new(0,10)
ttc.Parent=tt
local sF=Instance.new("ScrollingFrame")
sF.Size=UDim2.new(1,-16,1,-50)
sF.Position=UDim2.new(0,8,0,36)
sF.BackgroundTransparency=1
sF.BorderSizePixel=0
sF.ScrollBarThickness=4
sF.Parent=m
local ll=Instance.new("UIListLayout")
ll.Padding=UDim.new(0,3)
ll.Parent=sF
local function gr()
    local c=LP.Character
    return c and c:FindFirstChild("HumanoidRootPart")
end
local function up()
    for _,c in pairs(sF:GetChildren()) do
        if c:IsA("Frame") then c:Destroy() end
    end
    local t=P:GetPlayers()
    table.sort(t,function(a,b) return a.Name<b.Name end)
    for _,p in ipairs(t) do
        local r=Instance.new("Frame")
        r.Size=UDim2.new(1,-8,0,28)
        r.BackgroundColor3=p==LP and Color3.fromRGB(30,50,30) or Color3.fromRGB(25,25,35)
        r.BorderSizePixel=0
        r.Parent=sF
        local rc=Instance.new("UICorner")
        rc.CornerRadius=UDim.new(0,5)
        rc.Parent=r
        local n=Instance.new("TextLabel")
        n.Size=UDim2.new(1,-90,1,0)
        n.Position=UDim2.new(0,6,0,0)
        n.BackgroundTransparency=1
        n.Text=p.Name..(p==LP and " (VC)" or "")
        n.TextColor3=p==LP and Color3.fromRGB(120,255,120) or Color3.fromRGB(180,200,255)
        n.TextSize=10
        n.Font=Enum.Font.GothamSemibold
        n.TextXAlignment=Enum.TextXAlignment.Left
        n.Parent=r
        if p~=LP then
            local tb=Instance.new("TextButton")
            tb.Size=UDim2.new(0,36,0,22)
            tb.Position=UDim2.new(1,-78,0,3)
            tb.BackgroundColor3=Color3.fromRGB(40,60,90)
            tb.BorderSizePixel=0
            tb.Text="📍"
            tb.TextColor3=Color3.fromRGB(150,200,255)
            tb.TextSize=11
            tb.Font=Enum.Font.GothamBold
            tb.Parent=r
            local tbc=Instance.new("UICorner")
            tbc.CornerRadius=UDim.new(0,4)
            tbc.Parent=tb
            tb.MouseButton1Click:Connect(function()
                local h=gr()
                local a=p.Character and p.Character:FindFirstChild("HumanoidRootPart")
                if h and a then
                    pcall(function() h.CFrame=a.CFrame*CFrame.new(0,3,-5) end)
                end
            end)
            local gb=Instance.new("TextButton")
            gb.Size=UDim2.new(0,36,0,22)
            gb.Position=UDim2.new(1,-40,0,3)
            gb.BackgroundColor3=Color3.fromRGB(70,30,90)
            gb.BorderSizePixel=0
            gb.Text="🧲"
            gb.TextColor3=Color3.fromRGB(200,150,255)
            gb.TextSize=11
            gb.Font=Enum.Font.GothamBold
            gb.Parent=r
            local gbc=Instance.new("UICorner")
            gbc.CornerRadius=UDim.new(0,4)
            gbc.Parent=gb
            gb.MouseButton1Click:Connect(function()
                if GG.Alvo==p then
                    if GG.Conn then GG.Conn:Disconnect() end
                    GG.Alvo=nil
                    gb.Text="🧲"
                    gb.BackgroundColor3=Color3.fromRGB(70,30,90)
                    return
                end
                if GG.Conn then GG.Conn:Disconnect() end
                GG.Alvo=p
                gb.Text="✓"
                gb.BackgroundColor3=Color3.fromRGB(30,90,30)
                GG.Conn=R.Heartbeat:Connect(function()
                    if not GG.Alvo then return end
                    local h=gr()
                    if not h then return end
                    local ac=GG.Alvo.Character
                    local ar=ac and ac:FindFirstChild("HumanoidRootPart")
                    if not ar then return end
                    pcall(function() ar.CFrame=h.CFrame*CFrame.new(0,2,-3) end)
                end)
            end)
        end
    end
    sF.CanvasSize=UDim2.new(0,0,0,#t*32+8)
end
up()
task.spawn(function()
    while sg.Parent do
        task.wait(5)
        pcall(up)
    end
end)
print("✅ Painel de players carregado!")
