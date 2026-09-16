local P=game:GetService("Players")local R=game:GetService("RunService")local U=game:GetService("UserInputService")local LP=P.LocalPlayer
local V=false;local VC=nil;local Vel=80
local NC=false;local NCC=nil
local G=nil;local GC=nil
local A=false;local AC=nil
local Alvo=nil;local GC2=nil
local Ab=false;local AbC=nil
local AutoAlvo=false;local AAConn=nil
local AutoTP=false;local AutoTPConn=nil
local AutoTPInt=2;local TPColado=true
local ESP={};local EspOn=true
local Teclas={Voo="L",Noclip="N",Grudar="K",Atacar="J",Aimbot="T",ESP="E",AutoTP="P",AutoAlvo="R"}

local sg=Instance.new("ScreenGui")sg.Name="Painel"sg.ResetOnSpawn=false sg.Parent=LP:WaitForChild("PlayerGui")
local mini=Instance.new("TextButton")mini.Size=UDim2.new(0,50,0,50)mini.Position=UDim2.new(0,15,0.5,-25)mini.BackgroundColor3=Color3.fromRGB(0,0,0)mini.BorderSizePixel=0 mini.Text="⚡"mini.TextColor3=Color3.fromRGB(0,180,255)mini.TextSize=24 mini.Font=Enum.Font.GothamBold mini.Visible=false mini.Parent=sg
local minic=Instance.new("UICorner")minic.CornerRadius=UDim.new(0,25)minic.Parent=mini
local minis=Instance.new("UIStroke")minis.Color=Color3.fromRGB(0,150,255)minis.Thickness=2.5 minis.Parent=mini

local m=Instance.new("Frame")m.Size=UDim2.new(0,260,0,440)m.Position=UDim2.new(0,20,0,20)m.BackgroundColor3=Color3.fromRGB(0,0,0)m.BorderSizePixel=0 m.Active=true m.Draggable=true m.Parent=sg
local mc=Instance.new("UICorner")mc.CornerRadius=UDim.new(0,10)mc.Parent=m
local ms=Instance.new("UIStroke")ms.Color=Color3.fromRGB(0,150,255)ms.Thickness=2 ms.Parent=m
mini.MouseButton1Click:Connect(function()m.Visible=true mini.Visible=false end)

local tt=Instance.new("TextLabel")tt.Size=UDim2.new(1,-55,0,24)tt.Position=UDim2.new(0,5,0,0)tt.BackgroundTransparency=1 tt.Text="⚡ PAINEL"tt.TextColor3=Color3.fromRGB(0,180,255)tt.TextSize=12 tt.Font=Enum.Font.GothamBold tt.TextXAlignment=Enum.TextXAlignment.Left tt.Parent=m
local minBtn=Instance.new("TextButton")minBtn.Size=UDim2.new(0,22,0,22)minBtn.Position=UDim2.new(1,-52,0,2)minBtn.BackgroundColor3=Color3.fromRGB(50,50,20)minBtn.BorderSizePixel=0 minBtn.Text="—"minBtn.TextColor3=Color3.fromRGB(255,220,100)minBtn.TextSize=14 minBtn.Font=Enum.Font.GothamBold minBtn.Parent=m
local mbc=Instance.new("UICorner")mbc.CornerRadius=UDim.new(0,5)mbc.Parent=minBtn
local cb=Instance.new("TextButton")cb.Size=UDim2.new(0,22,0,22)cb.Position=UDim2.new(1,-26,0,2)cb.BackgroundColor3=Color3.fromRGB(60,20,20)cb.BorderSizePixel=0 cb.Text="X"cb.TextColor3=Color3.fromRGB(255,120,120)cb.TextSize=12 cb.Font=Enum.Font.GothamBold cb.Parent=m
local cbc=Instance.new("UICorner")cbc.CornerRadius=UDim.new(0,5)cbc.Parent=cb
minBtn.MouseButton1Click:Connect(function()m.Visible=false mini.Visible=true end)

