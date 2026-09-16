local P=game:GetService("Players")local R=game:GetService("RunService")local U=game:GetService("UserInputService")local LP=P.LocalPlayer
local V=false; local VC=nil; local Vel=80
local NC=false; local NCC=nil
local G=nil; local GC=nil
local A=false; local AC=nil
local Alvo=nil; local GC2=nil

local sg=Instance.new("ScreenGui")sg.Name="Painel"sg.ResetOnSpawn=false sg.Parent=LP:WaitForChild("PlayerGui")
local m=Instance.new("Frame")m.Size=UDim2.new(0,250,0,380)m.Position=UDim2.new(0,20,0,20)m.BackgroundColor3=Color3.fromRGB(0,0,0)m.BorderSizePixel=0 m.Active=true m.Draggable=true m.Parent=sg
local mc=Instance.new("UICorner")mc.CornerRadius=UDim.new(0,10)mc.Parent=m
local ms=Instance.new("UIStroke")ms.Color=Color3.fromRGB(0,150,255)ms.Thickness=2 ms.Parent=m
local tt=Instance.new("TextLabel")tt.Size=UDim2.new(1,0,0,28)tt.BackgroundColor3=Color3.fromRGB(10,10,20)tt.BorderSizePixel=0 tt.Text="⚡ PAINEL"tt.TextColor3=Color3.fromRGB(0,180,255)tt.TextSize=12 tt.Font=Enum.Font.GothamBold tt.Parent=m
local ttc=Instance.new("UICorner")ttc.CornerRadius=UDim.new(0,10)ttc.Parent=tt
local cb=Instance.new("TextButton")cb.Size=UDim2.new(0,22,0,22)cb.Position=UDim2.new(1,-26,0,3)cb.BackgroundColor3=Color3.fromRGB(60,20,20)cb.BorderSizePixel=0 cb.Text="X"cb.TextColor3=Color3.fromRGB(255,120,120)cb.TextSize=12 cb.Font=Enum.Font.GothamBold cb.Parent=tt
local cbc=Instance.new("UICorner")cbc.CornerRadius=UDim.new(0,5)cbc.Parent=cb

-- ABAS
local t1=Instance.new("TextButton")t1.Size=UDim2.new(0,70,0,24)t1.Position=UDim2.new(0,5,0,32)t1.BackgroundColor3=Color3.fromRGB(0,60,110)t1.BorderSizePixel=0 t1.Text="Principal"t1.TextColor3=Color3.fromRGB(0,200,255)t1.TextSize=10 t1.Font=Enum.Font.GothamBold t1.Parent=m
local t1c=Instance.new("UICorner")t1c.CornerRadius=UDim.new(0,5)t1c.Parent=t1
local t2=Instance.new("TextButton")t2.Size=UDim2.new(0,70,0,24)t2.Position=UDim2.new(0,80,0,32)t2.BackgroundColor3=Color3.fromRGB(25,25,40)t2.BorderSizePixel=0 t2.Text="Trolls"t2.TextColor3=Color3.fromRGB(150,150,180)t2.TextSize=10 t2.Font=Enum.Font.GothamBold t2.Parent=m
local t2c=Instance.new("UICorner")t2c.CornerRadius=UDim.new(0,5)t2c.Parent=t2
local t3=Instance.new("TextButton")t3.Size=UDim2.new(0,70,0,24)t3.Position=UDim2.new(0,155,0,32)t3.BackgroundColor3=Color3.fromRGB(25,25,40)t3.BorderSizePixel=0 t3.Text="Players"t3.TextColor3=Color3.fromRGB(150,150,180)t3.TextSize=10 t3.Font=Enum.Font.GothamBold t3.Parent=m
local t3c=Instance.new("UICorner")t3c.CornerRadius=UDim.new(0,5)t3c.Parent=t3

