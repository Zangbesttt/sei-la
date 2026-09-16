--[[ PAINEL PRINCIPAL ]]
local P=game:GetService("Players")local R=game:GetService("RunService")local U=game:GetService("UserInputService")local LP=P.LocalPlayer
local C={V=false,Vel=80,VC=nil,NC=false,NCC=nil,G=nil,GC=nil,A=false,AC=nil,L={"=== LOG ==="},Teclas={Voo="L",Noclip="N",Grudar="K",Atacar="J"}}
local function log(m)table.insert(C.L,"["..os.date("%H:%M:%S").."] "..m)if #C.L>60 then table.remove(C.L,2)end if _G.UL then _G.UL()end end
_G.LOG=log
local sg=Instance.new("ScreenGui")sg.Name="P1"sg.ResetOnSpawn=false sg.Parent=LP:WaitForChild("PlayerGui")
local mini=Instance.new("TextButton")mini.Size=UDim2.new(0,55,0,55)mini.Position=UDim2.new(0,15,0.5,-27)mini.BackgroundColor3=Color3.fromRGB(0,0,0)mini.BorderSizePixel=0 mini.Text="⚡"mini.TextColor3=Color3.fromRGB(0,180,255)mini.TextSize=26 mini.Font=Enum.Font.GothamBold mini.Visible=false mini.Active=true mini.Parent=sg
local minic=Instance.new("UICorner")minic.CornerRadius=UDim.new(0,27)minic.Parent=mini
local minis=Instance.new("UIStroke")minis.Color=Color3.fromRGB(0,150,255)minis.Thickness=2.5 minis.Parent=mini
local m=Instance.new("Frame")m.Size=UDim2.new(0,250,0,510)m.Position=UDim2.new(0,20,0,20)m.BackgroundColor3=Color3.fromRGB(0,0,0)m.BorderSizePixel=0 m.Active=true m.Draggable=true m.Parent=sg
local mc=Instance.new("UICorner")mc.CornerRadius=UDim.new(0,10)mc.Parent=m
local ms=Instance.new("UIStroke")ms.Color=Color3.fromRGB(0,150,255)ms.Thickness=2 ms.Parent=m
mini.MouseButton1Click:Connect(function()m.Visible=true mini.Visible=false end)
local tt=Instance.new("TextLabel")tt.Size=UDim2.new(1,0,0,28)tt.BackgroundColor3=Color3.fromRGB(10,10,20)tt.BorderSizePixel=0 tt.Text="⚡ PAINEL"tt.TextColor3=Color3.fromRGB(0,180,255)tt.TextSize=12 tt.Font=Enum.Font.GothamBold tt.Parent=m
local ttc=Instance.new("UICorner")ttc.CornerRadius=UDim.new(0,10)ttc.Parent=tt
local minB=Instance.new("TextButton")minB.Size=UDim2.new(0,22,0,22)minB.Position=UDim2.new(1,-52,0,3)minB.BackgroundColor3=Color3.fromRGB(50,50,20)minB.BorderSizePixel=0 minB.Text="—"minB.TextColor3=Color3.fromRGB(255,220,100)minB.TextSize=14 minB.Font=Enum.Font.GothamBold minB.Parent=m
local minBc=Instance.new("UICorner")minBc.CornerRadius=UDim.new(0,5)minBc.Parent=minB
local cb=Instance.new("TextButton")cb.Size=UDim2.new(0,22,0,22)cb.Position=UDim2.new(1,-26,0,3)cb.BackgroundColor3=Color3.fromRGB(60,20,20)cb.BorderSizePixel=0 cb.Text="X"cb.TextColor3=Color3.fromRGB(255,120,120)cb.TextSize=12 cb.Font=Enum.Font.GothamBold cb.Parent=m
local cbc=Instance.new("UICorner")cbc.CornerRadius=UDim.new(0,5)cbc.Parent=cb
minB.MouseButton1Click:Connect(function()m.Visible=false mini.Visible=true end)
local function mk(y,txt,teclaInicial,fn)
local b=Instance.new("TextButton")b.Size=UDim2.new(0.9,0,0,24)b.Position=UDim2.new(0.05,0,0,y)b.BackgroundColor3=Color3.fromRGB(15,15,30)b.BorderSizePixel=0 b.Text=txt b.TextColor3=Color3.fromRGB(0,180,255)b.TextSize=10 b.Font=Enum.Font.GothamBold b.Parent=m
local c=Instance.new("UICorner")c.CornerRadius=UDim.new(0,6)c.Parent=b
local kb=Instance.new("TextButton")kb.Size=UDim2.new(0,26,0,24)kb.Position=UDim2.new(1,-30,0,y)kb.BackgroundColor3=Color3.fromRGB(30,30,50)kb.BorderSizePixel=0 kb.Text=teclaInicial kb.TextColor3=Color3.fromRGB(255,200,100)kb.TextSize=10 kb.Font=Enum.Font.GothamBold kb.Parent=m
local kbc=Instance.new("UICorner")kbc.CornerRadius=UDim.new(0,6)kbc.Parent=kb
b.MouseButton1Click:Connect(function()pcall(fn)end)
return b,kb
end
local vB,vK=mk(34,"🕊️ VOAR: OFF","L",function()end)
local nB,nK=mk(62,"👻 NOCLIP: OFF","N",function()end)
local gB,gK=mk(90,"🧲 GRUDAR: OFF","K",function()end)
local aB,aK=mk(118,"⚔️ ATACAR: OFF","J",function()end)
local pB=mk(146,"👥 PLAYERS [P]",nil,function()end)
local vF=Instance.new("Frame")vF.Size=UDim2.new(0.9,0,0,20)vF.Position=UDim2.new(0.05,0,0,174)vF.BackgroundColor3=Color3.fromRGB(10,10,20)vF.BorderSizePixel=0 vF.Parent=m
local vF1=Instance.new("UICorner")vF1.CornerRadius=UDim.new(0,5)vF1.Parent=vF
local vL=Instance.new("TextLabel")vL.Size=UDim2.new(1,-50,1,0)vL.Position=UDim2.new(0,5,0,0)vL.BackgroundTransparency=1 vL.Text="Voo:80"vL.TextColor3=Color3.fromRGB(0,200,255)vL.TextSize=10 vL.Font=Enum.Font.GothamBold vL.Parent=vF
local vM=Instance.new("TextButton")vM.Size=UDim2.new(0,20,0,16)vM.Position=UDim2.new(1,-46,0,2)vM.BackgroundColor3=Color3.fromRGB(20,20,40)vM.BorderSizePixel=0 vM.Text="−"vM.TextColor3=Color3.fromRGB(0,180,255)vM.TextSize=11 vM.Font=Enum.Font.GothamBold vM.Parent=vF
local vM1=Instance.new("UICorner")vM1.CornerRadius=UDim.new(0,4)vM1.Parent=vM
local vP=Instance.new("TextButton")vP.Size=UDim2.new(0,20,0,16)vP.Position=UDim2.new(1,-24,0,2)vP.BackgroundColor3=Color3.fromRGB(20,20,40)vP.BorderSizePixel=0 vP.Text="+"vP.TextColor3=Color3.fromRGB(0,180,255)vP.TextSize=11 vP.Font=Enum.Font.GothamBold vP.Parent=vF
local vP1=Instance.new("UICorner")vP1.CornerRadius=UDim.new(0,4)vP1.Parent=vP
local lF=Instance.new("Frame")lF.Size=UDim2.new(0.9,0,0,240)lF.Position=UDim2.new(0.05,0,0,198)lF.BackgroundColor3=Color3.fromRGB(5,5,15)lF.BorderSizePixel=0 lF.Parent=m
local lF1=Instance.new("UICorner")lF1.CornerRadius=UDim.new(0,6)lF1.Parent=lF
local lB=Instance.new("TextBox")lB.Size=UDim2.new(1,-8,1,-8)lB.Position=UDim2.new(0,4,0,4)lB.BackgroundTransparency=1 lB.Text="=== LOG ==="lB.TextColor3=Color3.fromRGB(180,220,180)lB.TextSize=9 lB.Font=Enum.Font.Code lB.TextXAlignment=Enum.TextXAlignment.Left lB.TextYAlignment=Enum.TextYAlignment.Top lB.TextWrapped=true lB.TextEditable=true lB.ClearTextOnFocus=false lB.MultiLine=true lB.Parent=lF
_G.UL=function()lB.Text=table.concat(C.L,"\n")end
local cpB=Instance.new("TextButton")cpB.Size=UDim2.new(0.9,0,0,20)cpB.Position=UDim2.new(0.05,0,1,-24)cpB.BackgroundColor3=Color3.fromRGB(15,30,60)cpB.BorderSizePixel=0 cpB.Text="📋 COPIAR"cpB.TextColor3=Color3.fromRGB(0,200,255)cpB.TextSize=10 cpB.Font=Enum.Font.GothamBold cpB.Parent=m
local cpB1=Instance.new("UICorner")cpB1.CornerRadius=UDim.new(0,6)cpB1.Parent=cpB
local function gr()local c=LP.Character return c and c:FindFirstChild("HumanoidRootPart")end
local function pa()local t={}for _,p in pairs(P:GetPlayers())do if p~=LP and p.Character then table.insert(t,p)end end if #t==0 then return nil end return t[math.random(1,#t)]end
local function iV()local h=gr()if not h then return end
for _,o in pairs(h:GetChildren())do if o:IsA("BodyVelocity")or o:IsA("BodyGyro")then o:Destroy()end end
local bv=Instance.new("BodyVelocity")bv.Name="VV"bv.MaxForce=Vector3.new(math.huge,math.huge,math.huge)bv.Velocity=Vector3.new(0,0,0)bv.Parent=h
local bg=Instance.new("BodyGyro")bg.Name="VG"bg.MaxTorque=Vector3.new(math.huge,math.huge,math.huge)bg.P=1000 bg.D=50 bg.CFrame=h.CFrame bg.Parent=h
if C.VC then C.VC:Disconnect()end
C.VC=R.Heartbeat:Connect(function()if not C.V then return end local h=gr()if not h then return end
local d=Vector3.new(0,0,0)local ca=workspace.CurrentCamera
if U:IsKeyDown(Enum.KeyCode.W)then d=d+ca.CFrame.LookVector end
if U:IsKeyDown(Enum.KeyCode.S)then d=d-ca.CFrame.LookVector end
if U:IsKeyDown(Enum.KeyCode.A)then d=d-ca.CFrame.RightVector end
if U:IsKeyDown(Enum.KeyCode.D)then d=d+ca.CFrame.RightVector end
if U:IsKeyDown(Enum.KeyCode.Space)then d=d+Vector3.new(0,1,0)end
if U:IsKeyDown(Enum.KeyCode.LeftControl)then d=d-Vector3.new(0,1,0)end
if d.Magnitude>0 then bv.Velocity=d.Unit*C.Vel else bv.Velocity=Vector3.new(0,0,0)end
bg.CFrame=ca.CFrame end)end
local function pV()if C.VC then C.VC:Disconnect()C.VC=nil end local h=gr()if h then for _,o in pairs(h:GetChildren())do if o.Name=="VV"or o.Name=="VG"then o:Destroy()end end end end
local function toggleVoo()C.V=not C.V
if C.V then vB.Text="🕊️ VOAR: ON"vB.BackgroundColor3=Color3.fromRGB(0,40,80)iV()log("🕊️ Voo ON")
else vB.Text="🕊️ VOAR: OFF"vB.BackgroundColor3=Color3.fromRGB(15,15,30)pV()log("🛑 Voo OFF")end end
local function toggleNoclip()C.NC=not C.NC
if C.NC then nB.Text="👻 NOCLIP: ON"nB.BackgroundColor3=Color3.fromRGB(0,50,0)
if C.NCC then C.NCC:Disconnect()end
C.NCC=R.Stepped:Connect(function()local c=LP.Character if c and C.NC then for _,p in pairs(c:GetDescendants())do if p:IsA("BasePart")then p.CanCollide=false end end end end)
log("👻 Noclip ON")
else nB.Text="👻 NOCLIP: OFF"nB.BackgroundColor3=Color3.fromRGB(15,15,30)
if C.NCC then C.NCC:Disconnect()C.NCC=nil end log("🛑 Noclip OFF")end end
local function toggleGrudar()
if C.G then if C.GC then C.GC:Disconnect()end C.G=nil gB.Text="🧲 GRUDAR: OFF"gB.BackgroundColor3=Color3.fromRGB(15,15,30)log("🛑 Soltou")return end
local a=pa()if not a then log("❌ Sem players")return end
C.G=a gB.Text="🧲 "..a.Name gB.BackgroundColor3=Color3.fromRGB(80,30,90)log("🧲 Grudou "..a.Name)
if C.GC then C.GC:Disconnect()end
C.GC=R.Heartbeat:Connect(function()if not C.G then return end local h=gr()if not h then return end local ac=C.G.Character local ar=ac and ac:FindFirstChild("HumanoidRootPart")if not ar then return end pcall(function()ar.CFrame=h.CFrame*CFrame.new(0,2,-3)end)end)end
local function toggleAtacar()C.A=not C.A
if C.A then aB.Text="⚔️ ATACAR: ON"aB.BackgroundColor3=Color3.fromRGB(80,20,20)
if C.AC then C.AC:Disconnect()end
C.AC=R.Heartbeat:Connect(function()if not C.A then return end local ch=LP.Character if not ch then return end
local ar=C.G and C.G.Character and C.G.Character:FindFirstChild("HumanoidRootPart")
if ar then pcall(function()workspace.CurrentCamera.CFrame=CFrame.new(workspace.CurrentCamera.CFrame.Position,ar.Position)end)end
local t=ch:FindFirstChildOfClass("Tool")
if t then pcall(function()t:Activate()end)end
if VirtualUser then pcall(function()VirtualUser:Button1Down(Vector2.new(0,0))task.wait(0.01)VirtualUser:Button1Up(Vector2.new(0,0))end)end
task.wait(0.15)end)
log("⚔️ Atacando")
else aB.Text="⚔️ ATACAR: OFF"aB.BackgroundColor3=Color3.fromRGB(15,15,30)
if C.AC then C.AC:Disconnect()C.AC=nil end log("🛑 Parou")end end
vB.MouseButton1Click:Connect(toggleVoo)
nB.MouseButton1Click:Connect(toggleNoclip)
gB.MouseButton1Click:Connect(toggleGrudar)
aB.MouseButton1Click:Connect(toggleAtacar)
local function trocarTecla(kb,nome)kb.MouseButton1Click:Connect(function()kb.Text="..."local conn
conn=U.InputBegan:Connect(function(i,pr)if pr then return end if i.UserInputType==Enum.UserInputType.Keyboard then local k=i.KeyCode.Name C.Teclas[nome]=k kb.Text=k log("🔑 Tecla "..nome..": "..k)conn:Disconnect()end end)end)end
trocarTecla(vK,"Voo")trocarTecla(nK,"Noclip")trocarTecla(gK,"Grudar")trocarTecla(aK,"Atacar")
vM.MouseButton1Click:Connect(function()C.Vel=math.max(20,C.Vel-20)vL.Text="Voo:"..C.Vel end)
vP.MouseButton1Click:Connect(function()C.Vel=math.min(1500,C.Vel+20)vL.Text="Voo:"..C.Vel end)
cpB.MouseButton1Click:Connect(function()if setclipboard then pcall(function()setclipboard(table.concat(C.L,"\n"))end)log("📋 Copiado!")end end)
cb.MouseButton1Click:Connect(function()C.V=false C.NC=false C.G=nil C.A=false pV()if C.NCC then C.NCC:Disconnect()end if C.GC then C.GC:Disconnect()end if C.AC then C.AC:Disconnect()end sg:Destroy()log("Fechado")end)
U.InputBegan:Connect(function(i,pr)if pr then return end
if i.UserInputType~=Enum.UserInputType.Keyboard then return end
local k=i.KeyCode.Name
if k==C.Teclas.Voo then toggleVoo()
elseif k==C.Teclas.Noclip then toggleNoclip()
elseif k==C.Teclas.Grudar then toggleGrudar()
elseif k==C.Teclas.Atacar then toggleAtacar()end end)
pB.MouseButton1Click:Connect(function()if _G.TogglePlayers then _G.TogglePlayers()end end)
_G.TogglePlayers=function()end
log("✅ Painel carregado!")
log("🔑 Teclas: L=Voo, N=Noclip, K=Grudar, J=Atacar")