-- ABAS
local t1=Instance.new("TextButton")t1.Size=UDim2.new(0,46,0,22)t1.Position=UDim2.new(0,5,0,28)t1.BackgroundColor3=Color3.fromRGB(25,25,40)t1.BorderSizePixel=0 t1.Text="Mov"t1.TextColor3=Color3.fromRGB(150,150,180)t1.TextSize=9 t1.Font=Enum.Font.GothamBold t1.Parent=m
local t1c=Instance.new("UICorner")t1c.CornerRadius=UDim.new(0,5)t1c.Parent=t1
local t2=Instance.new("TextButton")t2.Size=UDim2.new(0,46,0,22)t2.Position=UDim2.new(0,53,0,28)t2.BackgroundColor3=Color3.fromRGB(25,25,40)t2.BorderSizePixel=0 t2.Text="Troll"t2.TextColor3=Color3.fromRGB(150,150,180)t2.TextSize=9 t2.Font=Enum.Font.GothamBold t2.Parent=m
local t2c=Instance.new("UICorner")t2c.CornerRadius=UDim.new(0,5)t2c.Parent=t2
local t3=Instance.new("TextButton")t3.Size=UDim2.new(0,46,0,22)t3.Position=UDim2.new(0,101,0,28)t3.BackgroundColor3=Color3.fromRGB(25,25,40)t3.BorderSizePixel=0 t3.Text="Player"t3.TextColor3=Color3.fromRGB(150,150,180)t3.TextSize=9 t3.Font=Enum.Font.GothamBold t3.Parent=m
local t3c=Instance.new("UICorner")t3c.CornerRadius=UDim.new(0,5)t3c.Parent=t3
local t4=Instance.new("TextButton")t4.Size=UDim2.new(0,46,0,22)t4.Position=UDim2.new(0,149,0,28)t4.BackgroundColor3=Color3.fromRGB(25,25,40)t4.BorderSizePixel=0 t4.Text="Aim"t4.TextColor3=Color3.fromRGB(150,150,180)t4.TextSize=9 t4.Font=Enum.Font.GothamBold t4.Parent=m
local t4c=Instance.new("UICorner")t4c.CornerRadius=UDim.new(0,5)t4c.Parent=t4
local t5=Instance.new("TextButton")t5.Size=UDim2.new(0,46,0,22)t5.Position=UDim2.new(0,197,0,28)t5.BackgroundColor3=Color3.fromRGB(25,25,40)t5.BorderSizePixel=0 t5.Text="TP"t5.TextColor3=Color3.fromRGB(150,150,180)t5.TextSize=9 t5.Font=Enum.Font.GothamBold t5.Parent=m
local t5c=Instance.new("UICorner")t5c.CornerRadius=UDim.new(0,5)t5c.Parent=t5

local p1=Instance.new("Frame")p1.Size=UDim2.new(1,-10,1,-70)p1.Position=UDim2.new(0,5,0,56)p1.BackgroundTransparency=1 p1.Parent=m
local p2=Instance.new("Frame")p2.Size=UDim2.new(1,-10,1,-70)p2.Position=UDim2.new(0,5,0,56)p2.BackgroundTransparency=1 p2.Visible=false p2.Parent=m
local p3=Instance.new("Frame")p3.Size=UDim2.new(1,-10,1,-70)p3.Position=UDim2.new(0,5,0,56)p3.BackgroundTransparency=1 p3.Visible=false p3.Parent=m
local p4=Instance.new("Frame")p4.Size=UDim2.new(1,-10,1,-70)p4.Position=UDim2.new(0,5,0,56)p4.BackgroundTransparency=1 p4.Visible=false p4.Parent=m
local p5=Instance.new("Frame")p5.Size=UDim2.new(1,-10,1,-70)p5.Position=UDim2.new(0,5,0,56)p5.BackgroundTransparency=1 p5.Visible=false p5.Parent=m

local function trocar(x)
    t1.BackgroundColor3=Color3.fromRGB(25,25,40)t1.TextColor3=Color3.fromRGB(150,150,180)
    t2.BackgroundColor3=Color3.fromRGB(25,25,40)t2.TextColor3=Color3.fromRGB(150,150,180)
    t3.BackgroundColor3=Color3.fromRGB(25,25,40)t3.TextColor3=Color3.fromRGB(150,150,180)
    t4.BackgroundColor3=Color3.fromRGB(25,25,40)t4.TextColor3=Color3.fromRGB(150,150,180)
    t5.BackgroundColor3=Color3.fromRGB(25,25,40)t5.TextColor3=Color3.fromRGB(150,150,180)
    p1.Visible=false p2.Visible=false p3.Visible=false p4.Visible=false p5.Visible=false
    if x==1 then t1.BackgroundColor3=Color3.fromRGB(0,60,110)t1.TextColor3=Color3.fromRGB(0,200,255)p1.Visible=true
    elseif x==2 then t2.BackgroundColor3=Color3.fromRGB(0,60,110)t2.TextColor3=Color3.fromRGB(0,200,255)p2.Visible=true
    elseif x==3 then t3.BackgroundColor3=Color3.fromRGB(0,60,110)t3.TextColor3=Color3.fromRGB(0,200,255)p3.Visible=true
    elseif x==4 then t4.BackgroundColor3=Color3.fromRGB(0,60,110)t4.TextColor3=Color3.fromRGB(0,200,255)p4.Visible=true
    else t5.BackgroundColor3=Color3.fromRGB(0,60,110)t5.TextColor3=Color3.fromRGB(0,200,255)p5.Visible=true end