local p1=Instance.new("Frame")p1.Size=UDim2.new(1,-10,1,-100)p1.Position=UDim2.new(0,5,0,62)p1.BackgroundTransparency=1 p1.Parent=m
local p2=Instance.new("Frame")p2.Size=UDim2.new(1,-10,1,-100)p2.Position=UDim2.new(0,5,0,62)p2.BackgroundTransparency=1 p2.Visible=false p2.Parent=m
local p3=Instance.new("Frame")p3.Size=UDim2.new(1,-10,1,-100)p3.Position=UDim2.new(0,5,0,62)p3.BackgroundTransparency=1 p3.Visible=false p3.Parent=m

local function aba(x)
    t1.BackgroundColor3=Color3.fromRGB(25,25,40)t1.TextColor3=Color3.fromRGB(150,150,180)
    t2.BackgroundColor3=Color3.fromRGB(25,25,40)t2.TextColor3=Color3.fromRGB(150,150,180)
    t3.BackgroundColor3=Color3.fromRGB(25,25,40)t3.TextColor3=Color3.fromRGB(150,150,180)
    p1.Visible=false p2.Visible=false p3.Visible=false
    if x==1 then t1.BackgroundColor3=Color3.fromRGB(0,60,110)t1.TextColor3=Color3.fromRGB(0,200,255)p1.Visible=true
    elseif x==2 then t2.BackgroundColor3=Color3.fromRGB(0,60,110)t2.TextColor3=Color3.fromRGB(0,200,255)p2.Visible=true
    else t3.BackgroundColor3=Color3.fromRGB(0,60,110)t3.TextColor3=Color3.fromRGB(0,200,255)p3.Visible=true end
end
t1.MouseButton1Click:Connect(function()aba(1)end)
t2.MouseButton1Click:Connect(function()aba(2)end)
t3.MouseButton1Click:Connect(function()aba(3)end)

-- ABA 1: BOTÕES
local vB=Instance.new("TextButton")vB.Size=UDim2.new(1,0,0,30)vB.Position=UDim2.new(0,0,0,5)vB.BackgroundColor3=Color3.fromRGB(15,15,30)vB.BorderSizePixel=0 vB.Text="🕊️ VOAR: OFF [L]"vB.TextColor3=Color3.fromRGB(0,180,255)vB.TextSize=11 vB.Font=Enum.Font.GothamBold vB.Parent=p1
local vBc=Instance.new("UICorner")vBc.CornerRadius=UDim.new(0,6)vBc.Parent=vB
local nB=Instance.new("TextButton")nB.Size=UDim2.new(1,0,0,30)nB.Position=UDim2.new(0,0,0,40)nB.BackgroundColor3=Color3.fromRGB(15,15,30)nB.BorderSizePixel=0 nB.Text="👻 NOCLIP: OFF [N]"nB.TextColor3=Color3.fromRGB(150,255,150)nB.TextSize=11 nB.Font=Enum.Font.GothamBold nB.Parent=p1
local nBc=Instance.new("UICorner")nBc.CornerRadius=UDim.new(0,6)nBc.Parent=nB
local velL=Instance.new("TextLabel")velL.Size=UDim2.new(1,0,0,20)velL.Position=UDim2.new(0,0,0,76)velL.BackgroundTransparency=1 velL.Text="Velocidade: 80"velL.TextColor3=Color3.fromRGB(0,200,255)velL.TextSize=10 velL.Font=Enum.Font.GothamBold velL.Parent=p1
local vm=Instance.new("TextButton")vm.Size=UDim2.new(0,40,0,24)vm.Position=UDim2.new(0,0,0,100)vm.BackgroundColor3=Color3.fromRGB(20,20,40)vm.BorderSizePixel=0 vm.Text="−"vm.TextColor3=Color3.fromRGB(0,180,255)vm.TextSize=14 vm.Font=Enum.Font.GothamBold vm.Parent=p1
local vmc=Instance.new("UICorner")vmc.CornerRadius=UDim.new(0,5)vmc.Parent=vm
local vp=Instance.new("TextButton")vp.Size=UDim2.new(0,40,0,24)vp.Position=UDim2.new(1,-40,0,100)vp.BackgroundColor3=Color3.fromRGB(20,20,40)vp.BorderSizePixel=0 vp.Text="+"vp.TextColor3=Color3.fromRGB(0,180,255)vp.TextSize=14 vp.Font=Enum.Font.GothamBold vp.Parent=p1
local vpc=Instance.new("UICorner")vpc.CornerRadius=UDim.new(0,5)vpc.Parent=vp