end
t1.MouseButton1Click:Connect(function()trocar(1)end)
t2.MouseButton1Click:Connect(function()trocar(2)end)
t3.MouseButton1Click:Connect(function()trocar(3)end)
t4.MouseButton1Click:Connect(function()trocar(4)end)
t5.MouseButton1Click:Connect(function()trocar(5)end)
trocar(1)

-- ABA 1: MOV
local vB=Instance.new("TextButton")vB.Size=UDim2.new(1,0,0,26)vB.Position=UDim2.new(0,0,0,5)vB.BackgroundColor3=Color3.fromRGB(15,15,30)vB.BorderSizePixel=0 vB.Text="🕊️ VOAR: OFF [L]"vB.TextColor3=Color3.fromRGB(0,180,255)vB.TextSize=10 vB.Font=Enum.Font.GothamBold vB.Parent=p1
local vBc=Instance.new("UICorner")vBc.CornerRadius=UDim.new(0,6)vBc.Parent=vB
local velL=Instance.new("TextLabel")velL.Size=UDim2.new(1,0,0,16)velL.Position=UDim2.new(0,0,0,35)velL.BackgroundTransparency=1 velL.Text="Voo: 80"velL.TextColor3=Color3.fromRGB(0,200,255)velL.TextSize=9 velL.Font=Enum.Font.GothamBold velL.Parent=p1
local vm=Instance.new("TextButton")vm.Size=UDim2.new(0,32,0,18)vm.Position=UDim2.new(0,0,0,54)vm.BackgroundColor3=Color3.fromRGB(20,20,40)vm.BorderSizePixel=0 vm.Text="−"vm.TextColor3=Color3.fromRGB(0,180,255)vm.TextSize=11 vm.Font=Enum.Font.GothamBold vm.Parent=p1
local vmc=Instance.new("UICorner")vmc.CornerRadius=UDim.new(0,4)vmc.Parent=vm
local vp=Instance.new("TextButton")vp.Size=UDim2.new(0,32,0,18)vp.Position=UDim2.new(1,-32,0,54)vp.BackgroundColor3=Color3.fromRGB(20,20,40)vp.BorderSizePixel=0 vp.Text="+"vp.TextColor3=Color3.fromRGB(0,180,255)vp.TextSize=11 vp.Font=Enum.Font.GothamBold vp.Parent=p1
local vpc=Instance.new("UICorner")vpc.CornerRadius=UDim.new(0,4)vpc.Parent=vp
local nB=Instance.new("TextButton")nB.Size=UDim2.new(1,0,0,26)nB.Position=UDim2.new(0,0,0,78)nB.BackgroundColor3=Color3.fromRGB(15,15,30)nB.BorderSizePixel=0 nB.Text="👻 NOCLIP: OFF [N]"nB.TextColor3=Color3.fromRGB(150,255,150)nB.TextSize=10 nB.Font=Enum.Font.GothamBold nB.Parent=p1
local nBc=Instance.new("UICorner")nBc.CornerRadius=UDim.new(0,6)nBc.Parent=nB
local wsL=Instance.new("TextLabel")wsL.Size=UDim2.new(1,0,0,16)wsL.Position=UDim2.new(0,0,0,108)wsL.BackgroundTransparency=1 wsL.Text="Andar: 16"wsL.TextColor3=Color3.fromRGB(0,200,255)wsL.TextSize=9 wsL.Font=Enum.Font.GothamBold wsL.Parent=p1
local wm=Instance.new("TextButton")wm.Size=UDim2.new(0,32,0,18)wm.Position=UDim2.new(0,0,0,127)wm.BackgroundColor3=Color3.fromRGB(20,20,40)wm.BorderSizePixel=0 wm.Text="−"wm.TextColor3=Color3.fromRGB(0,180,255)wm.TextSize=11 wm.Font=Enum.Font.GothamBold wm.Parent=p1
local wmc=Instance.new("UICorner")wmc.CornerRadius=UDim.new(0,4)wmc.Parent=wm
local wp=Instance.new("TextButton")wp.Size=UDim2.new(0,32,0,18)wp.Position=UDim2.new(1,-32,0,127)wp.BackgroundColor3=Color3.fromRGB(20,20,40)wp.BorderSizePixel=0 wp.Text="+"wp.TextColor3=Color3.fromRGB(0,180,255)wp.TextSize=11 wp.Font=Enum.Font.GothamBold wp.Parent=p1
local wpc=Instance.new("UICorner")wpc.CornerRadius=UDim.new(0,4)wpc.Parent=wp

-- ABA 2: TROLLS
local gB=Instance.new("TextButton")gB.Size=UDim2.new(1,0,0,28)gB.Position=UDim2.new(0,0,0,5)gB.BackgroundColor3=Color3.fromRGB(15,15,30)gB.BorderSizePixel=0 gB.Text="🧲 GRUDAR [K]"gB.TextColor3=Color3.fromRGB(200,100,255)gB.TextSize=10 gB.Font=Enum.Font.GothamBold gB.Parent=p2
local gBc=Instance.new("UICorner")gBc.CornerRadius=UDim.new(0,6)gBc.Parent=gB
local aB=Instance.new("TextButton")aB.Size=UDim2.new(1,0,0,28)aB.Position=UDim2.new(0,0,0,38)aB.BackgroundColor3=Color3.fromRGB(15,15,30)aB.BorderSizePixel=0 aB.Text="⚔️ ATACAR [J]"aB.TextColor3=Color3.fromRGB(255,100,100)aB.TextSize=10 aB.Font=Enum.Font.GothamBold aB.Parent=p2
local aBc=Instance.new("UICorner")aBc.CornerRadius=UDim.new(0,6)aBc.Parent=aB

-- ABA 3: PLAYERS
local scroll=Instance.new("ScrollingFrame")scroll.Size=UDim2.new(1,0,1,-30)scroll.BackgroundTransparency=1 scroll.BorderSizePixel=0 scroll.ScrollBarThickness=4 scroll.Parent=p3
local layout=Instance.new("UIListLayout")layout.Padding=UDim.new(0,3)layout.Parent=scroll
local refresh=Instance.new("TextButton")refresh.Size=UDim2.new(1,0,0,22)refresh.Position=UDim2.new(0,0,1,-24)refresh.BackgroundColor3=Color3.fromRGB(15,30,60)refresh.BorderSizePixel=0 refresh.Text="🔄 ATUALIZAR"refresh.TextColor3=Color3.fromRGB(0,200,255)refresh.TextSize=9 refresh.Font=Enum.Font.GothamBold refresh.Parent=p3
local refreshc=Instance.new("UICorner")refreshc.CornerRadius=UDim.new(0,5)refreshc.Parent=refresh

-- ABA 4: AIM
local aSt=Instance.new("TextLabel")aSt.Size=UDim2.new(1,-10,0,16)aSt.Position=UDim2.new(0,5,0,4)aSt.BackgroundTransparency=1 aSt.Text="Clique num player ou ative AUTO-ALVO"aSt.TextColor3=Color3.fromRGB(150,255,150)aSt.TextSize=9 aSt.Font=Enum.Font.Gotham aSt.TextXAlignment=Enum.TextXAlignment.Left aSt.Parent=p4
local scrollA=Instance.new("ScrollingFrame")scrollA.Size=UDim2.new(1,-10,0,220)scrollA.Position=UDim2.new(0,5,0,24)scrollA.BackgroundTransparency=1 scrollA.BorderSizePixel=0 scrollA.ScrollBarThickness=4 scrollA.Parent=p4
local layoutA=Instance.new("UIListLayout")layoutA.Padding=UDim.new(0,3)layoutA.Parent=scrollA
local aimB=Instance.new("TextButton")aimB.Size=UDim2.new(1,0,0,26)aimB.Position=UDim2.new(0,0,0,250)aimB.BackgroundColor3=Color3.fromRGB(15,15,30)aimB.BorderSizePixel=0 aimB.Text="🎯 AIMBOT: OFF [T]"aimB.TextColor3=Color3.fromRGB(100,200,255)aimB.TextSize=10 aimB.Font=Enum.Font.GothamBold aimB.Parent=p4
local aimBc=Instance.new("UICorner")aimBc.CornerRadius=UDim.new(0,6)aimBc.Parent=aimB
local aaB=Instance.new("TextButton")aaB.Size=UDim2.new(1,0,0,26)aaB.Position=UDim2.new(0,0,0,280)aaB.BackgroundColor3=Color3.fromRGB(15,15,30)aaB.BorderSizePixel=0 aaB.Text="🎯 AUTO-ALVO: OFF [R]"aaB.TextColor3=Color3.fromRGB(255,200,100)aaB.TextSize=10 aaB.Font=Enum.Font.GothamBold aaB.Parent=p4
local aaBc=Instance.new("UICorner")aaBc.CornerRadius=UDim.new(0,6)aaBc.Parent=aaB
local espB=Instance.new("TextButton")espB.Size=UDim2.new(1,0,0,26)espB.Position=UDim2.new(0,0,0,310)espB.BackgroundColor3=Color3.fromRGB(40,40,80)espB.BorderSizePixel=0 espB.Text="👁️ ESP: ON [E]"espB.TextColor3=Color3.fromRGB(200,200,255)espB.TextSize=10 espB.Font=Enum.Font.GothamBold espB.Parent=p4
local espBc=Instance.new("UICorner")espBc.CornerRadius=UDim.new(0,6)espBc.Parent=espB