-- ABA 2: TROLLS
local gB=Instance.new("TextButton")gB.Size=UDim2.new(1,0,0,30)gB.Position=UDim2.new(0,0,0,5)gB.BackgroundColor3=Color3.fromRGB(15,15,30)gB.BorderSizePixel=0 gB.Text="🧲 GRUDAR: OFF [K]"gB.TextColor3=Color3.fromRGB(200,100,255)gB.TextSize=11 gB.Font=Enum.Font.GothamBold gB.Parent=p2
local gBc=Instance.new("UICorner")gBc.CornerRadius=UDim.new(0,6)gBc.Parent=gB
local aB=Instance.new("TextButton")aB.Size=UDim2.new(1,0,0,30)aB.Position=UDim2.new(0,0,0,40)aB.BackgroundColor3=Color3.fromRGB(15,15,30)aB.BorderSizePixel=0 aB.Text="⚔️ ATACAR: OFF [J]"aB.TextColor3=Color3.fromRGB(255,100,100)aB.TextSize=11 aB.Font=Enum.Font.GothamBold aB.Parent=p2
local aBc=Instance.new("UICorner")aBc.CornerRadius=UDim.new(0,6)aBc.Parent=aB

-- ABA 3: PLAYERS
local scroll=Instance.new("ScrollingFrame")scroll.Size=UDim2.new(1,0,1,-30)scroll.Position=UDim2.new(0,0,0,0)scroll.BackgroundTransparency=1 scroll.BorderSizePixel=0 scroll.ScrollBarThickness=4 scroll.Parent=p3
local layout=Instance.new("UIListLayout")layout.Padding=UDim.new(0,3)layout.Parent=scroll
local refresh=Instance.new("TextButton")refresh.Size=UDim2.new(1,0,0,24)refresh.Position=UDim2.new(0,0,1,-25)refresh.BackgroundColor3=Color3.fromRGB(15,30,60)refresh.BorderSizePixel=0 refresh.Text="🔄 ATUALIZAR"refresh.TextColor3=Color3.fromRGB(0,200,255)refresh.TextSize=10 refresh.Font=Enum.Font.GothamBold refresh.Parent=p3
local refreshc=Instance.new("UICorner")refreshc.CornerRadius=UDim.new(0,5)refreshc.Parent=refresh

-- FUNÇÕES
local function gr()local c=LP.Character return c and c:FindFirstChild("HumanoidRootPart")end
local function pa()local t={}for _,p in pairs(P:GetPlayers())do if p~=LP and p.Character then table.insert(t,p)end end if #t==0 then return nil end return t[math.random(1,#t)]end