-- ABA 5: AUTO-TP
local tpSt=Instance.new("TextLabel")tpSt.Size=UDim2.new(1,-10,0,16)tpSt.Position=UDim2.new(0,5,0,4)tpSt.BackgroundTransparency=1 tpSt.Text="Teleporta + ataca"tpSt.TextColor3=Color3.fromRGB(150,255,150)tpSt.TextSize=9 tpSt.Font=Enum.Font.Gotham tpSt.TextXAlignment=Enum.TextXAlignment.Left tpSt.Parent=p5
local tpB=Instance.new("TextButton")tpB.Size=UDim2.new(1,0,0,28)tpB.Position=UDim2.new(0,0,0,26)tpB.BackgroundColor3=Color3.fromRGB(15,15,30)tpB.BorderSizePixel=0 tpB.Text="🌐 AUTO-TP: OFF [P]"tpB.TextColor3=Color3.fromRGB(100,255,200)tpB.TextSize=10 tpB.Font=Enum.Font.GothamBold tpB.Parent=p5
local tpBc=Instance.new("UICorner")tpBc.CornerRadius=UDim.new(0,6)tpBc.Parent=tpB
local atrasB=Instance.new("TextButton")atrasB.Size=UDim2.new(1,0,0,26)atrasB.Position=UDim2.new(0,0,0,60)atrasB.BackgroundColor3=Color3.fromRGB(0,60,40)atrasB.BorderSizePixel=0 atrasB.Text="📍 ATRÁS: ON"atrasB.TextColor3=Color3.fromRGB(150,255,200)atrasB.TextSize=10 atrasB.Font=Enum.Font.GothamBold atrasB.Parent=p5
local atrasBc=Instance.new("UICorner")atrasBc.CornerRadius=UDim.new(0,6)atrasBc.Parent=atrasB
local tpL=Instance.new("TextLabel")tpL.Size=UDim2.new(1,0,0,16)tpL.Position=UDim2.new(0,0,0,94)tpL.BackgroundTransparency=1 tpL.Text="Intervalo: 2s"tpL.TextColor3=Color3.fromRGB(0,200,255)tpL.TextSize=9 tpL.Font=Enum.Font.GothamBold tpL.Parent=p5
local tpM=Instance.new("TextButton")tpM.Size=UDim2.new(0,32,0,18)tpM.Position=UDim2.new(0,0,0,113)tpM.BackgroundColor3=Color3.fromRGB(20,20,40)tpM.BorderSizePixel=0 tpM.Text="−"tpM.TextColor3=Color3.fromRGB(0,180,255)tpM.TextSize=11 tpM.Font=Enum.Font.GothamBold tpM.Parent=p5
local tpMc=Instance.new("UICorner")tpMc.CornerRadius=UDim.new(0,4)tpMc.Parent=tpM
local tpP=Instance.new("TextButton")tpP.Size=UDim2.new(0,32,0,18)tpP.Position=UDim2.new(1,-32,0,113)tpP.BackgroundColor3=Color3.fromRGB(20,20,40)tpP.BorderSizePixel=0 tpP.Text="+"tpP.TextColor3=Color3.fromRGB(0,180,255)tpP.TextSize=11 tpP.Font=Enum.Font.GothamBold tpP.Parent=p5
local tpPc=Instance.new("UICorner")tpPc.CornerRadius=UDim.new(0,4)tpPc.Parent=tpP

-- FUNÇÕES
local function gr()local c=LP.Character return c and c:FindFirstChild("HumanoidRootPart")end
local function gh()local c=LP.Character return c and c:FindFirstChildOfClass("Humanoid")end
local function pa()local t={}for _,p in pairs(P:GetPlayers())do if p~=LP and p.Character then table.insert(t,p)end end if #t==0 then return nil end return t[math.random(1,#t)]end
local function maisProximo()local h=gr()if not h then return nil end local mp,md=nil,999 for _,p in pairs(P:GetPlayers())do if p~=LP and p.Character then local ph=p.Character:FindFirstChild("HumanoidRootPart")if ph then local d=(ph.Position-h.Position).Magnitude if d<md then md=d mp=p end end end end return mp end

-- VOO
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
if G then if GC then GC:Disconnect()end G=nil gB.Text="🧲 GRUDAR [K]"gB.BackgroundColor3=Color3.fromRGB(15,15,30)return end
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
else aB.Text="⚔️ ATACAR [J]"aB.BackgroundColor3=Color3.fromRGB(15,15,30)
if AC then AC:Disconnect()AC=nil end end end

-- ESP
local function criarESP(p)
    if not p.Character then return end
    local head=p.Character:FindFirstChild("Head")
    if not head then return end
    if ESP[p] then ESP[p].gui:Destroy() end
    local bb=Instance.new("BillboardGui")bb.Size=UDim2.new(0,200,0,50)bb.StudsOffset=Vector3.new(0,3,0)bb.AlwaysOnTop=true bb.Parent=head
    local txt=Instance.new("TextLabel")txt.Size=UDim2.new(1,0,1,0)txt.BackgroundTransparency=1 txt.TextColor3=Color3.fromRGB(255,255,255)txt.TextStrokeTransparency=0 txt.TextStrokeColor3=Color3.fromRGB(0,0,0)txt.TextSize=14 txt.Font=Enum.Font.GothamBold txt.Parent=bb
    ESP[p]={gui=bb,label=txt}
end
local function atualizarESP()
    local meu=gr()if not meu then return end
    for p,obj in pairs(ESP)do
        if not p.Character or not p.Character:FindFirstChild("Head")then
            if obj.gui then obj.gui:Destroy() end
            ESP[p]=nil
        else
            local ph=p.Character:FindFirstChild("HumanoidRootPart")
            local dist=ph and math.floor((ph.Position-meu.Position).Magnitude) or 0
            local hum=p.Character:FindFirstChildOfClass("Humanoid")
            local hp=hum and math.floor(hum.Health) or 0
            obj.label.Text=p.Name.." ["..dist.."s] ❤"..hp
            obj.label.TextColor3=p==Alvo and Color3.fromRGB(255,100,100) or Color3.fromRGB(255,255,255)
        end
    end
end
local function atualizarTodosESP()
    if not EspOn then return end
    for _,p in pairs(P:GetPlayers())do
        if p~=LP and p.Character and not ESP[p] then criarESP(p) end
    end
end

-- LISTA (aba Player)
local function atualizar()
    for _,c in pairs(scroll:GetChildren())do if c:IsA("Frame")then c:Destroy()end end
    local ps=P:GetPlayers()table.sort(ps,function(a,b)return a.Name<b.Name end)
    for _,p in ipairs(ps)do
        local r=Instance.new("Frame")r.Size=UDim2.new(1,-6,0,24)r.BackgroundColor3=p==LP and Color3.fromRGB(30,50,30)or Color3.fromRGB(25,25,35)r.BorderSizePixel=0 r.Parent=scroll
        local rc=Instance.new("UICorner")rc.CornerRadius=UDim.new(0,5)rc.Parent=r
        local n=Instance.new("TextLabel")n.Size=UDim2.new(1,-70,1,0)n.Position=UDim2.new(0,5,0,0)n.BackgroundTransparency=1 n.Text=p.Name n.TextColor3=p==LP and Color3.fromRGB(120,255,120)or Color3.fromRGB(180,200,255)n.TextSize=9 n.Font=Enum.Font.Gotham n.TextXAlignment=Enum.TextXAlignment.Left n.Parent=r
        if p~=LP then
            local tb=Instance.new("TextButton")tb.Size=UDim2.new(0,30,0,20)tb.Position=UDim2.new(1,-65,0,2)tb.BackgroundColor3=Color3