local function atualizar()
    for _,c in pairs(scroll:GetChildren())do if c:IsA("Frame")then c:Destroy()end end
    local ps=P:GetPlayers()table.sort(ps,function(a,b)return a.Name<b.Name end)
    for _,p in ipairs(ps)do
        local r=Instance.new("Frame")r.Size=UDim2.new(1,-6,0,26)r.BackgroundColor3=p==LP and Color3.fromRGB(30,50,30)or Color3.fromRGB(25,25,35)r.BorderSizePixel=0 r.Parent=scroll
        local rc=Instance.new("UICorner")rc.CornerRadius=UDim.new(0,5)rc.Parent=r
        local n=Instance.new("TextLabel")n.Size=UDim2.new(1,-70,1,0)n.Position=UDim2.new(0,5,0,0)n.BackgroundTransparency=1 n.Text=p.Name n.TextColor3=p==LP and Color3.fromRGB(120,255,120)or Color3.fromRGB(180,200,255)n.TextSize=10 n.Font=Enum.Font.Gotham n.TextXAlignment=Enum.TextXAlignment.Left n.Parent=r
        if p~=LP then
            local tb=Instance.new("TextButton")tb.Size=UDim2.new(0,30,0,20)tb.Position=UDim2.new(1,-65,0,3)tb.BackgroundColor3=Color3.fromRGB(40,60,90)tb.BorderSizePixel=0 tb.Text="TP"tb.TextColor3=Color3.fromRGB(150,200,255)tb.TextSize=9 tb.Font=Enum.Font.GothamBold tb.Parent=r
            local tbc=Instance.new("UICorner")tbc.CornerRadius=UDim.new(0,4)tbc.Parent=tb
            tb.MouseButton1Click:Connect(function()local h=gr()local a=p.Character and p.Character:FindFirstChild("HumanoidRootPart")if h and a then pcall(function()h.CFrame=a.CFrame*CFrame.new(0,3,-5)end)end end)
            local gb=Instance.new("TextButton")gb.Size=UDim2.new(0,30,0,20)gb.Position=UDim2.new(1,-32,0,3)gb.BackgroundColor3=Color3.fromRGB(70,30,90)gb.BorderSizePixel=0 gb.Text="GRU"gb.TextColor3=Color3.fromRGB(200,150,255)gb.TextSize=8 gb.Font=Enum.Font.GothamBold gb.Parent=r
            local gbc=Instance.new("UICorner")gbc.CornerRadius=UDim.new(0,4)gbc.Parent=gb
            gb.MouseButton1Click:Connect(function()
                if Alvo==p then if GC2 then GC2:Disconnect()end Alvo=nil gb.Text="GRU"gb.BackgroundColor3=Color3.fromRGB(70,30,90)return end
                if GC2 then GC2:Disconnect()end Alvo=p gb.Text="✓"gb.BackgroundColor3=Color3.fromRGB(30,90,30)
                GC2=R.Heartbeat:Connect(function()if not Alvo then return end local h=gr()if not h then return end local ac=Alvo.Character local ar=ac and ac:FindFirstChild("HumanoidRootPart")if not ar then return end pcall(function()ar.CFrame=h.CFrame*CFrame.new(0,2,-3)end)end)
            end)
        end
    end
    scroll.CanvasSize=UDim2.new(0,0,0,#ps*30+8)
end
atualizar()

-- LÓGICAS
local function iV()local h=gr()if not h then return end
for _,o in pairs(h:GetChildren())do if o:IsA("BodyVelocity")or o:IsA("BodyGyro")then o:Destroy()end end
local bv=Instance.new("BodyVelocity")bv.Name="VV"bv.MaxForce=Vector3.new(math.huge,math.huge,math.huge)bv.Velocity=Vector3.new(0,0,0)bv.Parent=h
local bg=Instance.new("BodyGyro")bg.Name="VG"bg.MaxTorque=Vector3.new(math.huge,math.huge,math.huge)bg.P=1000 bg.D=50 bg.CFrame=h.CFrame bg.Parent=h
if VC then VC:Disconnect()end
VC=R.Heartbeat:Connect(function()if not V then return end local h=gr()if not h then return end
local d=Vector3.new(0,0,0)local ca=workspace.CurrentCamera
if U:IsKeyDown(Enum.KeyCode.W)then d=d+ca.CFrame.LookVector end
if U:IsKeyDown(Enum.KeyCode.S)then d=d-ca.CFrame.LookVector end
if U:IsKeyDown(Enum.KeyCode.A)then d=d-ca.CFrame.RightVector end
if U:IsKeyDown(Enum.KeyCode.D)then d=d+ca.CFrame.RightVector end
if U:IsKeyDown(Enum.KeyCode.Space)then d=d+Vector3.new(0,1,0)end
if U:IsKeyDown(Enum.KeyCode.LeftControl)then d=d-Vector3.new(0,1,0)end
if d.Magnitude>0 then bv.Velocity=d.Unit*Vel else bv.Velocity=Vector3.new(0,0,0)end
bg.CFrame=ca.CFrame end)end
local function pV()if VC then VC:Disconnect()VC=nil end local h=gr()if h then for _,o in pairs(h:GetChildren())do if o.Name=="VV"or o.Name=="VG"then o:Destroy()end end end end

local function tV()V=not V
if V then vB.Text="🕊️ VOAR: ON [L]"vB.BackgroundColor3=Color3.fromRGB(0,40,80)iV()
else vB.Text="🕊️ VOAR: OFF [L]"vB.BackgroundColor3=Color3.fromRGB(15,15,30)pV()end end

local function tN()NC=not NC
if NC then nB.Text="👻 NOCLIP: ON [N]"nB.BackgroundColor3=Color3.fromRGB(0,50,0)
if NCC then NCC:Disconnect()end
NCC=R.Stepped:Connect(function()local c=LP.Character if c and NC then for _,p in pairs(c:GetDescendants())do if p:IsA("BasePart")then p.CanCollide=false end end end end)
else nB.Text="👻 NOCLIP: OFF [N]"nB.BackgroundColor3=Color3.fromRGB(15,15,30)
if NCC then NCC:Disconnect()NCC=nil end end end

local function tG()
if G then if GC then GC:Disconnect()end G=nil gB.Text="🧲 GRUDAR: OFF [K]"gB.BackgroundColor3=Color3.fromRGB(15,15,30)return end
local a=pa()if not a then return end
G=a gB.Text="🧲 "..a.Name gB.BackgroundColor3=Color3.fromRGB(80,30,90)
if GC then GC:Disconnect()end
GC=R.Heartbeat:Connect(function()if not G then return end local h=gr()if not h then return end local ac=G.Character local ar=ac and ac:FindFirstChild("HumanoidRootPart")if not ar then return end pcall(function()ar.CFrame=h.CFrame*CFrame.new(0,2,-3)end)end)end

local function tA()A=not A
if A then aB.Text="⚔️ ATACAR: ON [J]"aB.BackgroundColor3=Color3.fromRGB(80,20,20)
if AC then AC:Disconnect()end
AC=R.Heartbeat:Connect(function()if not A then return end local ch=LP.Character if not ch then return end
local ar=G and G.Character and G.Character:FindFirstChild("HumanoidRootPart")
if ar then pcall(function()workspace.CurrentCamera.CFrame=CFrame.new(workspace.CurrentCamera.CFrame.Position,ar.Position)end)end
local t=ch:FindFirstChildOfClass("Tool")
if t then pcall(function()t:Activate()end)end
if VirtualUser then pcall(function()VirtualUser:Button1Down(Vector2.new(0,0))task.wait(0.01)VirtualUser:Button1Up(Vector2.new(0,0))end)end
task.wait(0.15)end)
else aB.Text="⚔️ ATACAR: OFF [J]"aB.BackgroundColor3=Color3.fromRGB(15,15,30)
if AC then AC:Disconnect()AC=nil end end end

vB.MouseButton1Click:Connect(tV)
nB.MouseButton1Click:Connect(tN)
gB.MouseButton1Click:Connect(tG)
aB.MouseButton1Click:Connect(tA)
refresh.MouseButton1Click:Connect(atualizar)
vm.MouseButton1Click:Connect(function()Vel=math.max(20,Vel-20)velL.Text="Velocidade: "..Vel end)
vp.MouseButton1Click:Connect(function()Vel=math.min(1500,Vel+20)velL.Text="Velocidade: "..Vel end)

U.InputBegan:Connect(function(i,pr)if pr then return end
if i.UserInputType~=Enum.UserInputType.Keyboard then return end
local k=i.KeyCode.Name
if k=="L" then tV()elseif k=="N" then tN()elseif k=="K" then tG()elseif k=="J" then tA()end end)

cb.MouseButton1Click:Connect(function()V=false NC=false G=nil A=false pV()if NCC then NCC:Disconnect()end if GC then GC:Disconnect()end if AC then AC:Disconnect()end if GC2 then GC2:Disconnect()end sg:Destroy()end)

LP.CharacterAdded:Connect(function()task.wait(1)if V then iV()end end)
print("✅ Painel carregado!")
