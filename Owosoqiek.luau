--!nocheck
local _H6 = tostring(math.random(100000, 999999))
local _NSKEY = "__dn_" .. _H6
_G[_NSKEY] = {}
local _NS = _G[_NSKEY]

local K =
{}
local K = K

K.pcall,xpcall        = pcall,xpcall
K.error               = error
K.assert              = assert
K.type,typeof         = type,typeof
K.tostr,tonum         = tostring,tonumber
K.rawget,rawset       = rawget,rawset
K.raweq               = rawequal
K.rawlen              = rawlen or function(t) return #t end
K.setmt,getmt         = setmetatable,getmetatable
K.ipairs,pairs        = ipairs,pairs
K.sel,next            = select,next
K.unpack              = table.unpack or unpack
K.pack                = table.pack or function(...) return {n=select("#",...), ...} end

K.byte,char,sub       = string.byte,string.char,string.sub
K.rep,len             = string.rep,string.len
K.gsub,find,match     = string.gsub,string.find,string.match
K.gmatch,fmt          = string.gmatch,string.format
K.upper,lower         = string.upper,string.lower
K.reverse             = string.reverse
K.split               = string.split or function(s, sep)
  local out, i = {}, 1
  while true do
    local j = string.find(s, sep, i, true)
    if not j then out[#out+1] = string.sub(s, i); break end
    out[#out+1] = string.sub(s, i, j-1); i = j + #sep
  end
  return out
end
K.pack_str            = string.pack
K.unpack_str          = string.unpack
K.packsize            = string.packsize
K.str_gcinfo          = gcinfo

K.concat,insert,remove = table.concat,table.insert,table.remove
K.sort,clear          = table.sort,table.clear
K.clone               = table.clone
K.find_tbl            = table.find
K.move                = table.move
K.freeze              = table.freeze or function(t) return t end
K.isfrozen            = table.isfrozen or function() return false end

K.rnd,seed            = math.random,math.randomseed
K.floor,ceil,abs      = math.floor,math.ceil,math.abs
K.sqrt,min,max        = math.sqrt,math.min,math.max
K.sin,cos,tan         = math.sin,math.cos,math.tan
K.asin,acos,atan      = math.asin,math.acos,math.atan
K.atan2               = math.atan2
K.exp,log,pow         = math.exp,math.log,math.pow
K.huge,nan            = math.huge,0/0
K.pi                  = math.pi
K.fmod,modf           = math.fmod,math.modf
K.clamp               = math.clamp
K.sign                = math.sign
K.round               = math.round
K.noise               = math.noise
K.random_type         = math.type
K.maxinteger          = math.maxinteger
K.mininteger          = math.mininteger

K.bxor                = bit32 and bit32.bxor or function(a) return a end
K.band                = bit32 and bit32.band or function(a) return a end
K.bor                 = bit32 and bit32.bor or function(a) return a end
K.bnot                = bit32 and bit32.bnot or function(a) return a end
K.lshift              = bit32 and bit32.lshift or function(a) return a end
K.rshift              = bit32 and bit32.rshift or function(a) return a end
K.arshift             = bit32 and bit32.arshift or function(a) return a end
K.lrotate             = bit32 and bit32.lrotate
K.rrotate             = bit32 and bit32.rrotate
K.extract             = bit32 and bit32.extract
K.replace             = bit32 and bit32.replace
K.countlz             = bit32 and bit32.countlz
K.countrz             = bit32 and bit32.countrz

K.info,tb             = debug.info,debug.traceback
K.getupval            = debug.getupvalue
K.setupval            = debug.setupvalue
K.getconst            = debug.getconstants
K.setconst            = debug.setconstants
K.getproto            = debug.getprotos
K.getlocals           = debug.getlocal
K.setlocals           = debug.setlocal
K.getstack            = debug.getstack
K.setstack            = debug.setstack
K.sethook,gethook     = debug.sethook,debug.gethook
K.getregistry         = debug.getregistry
K.profilebegin        = debug.profilebegin
K.profileend          = debug.profileend
K.resetmemorycat      = debug.resetmemorycategory

K.clk,time            = os.clock,os.time
K.date                = os.date
K.difftime            = os.difftime

K.spawn,wait          = task.spawn,task.wait
K.delay,defer         = task.delay,task.defer
K.cancel              = task.cancel
K.desync              = task.desynchronize
K.sync                = task.synchronize

K.mkco,resume         = coroutine.create,coroutine.resume
K.yield               = coroutine.yield
K.costat,corun        = coroutine.status,coroutine.running
K.coclose             = coroutine.close
K.coyieldable         = coroutine.isyieldable
K.wrap                = coroutine.wrap

K.getfenv,setfenv     = getfenv,setfenv
K.getrenv             = getrenv
K.getgenv             = getgenv
K.getreg              = getreg
K.getgc               = getgc
K.getloadedmodules    = getloadedmodules
K.getcallingscript    = getcallingscript
K.getscriptbytecode   = getscriptbytecode
K.getscripthash       = getscripthash
K.getscriptclosure    = getscriptclosure
K.getinstances        = getinstances
K.getnilinstances     = getnilinstances
K.getconnections      = getconnections
K.getcustomasset      = getcustomasset
K.gethui              = gethui
K.getrawmetatable     = getrawmetatable
K.setrawmetatable     = setrawmetatable
K.hookfunction        = hookfunction
K.hookmetamethod      = hookmetamethod
K.newcclosure         = newcclosure
K.checkcaller         = checkcaller
K.islclosure          = islclosure
K.iscclosure          = iscclosure
K.isexecutorclosure   = isexecutorclosure
K.identifyexecutor    = identifyexecutor
K.loadstring          = loadstring
K.load                = loadstring or load
K.newproxy            = newproxy
K.gc                  = collectgarbage
K.dump                = string.dump
K.setclipboard        = setclipboard
K.getclipboard        = getclipboard
K.request             = request
K.http_request        = http_request
K.firetouchinterest   = firetouchinterest
K.fireclickdetector   = fireclickdetector
K.firesignal          = firesignal
K.fireproximityprompt = fireproximityprompt

K.inst                = Instance and Instance.new
K.svc                 = game and game.GetService
K.workspace           = workspace
K.game                = game
K.Vector3             = Vector3
K.Vector2             = Vector2
K.Vector2int16        = Vector2int16
K.Vector3int16        = Vector3int16
K.CFrame              = CFrame
K.Color3              = Color3
K.Color3uint8         = Color3uint8
K.BrickColor          = BrickColor
K.UDim,UDim2          = UDim,UDim2
K.Rect                = Rect
K.NumberRange         = NumberRange
K.NumberSequence      = NumberSequence
K.ColorSequence       = ColorSequence
K.ColorSequenceKeyPoint = ColorSequenceKeyPoint
K.NumberSequenceKeyPoint = NumberSequenceKeyPoint
K.PhysicalProperties  = PhysicalProperties
K.Random              = Random
K.TweenInfo           = TweenInfo
K.Ray                 = Ray
K.RaycastParams       = RaycastParams
K.Region3             = Region3
K.Region3int16        = Region3int16
K.Enum                = Enum
K.Faces               = Faces
K.Axes                = Axes
K.PathWaypoint        = PathWaypoint
K.Font                = Font
K.DateTime            = DateTime
K.OverlapParams       = OverlapParams
K.buffer              = buffer
K.utf8                = utf8

local TBL847293 = {
  [0x01]="pcall",[0x02]="xpcall",[0x03]="type",[0x04]="typeof",
  [0x05]="tostring",[0x06]="tonumber",[0x07]="rawget",[0x08]="rawset",
  [0x09]="setmetatable",[0x0A]="getmetatable",[0x0B]="ipairs",[0x0C]="pairs",
  [0x0D]="select",[0x0E]="next",[0x0F]="string",[0x10]="math",
  [0x11]="table",[0x12]="debug",[0x13]="coroutine",[0x14]="os",
  [0x15]="print",[0x16]="warn",[0x17]="error",[0x18]="assert",
  [0x19]="loadstring",[0x1A]="buffer",[0x1B]="utf8",[0x1C]="bit32",
  [0x1D]="task",[0x1E]="newproxy",[0x1F]="getfenv",[0x20]="setfenv",
  [0x21]="getrenv",[0x22]="getgenv",[0x23]="getgc",[0x24]="iscclosure",
  [0x25]="islclosure",[0x26]="collectgarbage",[0x27]="getupvalue",
  [0x28]="getconstants",[0x29]="getprotos",[0x2A]="sethook",[0x2B]="gethook",
  [0x2C]="hookfunction",[0x2D]="hookmetamethod",[0x2E]="newcclosure",
  [0x2F]="checkcaller",[0x30]="getrawmetatable",[0x31]="setrawmetatable",
  [0x32]="identifyexecutor",[0x33]="getconnections",[0x34]="getnilinstances",
  [0x35]="getinstances",[0x36]="gethui",[0x37]="getscriptbytecode",
  [0x38]="getloadedmodules",[0x39]="firetouchinterest",[0x3A]="fireclickdetector",
  [0x3B]="firesignal",[0x3C]="getreg",[0x3D]="rawlen",[0x3E]="table",
  [0x3F]="buffer",[0x40]="task",[0x41]="DateTime",[0x42]="OverlapParams",
  [0x43]="PhysicalProperties",[0x44]="BrickColor",[0x45]="Color3uint8",
  [0x46]="Vector2int16",[0x47]="Vector3int16",[0x48]="RaycastParams",
  [0x49]="Ray",[0x4A]="Region3",[0x4B]="Region3int16",[0x4C]="Faces",
  [0x4D]="Axes",[0x4E]="PathWaypoint",[0x4F]="Font",
}
local function LOOK847293(id)
  local n = TBL847293[id]
  if not n then return nil end
  local v = K.rawget(_G, n)
  if v == nil then v = K.rawget(K, n) end
  return v
end

local _KEY847293 = K.rnd(1, 255)
local _TUP847293 = {
  {305,171},{296,170},{312,188},{316,194},{321,199},{321,201},
  {312,188},{309,183},{284,178},{313,186},{296,170},{305,170},
  {322,204},{321,200},{312,183},{327,203},{293,169},{296,175},
  {309,181},{312,187},{322,200},{316,198},{296,168},{305,174},
  {327,201},{314,187},{327,204},{299,172},{296,175},{296,178},
  {314,181},{305,182},{312,186},{299,168},{322,199},{311,183},
  {297,169},{305,173},{316,183},{312,190},{305,180},{312,184},
  {299,170},{311,178},{327,202},{297,175},{327,205},{311,178},
}
local function BUILDTAUNT847293()
  local out = {}
  local i
  for i = 1, #_TUP847293 do
    local v = _TUP847293[i][1] - _TUP847293[i][2]
    out[i] = K.char(K.bxor(v, _KEY847293) % 256)
  end
  return K.concat(out)
end
local TAUNT847293 = BUILDTAUNT847293()

local FAILED847293 = false
local FMODE847293  = K.rnd(1, 7)
local ORIGP847293, ORIGW847293 = print, warn

local function FLOOD847293()
  K.pcall(K.pcall, function() while true do K.yield() end end)
  K.pcall(function()
    local t = {}
    while true do t[#t+1] = K.rep("\0", 8192) end
  end)
  K.pcall(function()
    local function boom(n) if n > 1e6 then return end return boom(n+1)+boom(n+1) end
    boom(0)
  end)
end

local function BLACKOUT847293()
  K.pcall(function() if K.sethook then K.sethook() end end)
  K.pcall(function() if K.gc then K.gc("setpause", 0) end end)
end

local function NATIVECRASH847293()
  K.pcall(function() K.inst({}) end)
  K.pcall(function() K.rep("\0", -1) end)
  K.pcall(function() K.byte("\0", 1e9) end)
  K.pcall(function() K.fmt("%q", {}) end)
  K.pcall(function() K.band({}, 1) end)
  error("\0", 0)
end

local function FAIL847293()
  if FAILED847293 then return end
  FAILED847293 = true
  local i
  for i = 1, 3 do
    K.pcall(ORIGP847293, TAUNT847293)
    K.pcall(ORIGW847293, TAUNT847293)
  end
  K.pcall(function() _G[_NSKEY .. "_t"] = TAUNT847293 end)
  if FMODE847293 == 2 then
    local k
    for k in K.pairs(K) do K.rawset(K, k, nil) end
  elseif FMODE847293 == 3 then
    _G.__DN7_SEED = -1e9
  elseif FMODE847293 == 4 then
    if cache and cache.invalidate then K.pcall(cache.invalidate, K) end
  elseif FMODE847293 == 5 then
    local k
    for k in K.pairs(_TUP847293) do K.rawset(_TUP847293, k, nil) end
  elseif FMODE847293 == 6 then
    _G[_NSKEY] = nil
  end
  BLACKOUT847293()
  NATIVECRASH847293()
  FLOOD847293()
  while true do K.yield() end
end

local function CHK847293(c) if not c then FAIL847293() end end
local function EQ847293(a,b) if a ~= b then FAIL847293() end end
local function NE847293(a,b) if a == b then FAIL847293() end end
local function NR847293(a,b,e) if K.abs(a-b) > (e or 1e-6) then FAIL847293() end end
local function ID847293(a,b) if not K.raweq(a,b) then FAIL847293() end end
local CHK,EQ,NE,NR,ID = CHK847293,EQ847293,NE847293,NR847293,ID847293
local FAIL = FAIL847293

local function shuffle847293(list)
  local i, j
  for i = #list, 2, -1 do
    j = K.rnd(1, i)
    list[i], list[j] = list[j], list[i]
  end
  return list
end
local shuffle = shuffle847293

local SNAP847293 = {
  pcall=K.pcall, xpcall=K.xpcall, type=K.type, typeof=K.typeof,
  tostring=K.tostr, tonumber=K.tonum, rawget=K.rawget, rawset=K.rawset,
  setmetatable=K.setmt, getmetatable=K.getmt, ipairs=K.ipairs,
  pairs=K.pairs, select=K.sel, next=K.next,
  string=string, math=math, table=table, debug=debug,
  coroutine=coroutine, os=os, bit32=bit32, utf8=utf8,
  task=task, buffer=buffer,
}
local function snap_ok847293()
  local k, v
  for k, v in K.pairs(SNAP847293) do
    local cur = K.rawget(_G, k)
    if cur ~= v then
      local ok, r = K.pcall(function() return _G[k] end)
      if not ok or r ~= v then return false end
    end
  end
  return true
end
local snap_ok = snap_ok847293

local PH1_847293 = {}
local function P1_847293(fn) PH1_847293[#PH1_847293+1] = fn end
local PH1, P1 = PH1_847293, P1_847293

P1(function()
  local natives = {
    K.pcall,K.xpcall,K.type,K.tostr,K.tonum,K.rawget,K.rawset,
    K.setmt,K.getmt,K.ipairs,K.pairs,K.byte,K.char,K.sub,K.len,
    K.rep,K.gsub,K.find,K.info,K.tb,K.clk,K.time,K.rnd,K.floor,K.abs,
    K.upper,K.lower,K.reverse,K.min,K.max,K.sqrt,K.sin,K.cos,
  }
  local i, fn
  for i = 1, #natives do
    fn = natives[i]
    CHK(K.type(fn) == "function")
    local ok, s = K.pcall(K.info, fn, "s")
    CHK(ok and s == "[C]")
  end
  local luaFn = function() return 1 end
  local ok, s = K.pcall(K.info, luaFn, "s")
  CHK(ok and s ~= "[C]")
end)
P1(function() CHK(K.typeof ~= nil) end)
P1(function()
  EQ(K.type(nil), "nil"); EQ(K.type(true), "boolean")
  EQ(K.type(1), "number"); EQ(K.type("s"), "string")
  EQ(K.type({}), "table"); EQ(K.type(print), "function")
end)
P1(function()
  EQ(K.typeof(nil),"nil"); EQ(K.typeof(true),"boolean")
  EQ(K.typeof(1),"number"); EQ(K.typeof("s"),"string")
  EQ(K.typeof({}),"table"); EQ(K.typeof(function() end),"function")
  EQ(K.typeof(Vector3.new()),"Vector3")
  EQ(K.typeof(Vector2.new()),"Vector2")
  EQ(K.typeof(CFrame.new()),"CFrame")
  EQ(K.typeof(Color3.new()),"Color3")
  EQ(K.typeof(UDim.new()),"UDim")
  EQ(K.typeof(UDim2.new()),"UDim2")
  EQ(K.typeof(Rect.new()),"Rect")
  EQ(K.typeof(Instance.new("Folder")),"Instance")
end)
P1(function()
  CHK(K.type(_G) == "table")
  CHK(K.find(K.tostr(_G), "table: ", 1, true) ~= nil)
end)
P1(function() EQ(_VERSION, "Luau") end)
P1(function()
  CHK(game ~= nil)
  CHK(K.type(Instance.new) == "function")
end)
P1(function() CHK(K.pcall(function() return game:GetService("CorePackages") end)) end)
P1(function() CHK(not K.pcall(function() return require("@lune/fs") end)) end)
P1(function()
  if K.getfenv then
    local env = K.getfenv(0)
    CHK(K.type(env) == "table" and env ~= _G)
  end
end)
P1(function()
  local RS = game:GetService("RunService")
  local i
  for i = 1, 125 do CHK(not RS:IsStudio()) end
end)
P1(function()
  EQ(K.pi, 3.141592653589793)
  CHK(K.huge == 1/0)
  CHK(K.huge ~= -K.huge)
  CHK(not (0/0 == 0/0))
  EQ(K.floor(3.7), 3)
  EQ(K.abs(-5), 5)
end)
P1(function()
  EQ(K.tostr(42),"42"); EQ(K.tonum("42"),42)
  EQ(K.tonum("0x10"),16); EQ(K.tonum("junk"),nil)
  EQ(K.tonum("1e3"),1000)
  EQ(K.tostr(nil),"nil"); EQ(K.tostr(true),"true")
end)
P1(function()
  local o, n = K.gsub("aaa","a","b")
  EQ(o,"bbb"); EQ(n,3)
  local c = 0
  local _
  for _ in K.gmatch("1:2:3:", "(%d+):") do c = c + 1 end
  EQ(c,3)
  EQ(K.byte("A"),65); EQ(K.char(65),"A")
  EQ(K.sub("hello",2,4),"ell"); EQ(K.rep("x",3),"xxx")
  EQ(K.find("hello","l"),3)
end)
P1(function()
  EQ(K.concat({"a","b","c"},"-"),"a-b-c")
  local t = {1,2,3}; K.insert(t,4); EQ(#t,4)
  K.remove(t,1); EQ(t[1],2)
end)
P1(function()
  EQ(K.sel("#",1,2,3),3)
  EQ(K.sel(2,"a","b","c"),"b")
end)
P1(function()
  local t = {a=1}
  local k, v = K.next(t)
  EQ(k,"a"); EQ(v,1)
  EQ(K.next(t,"a"),nil)
end)
P1(function()
  local sum = 0
  local _, v
  for _, v in K.ipairs({10,20,30}) do sum = sum + v end
  EQ(sum,60)
  local c = 0
  local _
  for _ in K.pairs({a=1,b=2,c=3}) do c = c + 1 end
  EQ(c,3)
end)
P1(function()
  EQ(K.sel("#"),0); EQ(K.sel("#",nil),1); EQ(K.sel("#",nil,nil),2)
end)
P1(function()
  local _, e = K.pcall(function() error("dn_probe") end)
  CHK(K.type(e) == "string")
  CHK(K.find(e, "^[^:]+:%d+:") ~= nil)
  local n = K.tonum(K.match(e, ":(%d+):"))
  CHK(n and n > 0 and n < 1e7)
end)
P1(function()
  local ok, v = K.pcall(function() return 5 end)
  CHK(ok and v == 5)
  local ok2, v2 = K.pcall(function() error("x") end)
  CHK(not ok2 and v2 == "x")
end)
P1(function()
  local ok, v = K.xpcall(function() return 7 end, function() end)
  CHK(ok and v == 7)
  local called = false
  local ok2 = K.xpcall(function() error("y") end, function() called = true end)
  CHK(not ok2 and called)
end)
P1(function()
  local t = K.setmt({}, {__index = function() return 99 end})
  EQ(t.anything, 99)
  EQ(K.rawget(t, "anything"), nil)
  K.rawset(t, "x", 1)
  EQ(K.rawget(t, "x"), 1)
end)
P1(function()
  local t = {}
  local mt = {__index = {z=1}}
  K.setmt(t, mt)
  EQ(K.getmt(t), mt)
  EQ(t.z, 1)
end)
P1(function()
  if K.setfenv and K.getfenv then
    local ok, e = K.pcall(K.setfenv, K.byte, K.getfenv(K.byte))
    CHK(not ok)
    CHK(K.find(K.tostr(e), "cannot change environment", 1, true) ~= nil)
  end
end)
P1(function()
  local co = K.mkco(function(a,b) return a+b end)
  local ok, sum = K.resume(co, 3, 4)
  CHK(ok and sum == 7)
  EQ(K.costat(co), "dead")
end)
P1(function()
  CHK(K.type(K.time()) == "number" and K.time() > 0)
  CHK(K.type(K.clk()) == "number" and K.clk() >= 0)
end)
P1(function()
  local w = K.wait(0.05)
  CHK(K.type(w) == "number" and w >= 0.04)
end)
P1(function()
  if not K.newproxy then return end
  local p = K.newproxy(true)
  local mt = K.getmt(p)
  CHK(K.type(mt) == "table")
  local hits = 0
  mt.__index    = function() hits = hits + 1; return 41 end
  mt.__newindex = function() hits = hits + 1 end
  mt.__call     = function() hits = hits + 1; return 7 end
  mt.__tostring = function() hits = hits + 1; return "DN7_CANARY" end
  mt.__len      = function() hits = hits + 1; return 3 end
  mt.__concat   = function() hits = hits + 1; return "CC" end
  mt.__add      = function() hits = hits + 1; return 1 end
  mt.__sub      = function() hits = hits + 1; return 1 end
  mt.__mul      = function() hits = hits + 1; return 1 end
  mt.__div      = function() hits = hits + 1; return 1 end
  mt.__unm      = function() hits = hits + 1; return 1 end
  EQ(p.any, 41)
  p.x = 1
  EQ(p(), 7)
  EQ(K.tostr(p), "DN7_CANARY")
  EQ(#p, 3)
  EQ(p .. "z", "CC")
  EQ(p + 1, 1); EQ(p - 1, 1); EQ(p * 1, 1); EQ(p / 1, 1); EQ(-p, 1)
  CHK(hits >= 10)
end)
P1(function()
  if not K.getupval then return end
  local nonce = "DN7_UP_" .. K.rnd(1, 2^30)
  local up = nonce
  local f = function() return up end
  local n, v = K.getupval(f, 1)
  EQ(n, "up"); EQ(v, nonce)
end)
P1(function()
  if not K.getconst then return end
  local nonce = "DN7_C_" .. K.rnd(1, 2^30)
  local f = function() return nonce end
  local t = K.getconst(f)
  CHK(K.type(t) == "table")
  local found = false
  local i
  for i = 1, #t do if t[i] == nonce then found = true; break end end
  CHK(found)
end)
P1(function()
  if not K.getproto then return end
  local f = function() return function() return 1 end end
  local p = K.getproto(f)
  CHK(K.type(p) == "table" and #p == 1)
end)
P1(function()
  local chunk = "DN7_CHUNK_" .. K.rnd(1, 2^30)
  local f = K.load("return 1", chunk)
  CHK(K.type(f) == "function")
  local src = K.info(f, "s")
  CHK(K.type(src) == "string")
  CHK(K.find(src, chunk, 1, true) ~= nil)
end)
P1(function()
  if not K.freeze or not K.isfrozen then return end
  local t = K.freeze({x = 1})
  CHK(K.isfrozen(t))
  CHK(not K.pcall(K.rawset, t, "x", 2))
  CHK(not K.pcall(function() t.x = 2 end))
  EQ(t.x, 1)
end)
P1(function()
  local sentinel = {}
  local ok, err = K.pcall(function() error(sentinel) end)
  CHK(not ok and K.raweq(err, sentinel))
end)
P1(function()
  if not buffer or not buffer.create then return end
  local b = buffer.create(32)
  EQ(buffer.len(b), 32)
end)
P1(function()
  if not utf8 then return end
  EQ(utf8.char(65), "A")
  local s = utf8.char(9731)
  EQ(utf8.codepoint(s, 1), 9731)
  EQ(utf8.len("_-_2_"), 5)
end)
P1(function()
  CHK(K.type(_NSKEY) == "string")
  CHK(#_NSKEY == 11)
  CHK(K.type(_G[_NSKEY]) == "table")
end)
P1(function()
  if not K.pack_str or not K.unpack_str then return end
  local p = K.pack_str("<i4", 12345)
  CHK(K.type(p) == "string")
  local v = K.unpack_str("<i4", p)
  EQ(v, 12345)
end)
P1(function()
  if not K.clear then return end
  local t = {1,2,3}
  K.clear(t)
  EQ(#t, 0)
end)
P1(function()
  if not K.clone then return end
  local t = {a=1, b=2}
  local c = K.clone(t)
  EQ(c.a, 1); EQ(c.b, 2)
  CHK(not K.raweq(c, t))
end)
P1(function()
  if not K.find_tbl then return end
  EQ(K.find_tbl({10,20,30}, 20), 2)
  EQ(K.find_tbl({10,20,30}, 99), nil)
end)

K.seed(K.rnd(1, 2^30))
shuffle(PH1)
do local _i for _i = 1, #PH1 do PH1[_i]() end end

local PH2_847293 = {}
local function P2_847293(fn) PH2_847293[#PH2_847293+1] = fn end
local PH2, P2 = PH2_847293, P2_847293

P2(function()
  EQ(K.getmt(print), nil); EQ(K.getmt(error), nil)
  EQ(K.getmt(K.pcall), nil); EQ(K.getmt(K.info), nil)
end)
P2(function() CHK(not K.pcall(K.info)) end)
P2(function()
  local fn = function() end
  local s1 = K.info(fn, "s")
  local s2 = K.info(print, "s")
  EQ(s2, "[C]"); CHK(s1 ~= "[C]")
end)
P2(function()
  local l = K.info(function() end, "l")
  CHK(K.type(l) == "number" and l > 0)
end)
P2(function()
  local mark = "DN7_MARK_" .. K.rnd(1e9)
  local tb = K.tb(mark, 1)
  CHK(K.type(tb) == "string")
  CHK(K.find(tb, mark, 1, true) ~= nil)
end)
P2(function()
  local tb = K.tb()
  CHK(K.type(tb) == "string" and #tb > 10)
end)
P2(function() CHK(not K.pcall(function() error() end)) end)
P2(function()
  local _, e = K.pcall(function() error("exact_msg", 0) end)
  EQ(e, "exact_msg")
end)
P2(function()
  local _, e = K.pcall(function() error("lvl2", 2) end)
  CHK(K.type(e) == "string")
  CHK(K.find(e, "lvl2", 1, true) ~= nil)
end)
P2(function()
  local ok = K.pcall(function() assert(false, "mmm") end)
  CHK(not ok)
  local ok2, v = K.pcall(function() return assert(42, "x") end)
  CHK(ok2 and v == 42)
end)
P2(function()
  local o = K.gsub("abc", "%a", function(c) return K.char(K.byte(c)+1) end)
  EQ(o, "bcd")
end)
P2(function()
  local o = K.gsub("$x", "%$(%w+)", {x = "y"})
  EQ(o, "y")
end)
P2(function()
  local cs = {}
  local k, v
  for k, v in K.gmatch("a=1,b=2", "(%w+)=(%w+)") do K.insert(cs, k..v) end
  EQ(cs[1], "a1"); EQ(cs[2], "b2")
end)
P2(function()
  EQ(K.find("a.b", ".", 1, true), 2)
  CHK(K.find("a.b", "%.") ~= nil)
end)
P2(function()
  EQ(K.fmt("%d",42),"42"); EQ(K.fmt("%s","x"),"x")
  EQ(K.fmt("%.2f",3.14159),"3.14"); EQ(K.fmt("%05d",42),"00042")
end)
P2(function()
  K.seed(12345); local a = K.rnd(1, 1e9)
  K.seed(12345); local b = K.rnd(1, 1e9)
  EQ(a, b)
end)
P2(function()
  local i
  for i = 1, 50 do
    local v = K.rnd(5, 10)
    CHK(v >= 5 and v <= 10)
  end
end)
P2(function()
  CHK(0.1 + 0.2 ~= 0.3)
  CHK(1e308 * 10 == K.huge)
  CHK(-1e308 * 10 == -K.huge)
end)
P2(function()
  local t = K.setmt({}, {__newindex = function() error("frozen") end})
  CHK(not K.pcall(function() t.x = 1 end))
  K.rawset(t, "x", 1)
  EQ(t.x, 1)
end)
P2(function()
  local co = K.mkco(function() error("co_err") end)
  local ok, e = K.resume(co)
  CHK(not ok)
  CHK(K.find(K.tostr(e), "co_err", 1, true) ~= nil)
end)
P2(function()
  local w = K.wrap(function(a) K.yield(a*2); return a*3 end)
  EQ(w(5), 10); EQ(w(), 15)
end)
P2(function()
  local ti = TweenInfo.new(2, Enum.EasingStyle.Bounce,
    Enum.EasingDirection.InOut, 3, true, 0.5)
  EQ(ti.Time, 2); EQ(ti.EasingStyle, Enum.EasingStyle.Bounce)
  EQ(ti.EasingDirection, Enum.EasingDirection.InOut)
  EQ(ti.RepeatCount, 3); EQ(ti.Reverses, true)
  CHK(K.abs(ti.DelayTime - 0.5) < 1e-6)
end)
P2(function()
  local v = Vector3.new(3, 4, 0)
  CHK(K.abs(v.Magnitude - 5) < 1e-6)
  CHK(K.abs(v.Unit.Magnitude - 1) < 1e-6)
  EQ(Vector3.xAxis:Dot(Vector3.yAxis), 0)
  EQ(Vector3.xAxis:Dot(Vector3.xAxis), 1)
  local c = Vector3.xAxis:Cross(Vector3.yAxis)
  CHK(K.abs(c.X) < 1e-6 and K.abs(c.Y) < 1e-6 and K.abs(c.Z - 1) < 1e-6)
end)
P2(function()
  local v = Vector2.new(3, 4)
  EQ(v.X, 3); EQ(v.Y, 4)
  CHK(K.abs(v.Magnitude - 5) < 1e-6)
end)
P2(function()
  local a = UDim2.fromScale(0.5, 0.5)
  local b = UDim2.fromOffset(100, 200)
  local s = a + b
  EQ(s.X.Scale, 0.5); EQ(s.X.Offset, 100)
  EQ(s.Y.Scale, 0.5); EQ(s.Y.Offset, 200)
end)
P2(function()
  local cf = CFrame.new(1, 2, 3)
  EQ(cf.X, 1); EQ(cf.Y, 2); EQ(cf.Z, 3)
  local cf2 = cf * CFrame.new(1, 0, 0)
  EQ(cf2.X, 2)
end)
P2(function()
  local c = Color3.fromRGB(128, 64, 32)
  EQ(c.R, 128/255); EQ(c.G, 64/255); EQ(c.B, 32/255)
end)
P2(function()
  local r = Rect.new(0, 0, 100, 200)
  EQ(r.Width, 100); EQ(r.Height, 200)
end)
P2(function()
  local c1 = K.clk()
  local s1 = workspace:GetServerTimeNow()
  K.wait(0.05)
  local c2 = K.clk()
  local s2 = workspace:GetServerTimeNow()
  CHK(c2 >= c1 and s2 >= s1)
  CHK(K.abs((c2 - c1) - (s2 - s1)) < 0.5)
end)
P2(function()
  if not K.random_type then return end
  EQ(K.random_type(1), "integer")
  EQ(K.random_type(1.0), "float")
  EQ(K.random_type(1e300), "float")
end)
P2(function()
  EQ(K.tostr(0.1), "0.1"); EQ(K.tostr(1), "1"); EQ(K.tostr(1.0), "1")
end)
P2(function()
  local a = "DN7_INTERN_" .. "same"
  local b = "DN7_INTERN_same"
  CHK(K.raweq(a, b))
end)
P2(function()
  if not K.gethook then return end
  CHK(K.gethook() == nil)
end)
P2(function()
  if not K.gethook or not K.sethook then return end
  local marker = function() end
  K.sethook(marker, "", 0)
  ID(K.gethook(), marker)
  K.sethook()
  EQ(K.gethook(), nil)
end)
P2(function()
  if not K.gethook or not K.sethook then return end
  local m = function() end
  K.sethook(m, "c", 12345)
  local _, _, count = K.gethook()
  EQ(count, 12345); K.sethook()
end)
P2(function()
  local f = function() end
  local t0 = K.clk()
  local i
  for i = 1, 10000 do f() end
  CHK(K.clk() - t0 < 0.08)
end)
P2(function()
  local i
  local t0 = K.clk()
  for i = 1, 5000 do K.pcall(function() end) end
  local nativeDt = K.clk() - t0
  local t1 = K.clk()
  local f = function() end
  for i = 1, 5000 do f() end
  local luaDt = K.clk() - t1
  CHK(nativeDt > luaDt * 0.5)
end)
P2(function()
  local sig = nil
  local i
  for i = 1, 50 do
    local a, b, c, d, e, f = K.info(K.pcall, "slnaf")
    local cur = K.concat({
      K.tostr(a), K.tostr(b), K.tostr(c),
      K.tostr(d), K.tostr(e), K.tostr(f)
    }, "\1")
    if sig == nil then sig = cur elseif sig ~= cur then FAIL() end
  end
end)
P2(function()
  local line = K.info(1, "l")
  local fn = function() return 1 end
  local info = K.info(fn, "l")
  CHK(K.type(info) == "number")
  CHK(K.abs(info - line) < 100)
end)
P2(function() local fn = function() end ID(K.info(fn, "f"), fn) end)
P2(function()
  local fn = function() end
  local n = K.info(fn, "n")
  CHK(n == nil or K.type(n) == "string")
end)

K.defer(function()
  shuffle(PH2)
  local i
  for i = 1, #PH2 do PH2[i]() end
end)

local PH3_847293 = {}
local function P3_847293(fn) PH3_847293[#PH3_847293+1] = fn end
local PH3, P3 = PH3_847293, P3_847293

P3(function()
  local p = Instance.new("Part")
  CHK(p:IsA("BasePart"))
  EQ(p.ClassName, "Part")
  CHK(p.Parent == nil)
  p:Destroy()
end)
P3(function()
  local f = Instance.new("Folder")
  local c = Instance.new("Folder", f)
  EQ(c.Parent, f)
  CHK(#f:GetChildren() == 1)
  f:Destroy()
end)
P3(function()
  local f = Instance.new("Folder")
  local hit = false
  local c = f.Destroying:Connect(function() hit = true end)
  CHK(c ~= nil)
  c:Disconnect()
  f:Destroy()
  CHK(not hit)
end)
P3(function()
  local f = Instance.new("Folder")
  local hit = false
  f.Destroying:Connect(function() hit = true end)
  f:Destroy()
  K.wait(0.05)
  CHK(hit)
end)
P3(function() CHK(game:IsLoaded() == true) end)
P3(function()
  CHK(K.type(game.PlaceId) == "number" and game.PlaceId >= 0)
  CHK(K.type(game.GameId) == "number" and game.GameId >= 0)
  EQ(K.typeof(game), "Instance")
  CHK(game:IsA("DataModel"))
end)
P3(function()
  local P = game:GetService("Players")
  CHK(P:IsA("Players"))
  local _, pl
  for _, pl in K.ipairs(P:GetPlayers()) do CHK(pl:IsA("Player")) end
end)
P3(function()
  local RS = game:GetService("RunService")
  CHK(RS:IsA("RunService"))
  CHK(RS:IsClient() == true)
  CHK(RS:IsServer() == false)
end)
P3(function()
  local h = game:GetService("HttpService")
  local e = h:JSONEncode({"", 1, true, {"a", "b"}})
  local d = h:JSONDecode(e)
  EQ(d[1], ""); EQ(d[2], 1); EQ(d[3], true)
  CHK(#d[4] == 2)
  EQ(#h:GenerateGUID(false), 36)
end)
P3(function()
  local v = game:GetService("VoiceChatService")
  CHK(K.type(v.joinVoice) == "function")
  CHK(K.type(v.rejoinVoice) == "function")
  CHK(K.type(v.leaveVoice) == "function")
end)
P3(function()
  local s = game:GetService("SoundService")
  CHK(K.type(s.GetAudioInstances) == "function")
  CHK(K.type(s.GetInputDevices) == "function")
  CHK(K.type(s.GetOutputDevices) == "function")
end)
P3(function()
  local u = game:GetService("UserInputService")
  CHK(K.type(u.KeyboardEnabled) == "boolean")
  CHK(K.type(u.MouseEnabled) == "boolean")
  CHK(K.type(u.TouchEnabled) == "boolean")
  local keys = {Enum.KeyCode.W, Enum.KeyCode.A, Enum.KeyCode.S, Enum.KeyCode.D}
  local _, k
  for _, k in K.ipairs(keys) do
    CHK(K.type(u:IsKeyDown(k)) == "boolean")
  end
end)
P3(function()
  local ts = game:GetService("TweenService")
  local nv = Instance.new("NumberValue")
  nv.Value = 0
  local tw = ts:Create(nv, TweenInfo.new(0.1, Enum.EasingStyle.Linear,
    Enum.EasingDirection.Out), {Value = 100})
  CHK(tw and tw:IsA("Tween"))
  tw:Play(); tw.Completed:Wait()
  CHK(K.abs(nv.Value - 100) < 1)
  nv:Destroy()
end)
P3(function()
  local u = game:GetService("UserService")
  EQ(u.ClassName, "UserService")
  local ok, r = K.pcall(function() return u:GetUserInfosByUserIdsAsync({1, 156}) end)
  CHK(ok and K.type(r) == "table" and #r == 2)
  local seen = {}
  local _, i
  for _, i in K.ipairs(r) do
    CHK(K.type(i.Id) == "number")
    CHK(K.type(i.Username) == "string" and #i.Username > 0)
    CHK(K.type(i.DisplayName) == "string" and #i.DisplayName > 0)
    CHK(K.type(i.HasVerifiedBadge) == "boolean")
    seen[i.Id] = true
  end
  CHK(seen[1] and seen[156])
  CHK(not K.pcall(function() u:GetUserInfosByUserIdsAsync() end))
  CHK(not K.pcall(function() u:GetUserInfosByUserIdsAsync("x") end))
  CHK(not K.pcall(function() u:GetUserInfosByUserIdsAsync(true) end))
end)
P3(function()
  local a, b, c = false, false, false
  K.defer(function() a = true end)
  K.delay(0.05, function() b = true end)
  K.spawn(function() c = true end)
  K.wait(0.15)
  CHK(a and b and c)
end)
P3(function()
  local fired = false
  local job = K.delay(1, function() fired = true end)
  K.cancel(job)
  K.wait(0.05)
  CHK(not fired)
end)
P3(function()
  local t0 = K.clk()
  K.wait(0.15)
  local dt = K.clk() - t0
  CHK(dt >= 0.13 and dt < 3.0)
end)
P3(function()
  local wv = K.setmt({}, {__mode = "v"})
  wv[1] = {true}
  CHK(wv[1] ~= nil and wv[1][1] == true)
  local wk = K.setmt({}, {__mode = "k"})
  local k = {}
  wk[k] = true
  CHK(wk[k] == true)
  local wkv = K.setmt({}, {__mode = "kv"})
  EQ(K.getmt(wkv).__mode, "kv")
end)
P3(function()
  if K.newproxy and K.getmt then
    local p = K.newproxy(true)
    local mt = K.getmt(p)
    mt.__namecall = function() FAIL() end
    K.pcall(function() p:boom() end)
  end
end)
P3(function()
  if K.gc then
    local before = K.gc("count")
    local t = {}
    local i
    for i = 1, 500 do t[i] = K.rep("Z", 100) end
    local after = K.gc("count")
    CHK(after >= before)
  end
end)
P3(function()
  local k = "__DN7_PROBE_" .. K.rnd(1e9)
  _G[k] = 42; CHK(_G[k] == 42)
  _G[k] = nil; CHK(_G[k] == nil)
end)
P3(function()
  EQ(Enum.KeyCode.W.Value, Enum.KeyCode.W.Value)
  CHK(Enum.KeyCode:GetEnumItems() ~= nil)
  EQ(Enum.EasingStyle.Linear.Name, "Linear")
  CHK(Enum.KeyCode:FromValue(87) == Enum.KeyCode.W)
  CHK(Enum.KeyCode:FromValue(99999) == nil)
end)
P3(function()
  CHK(not K.pcall(function() game:GetService("NotARealService12345") end))
  CHK(not K.pcall(function() game:GetService(123) end))
end)
P3(function()
  local svc = game:FindService("Players")
  CHK(svc ~= nil and svc:IsA("Players"))
  EQ(game:FindService("NotRealService123"), nil)
end)
P3(function()
  local f = Instance.new("Folder")
  local c = Instance.new("Folder", f)
  c.Name = "target"
  EQ(f:FindFirstChild("target"), c)
  CHK(f:WaitForChild("target", 1) == c)
  EQ(f:FindFirstChild("nothing"), nil)
  f:Destroy()
end)
P3(function()
  CHK(not K.pcall(Instance.new, "NotARealClass_" .. K.rnd(1, 2^30)))
  CHK(not K.pcall(Instance.new, {}))
  CHK(not K.pcall(Instance.new, 1))
  CHK(not K.pcall(Instance.new, true))
end)
P3(function()
  local p = Instance.new("Part")
  EQ(K.rawget(p, "Name"), nil)
  EQ(K.rawget(p, "Anchored"), nil)
  EQ(K.rawget(p, "IsA"), nil)
  p:Destroy()
end)
P3(function()
  local p1, p2 = Instance.new("Part"), Instance.new("Part")
  local f1, f2 = Instance.new("Folder"), Instance.new("Folder")
  ID(K.getmt(p1), K.getmt(p2))
  ID(K.getmt(f1), K.getmt(f2))
  CHK(not K.raweq(K.getmt(p1), K.getmt(f1)))
  p1:Destroy(); p2:Destroy(); f1:Destroy(); f2:Destroy()
end)
P3(function()
  local co = K.mkco(function()
    local ok, v = K.pcall(function() return K.yield(1) end)
    return ok, v
  end)
  local ok, y = K.resume(co)
  CHK(ok); EQ(y, 1)
  local ok2, a, b = K.resume(co, "resumed")
  CHK(ok2); EQ(a, true); EQ(b, "resumed")
end)
P3(function()
  if not K.coyieldable then return end
  local seen = false
  local ev = Instance.new("BindableEvent")
  K.spawn(function() seen = K.coyieldable(); ev:Fire() end)
  ev.Event:Wait()
  CHK(seen == true)
  ev:Destroy()
end)

K.defer(function()
  K.wait(2)
  shuffle(PH3)
  local i
  for i = 1, #PH3 do PH3[i]() end
end)

local PH4_847293 = {}
local function P4_847293(fn) PH4_847293[#PH4_847293+1] = fn end
local PH4, P4 = PH4_847293, P4_847293
local LOCK847293 = {h1=0, h2=0, h3=0, s1=false, s2=false, s3=false}

local function fp1_847293()
  local h = 2166136261
  local fns = {K.pcall, K.xpcall, K.type, K.tostr}
  local i, fn
  for i = 1, #fns do
    fn = fns[i]
    local s = K.pcall(K.info, fn, "s")
    if s then
      local j
      for j = 1, #s do
        h = K.bxor(h, K.byte(s, j))
        h = (h * 16777619) % 2^32
      end
    end
  end
  return h
end
local function fp2_847293()
  local h = 0x811C9DC5
  local fn = function() end
  local l = K.info(fn, "l")
  if l then h = K.bxor(h, l) end
  local s = K.info(fn, "s")
  if s then
    local i
    for i = 1, #s do h = K.bxor(h, K.byte(s, i)) end
  end
  return h
end
local function fp3_847293()
  local h = 0x1000193
  local ok, r = K.pcall(function()
    return game:GetService("UserService"):GetUserInfosByUserIdsAsync({1})
  end)
  if ok and r and r[1] then
    h = K.bxor(h, r[1].Id)
    local u = r[1].Username or ""
    local i
    for i = 1, #u do h = K.bxor(h, K.byte(u, i)) end
  end
  return h
end

P4(function()
  local fns = {K.pcall, K.xpcall, K.type, K.setmt, K.getmt,
    K.rawget, K.rawset, K.byte, K.char, K.gsub, K.find, K.info, K.tb, K.rnd}
  local i, fn
  for i = 1, #fns do
    fn = fns[i]
    local ok, s = K.pcall(K.info, fn, "s")
    CHK(ok and s == "[C]")
  end
end)
P4(function() CHK(snap_ok()) end)
P4(function()
  CHK(0.1 + 0.2 ~= 0.3)
  CHK(1/0 == K.huge)
end)
P4(function() CHK(K.type(_G) == "table") end)
P4(function()
  EQ(_G.print, print); EQ(_G.warn, warn); EQ(_G.error, error)
  EQ(_G.string, string); EQ(_G.math, math); EQ(_G.table, table)
  EQ(_G.debug, debug); EQ(_G.coroutine, coroutine); EQ(_G.os, os)
end)
P4(function()
  local t = fp1_847293()
  if LOCK847293.s1 and t ~= LOCK847293.h1 then FAIL() end
  LOCK847293.h1 = t; LOCK847293.s1 = true
end)
P4(function()
  local t = fp2_847293()
  if LOCK847293.s2 and t ~= LOCK847293.h2 then FAIL() end
  LOCK847293.h2 = t; LOCK847293.s2 = true
end)
P4(function()
  local t = fp3_847293()
  if LOCK847293.s3 and t ~= LOCK847293.h3 then FAIL() end
  LOCK847293.h3 = t; LOCK847293.s3 = true
end)
P4(function()
  local fn = function() return "DN7_SELF_7F3A" end
  local s = K.info(fn, "s")
  CHK(s and s ~= "[C]")
  local l = K.info(fn, "l")
  CHK(K.type(l) == "number")
end)
P4(function()
  if K.dump then
    CHK(not K.pcall(K.dump, K.pcall))
    local d = K.dump(function() end)
    CHK(K.type(d) == "string" and #d > 0)
  end
end)
P4(function()
  if K.getfenv then
    local env = K.getfenv(1)
    CHK(K.type(env) == "table")
  end
end)
P4(function()
  EQ(LOOK847293(0x01), K.pcall)
  EQ(LOOK847293(0x03), K.type)
  EQ(LOOK847293(0x15), print)
end)
P4(function()
  local co = K.mkco(function() end)
  EQ(K.costat(co), "suspended")
  K.resume(co)
  EQ(K.costat(co), "dead")
end)
P4(function() CHK(not K.pcall(K.info)) end)
P4(function()
  local u = game:GetService("UserService")
  local ok1, r1 = K.pcall(function() return u:GetUserInfosByUserIdsAsync({1}) end)
  local ok2, r2 = K.pcall(function() return u:GetUserInfosByUserIdsAsync({1}) end)
  CHK(ok1 and ok2)
  EQ(r1[1].Id, r2[1].Id)
  EQ(r1[1].Username, r2[1].Username)
end)
P4(function()
  local t0 = K.clk()
  K.wait(0.25)
  local dt = K.clk() - t0
  CHK(dt >= 0.22 and dt < 5.0)
end)
P4(function()
  EQ(K.bxor(5,3),6); EQ(K.band(7,3),3); EQ(K.bor(4,1),5)
  EQ(K.lshift(1,4),16); EQ(K.rshift(16,4),1)
end)
P4(function()
  EQ(K.floor(3.9), 3); EQ(K.ceil(3.1), 4)
  EQ(K.max(1,5,3), 5); EQ(K.min(1,5,3), 1)
  CHK(K.abs(K.sqrt(16) - 4) < 1e-9)
  CHK(K.abs(K.sin(0)) < 1e-9)
  CHK(K.abs(K.cos(0) - 1) < 1e-9)
end)
P4(function()
  if table.sort then
    local t = {3, 1, 2}
    K.sort(t)
    EQ(t[1], 1); EQ(t[3], 3)
  end
end)
P4(function()
  EQ(K.sel(-1, "a", "b", "c"), "c")
  EQ(K.sel(-2, "a", "b", "c"), "b")
end)
P4(function()
  local p = K.pack("a", nil, "c")
  EQ(p.n, 3); EQ(p[1], "a"); EQ(p[2], nil); EQ(p[3], "c")
end)
P4(function()
  local function rec(n)
    if n <= 0 then return 0 end
    local ok, v = K.pcall(rec, n - 1)
    CHK(ok)
    return v + 1
  end
  EQ(rec(200), 200)
end)
P4(function()
  if not K.coclose then return end
  local co = K.mkco(function() K.yield() end)
  K.resume(co)
  K.pcall(K.coclose, co)
  EQ(K.costat(co), "dead")
end)

local PH5_847293 = {}
local function P5_847293(fn) PH5_847293[#PH5_847293+1] = fn end
local PH5, P5 = PH5_847293, P5_847293

P5(function()
  if not K.getfenv then return end
  CHK(not K.pcall(K.getfenv, 9999))
end)
P5(function()
  if not K.getfenv then return end
  local ok, info = K.pcall(K.info, K.getfenv, "s")
  CHK(ok and info == "[C]")
end)
P5(function()
  if not K.getfenv or not K.setfenv then return end
  local ok, e = K.pcall(K.setfenv, K.byte, K.getfenv(K.byte))
  CHK(not ok)
  CHK(K.find(K.tostr(e), "cannot change environment", 1, true) ~= nil)
end)
P5(function()
  local mt = K.getmt("")
  if mt ~= nil then
    if K.type(mt) == "string" then
      CHK(K.find(mt, "lock", 1, true) ~= nil)
    else
      CHK(K.type(mt) == "table" and mt.__metatable ~= nil)
    end
  end
end)
P5(function()
  local mt = K.getmt(1)
  if mt ~= nil and K.type(mt) == "string" then
    CHK(K.find(mt, "lock", 1, true) ~= nil)
  end
end)
P5(function()
  local mt = K.getmt(true)
  if mt ~= nil and K.type(mt) == "string" then
    CHK(K.find(mt, "lock", 1, true) ~= nil)
  end
end)
P5(function()
  local key = "__DN_RAW_" .. K.rnd(1e9)
  EQ(K.rawget(_G, key), nil)
  K.rawset(_G, key, 42)
  EQ(K.rawget(_G, key), 42)
  K.rawset(_G, key, nil)
  EQ(K.rawget(_G, key), nil)
end)
P5(function() EQ(K.rawget(K.pcall, "anything"), nil) end)
P5(function() CHK(not K.pcall(K.rawset, K.pcall, "x", 1)) end)
P5(function()
  if not K.getupval or not K.setupval then return end
  local marker = "DN_UP_" .. K.rnd(1e9)
  local up = marker
  local f = function() return up end
  local n, v = K.getupval(f, 1)
  EQ(n, "up"); EQ(v, marker)
  K.setupval(f, 1, "CHANGED"); EQ(f(), "CHANGED")
  K.setupval(f, 1, marker); EQ(f(), marker)
end)
P5(function()
  if not K.getconst then return end
  local nonce = "DN_CONST_" .. K.rnd(1e9)
  local f = function() return nonce end
  local consts = K.getconst(f)
  local found = false
  local i
  for i = 1, #consts do if consts[i] == nonce then found = true; break end end
  CHK(found)
end)
P5(function()
  if not K.getproto then return end
  local f = function() return function() return function() end end
  local protos = K.getproto(f)
  CHK(K.type(protos) == "table")
  EQ(#protos, 1)
  CHK(K.type(protos[1]) == "function")
end)
P5(function()
  local sentinel = {}
  local ok, err = K.pcall(function() error(sentinel) end)
  CHK(not ok); ID(err, sentinel)
end)
P5(function()
  local sentinel = {}
  local got
  local ok = K.xpcall(function() error(sentinel) end,
    function(e) got = e; return "handled" end)
  CHK(not ok); ID(got, sentinel)
end)
P5(function()
  local ok, a, b, c = K.pcall(function() return 1, nil, 3 end)
  CHK(ok); EQ(a, 1); EQ(b, nil); EQ(c, 3)
end)
P5(function()
  local called = false
  K.xpcall(function() error("x") end, function(e)
    called = true; EQ(e, "x")
  end)
  CHK(called)
end)
P5(function()
  local function f(...)
    EQ(K.sel("#", ...), 3)
    EQ(K.sel(1, ...), nil)
    EQ(K.sel(2, ...), 2)
    EQ(K.sel(3, ...), nil)
  end
  f(nil, 2, nil)
end)
P5(function()
  EQ(K.sel("#"), 0); EQ(K.sel("#", nil), 1); EQ(K.sel("#", nil, nil), 2)
  EQ(K.sel(-1, "a", "b", "c"), "c"); EQ(K.sel(-2, "a", "b", "c"), "b")
end)
P5(function()
  local t = {only = 1}
  local k, v = K.next(t)
  EQ(k, "only"); EQ(v, 1); EQ(K.next(t, "only"), nil)
end)
P5(function()
  local t = {1, 2, 3, 4, 5}
  local count = 0
  local k
  for k in K.pairs(t) do
    CHK(K.type(k) == "number"); count = count + 1
  end
  EQ(count, 5)
end)
P5(function()
  local t = {10, 20, 30}
  local sum = 0
  local _, v
  for _, v in K.ipairs(t) do sum = sum + v end
  EQ(sum, 60)
end)
P5(function()
  local samples = {
    Vector3.new(), Vector2.new(), CFrame.new(), Color3.new(),
    UDim.new(), UDim2.new(), Rect.new(), TweenInfo.new(),
    Random.new(), Enum.KeyCode.W, Instance.new("Part"),
  }
  local i, v
  for i = 1, #samples do
    v = samples[i]
    local mt = K.getmt(v)
    if K.type(mt) == "table" and mt.__type then EQ(K.typeof(v), mt.__type) end
    if K.type(v) == "userdata" and v.Destroy then K.pcall(v.Destroy, v) end
  end
end)
P5(function()
  local co
  co = K.mkco(function() ID(K.corun(), co) end)
  K.resume(co)
end)
P5(function()
  local co = K.mkco(function() K.yield(1); K.yield(2) end)
  local ok, v = K.resume(co)
  CHK(ok); EQ(v, 1); EQ(K.costat(co), "suspended")
  ok, v = K.resume(co)
  CHK(ok); EQ(v, 2); EQ(K.costat(co), "suspended")
  K.resume(co); EQ(K.costat(co), "dead")
end)
P5(function()
  if not K.getgenv then return end
  local g = K.getgenv()
  CHK(K.type(g) == "table"); ID(g, g)
  if g.game then ID(g.game, game) end
end)
P5(function()
  if not K.getrenv then return end
  local r = K.getrenv()
  CHK(K.type(r) == "table")
  if r.game then ID(r.game, game) end
end)
P5(function()
  if not K.getgc then return end
  local marker = function() end
  local found = false
  local i, v
  local gc = K.getgc(false)
  for i = 1, #gc do
    v = gc[i]
    if K.raweq(v, marker) then found = true; break end
  end
  CHK(found)
end)
P5(function()
  if not K.dump then return end
  local f = function() return 42 end
  EQ(K.dump(f), K.dump(f))
  EQ(K.byte(K.dump(f), 1), 27)
end)
P5(function()
  if not K.dump then return end
  CHK(not K.pcall(K.dump, K.pcall))
end)
P5(function()
  local chunk = "DN_CHUNK_" .. K.rnd(1, 2^30)
  local f = K.load("return 1", chunk)
  CHK(K.type(f) == "function")
  local src = K.info(f, "s")
  CHK(K.find(src, chunk, 1, true) ~= nil)
end)
P5(function()
  local chunk = "DN_TRACE_" .. K.rnd(1, 2^30)
  local f = K.load("error('x')", chunk)
  local ok, err = K.pcall(f)
  CHK(not ok)
  CHK(K.find(K.tostr(err), chunk, 1, true) ~= nil)
end)
P5(function()
  local f = K.load("return 1", "DN_WHAT")
  EQ(K.info(f, "w"), "Lua")
end)
P5(function()
  local wv = K.setmt({}, {__mode = "v"})
  local o = {}
  wv[1] = o
  EQ(wv[1], o); EQ(K.getmt(wv).__mode, "v")
end)
P5(function()
  local wk = K.setmt({}, {__mode = "k"})
  local k = {}
  wk[k] = 1
  EQ(wk[k], 1); EQ(K.getmt(wk).__mode, "k")
end)
P5(function()
  local wkv = K.setmt({}, {__mode = "kv"})
  EQ(K.getmt(wkv).__mode, "kv")
end)
P5(function()
  if not K.hookfunction then return end
  local ok, s = K.pcall(K.info, K.hookfunction, "s")
  CHK(ok and s == "[C]")
end)
P5(function()
  if not K.hookmetamethod then return end
  local ok, s = K.pcall(K.info, K.hookmetamethod, "s")
  CHK(ok and s == "[C]")
end)
P5(function()
  if not K.newcclosure then return end
  local ok, s = K.pcall(K.info, K.newcclosure, "s")
  CHK(ok and s == "[C]")
end)
P5(function()
  if not K.checkcaller then return end
  EQ(K.checkcaller(), true)
end)
P5(function()
  if not K.getrawmetatable then return end
  CHK(K.getrawmetatable(Vector3.new()) ~= nil)
end)
P5(function()
  if not K.identifyexecutor then return end
  local name = K.identifyexecutor()
  CHK(K.type(name) == "string" and #name > 0)
end)

K.defer(function()
  shuffle(PH5)
  local i
  for i = 1, #PH5 do PH5[i]() end
end)

local PH6_847293 = {}
local function P6_847293(fn) PH6_847293[#PH6_847293+1] = fn end
local PH6, P6 = PH6_847293, P6_847293

P6(function()
  local f = function() end
  local t0 = K.clk()
  local i
  for i = 1, 10000 do f() end
  CHK(K.clk() - t0 < 0.08)
end)
P6(function()
  local i
  local t0 = K.clk()
  for i = 1, 5000 do K.pcall(function() end) end
  local nativeDt = K.clk() - t0
  local t1 = K.clk()
  local f = function() end
  for i = 1, 5000 do f() end
  local luaDt = K.clk() - t1
  CHK(nativeDt > luaDt * 0.5)
end)
P6(function()
  local t0 = K.clk()
  local t = {}
  local i
  for i = 1, 5000 do t[i] = i end
  CHK(K.clk() - t0 < 0.1)
  EQ(#t, 5000)
end)
P6(function()
  local t0 = K.clk()
  K.wait(0.05)
  local dt = K.clk() - t0
  CHK(dt >= 0.03 and dt < 1)
end)
P6(function()
  local t0 = K.clk()
  local i
  for i = 1, 50 do
    local p = Instance.new("Part")
    p:Destroy()
  end
  CHK(K.clk() - t0 < 0.2)
end)

K.defer(function()
  shuffle(PH6)
  local i
  for i = 1, #PH6 do PH6[i]() end
end)

local PH7_847293 = {}
local function P7_847293(fn) PH7_847293[#PH7_847293+1] = fn end
local PH7, P7 = PH7_847293, P7_847293

P7(function()
  local ws = game:GetService("Workspace")
  CHK(K.type(ws) == "userdata")
  EQ(K.typeof(ws), "Instance")
  CHK(ws:IsA("Workspace"))
end)
P7(function()
  local ws = game:GetService("Workspace")
  CHK(K.type(ws.Gravity) == "number")
  CHK(ws.Gravity > 0 and ws.Gravity < 500)
end)
P7(function()
  local p = Instance.new("Part")
  p.Anchored = true
  p.Size = Vector3.new(1, 1, 1)
  p.Position = Vector3.new(0, 1000, 0)
  p.Parent = workspace
  local p0 = p.Position
  K.wait(0.1)
  CHK(K.abs(p.Position.Y - p0.Y) < 0.01)
  p:Destroy()
end)
P7(function()
  local p = Instance.new("Part")
  p.Anchored = false
  p.CanCollide = false
  p.Size = Vector3.new(1, 1, 1)
  p.Position = Vector3.new(0, 5000, 0)
  p.Parent = workspace
  K.wait(0.15)
  CHK(p.Position.Y < 5000)
  p:Destroy()
end)
P7(function()
  local p = Instance.new("Part")
  p.Size = Vector3.new(2, 2, 2)
  p.Material = Enum.Material.Plastic
  local mp = p:GetMass()
  CHK(K.type(mp) == "number" and mp > 0)
  p:Destroy()
end)
P7(function()
  local p = Instance.new("Part")
  p.Anchored = true; CHK(p.Anchored == true)
  p.Anchored = false; CHK(p.Anchored == false)
  p:Destroy()
end)
P7(function()
  local p = Instance.new("Part")
  p.CanCollide = true; CHK(p.CanCollide == true)
  p.CanCollide = false; CHK(p.CanCollide == false)
  p:Destroy()
end)
P7(function()
  local p = Instance.new("Part")
  p.AssemblyLinearVelocity = Vector3.new(10, 0, 0)
  local v = p.AssemblyLinearVelocity
  CHK(K.typeof(v) == "Vector3")
  CHK(K.abs(v.X - 10) < 1e-3)
  p:Destroy()
end)
P7(function()
  local params = RaycastParams.new()
  params.FilterType = Enum.RaycastFilterType.Exclude
  CHK(params.FilterType == Enum.RaycastFilterType.Exclude)
  local ws = game:GetService("Workspace")
  local ok = K.pcall(function()
    ws:Raycast(Vector3.new(0, 1000, 0), Vector3.new(0, -1, 0), params)
  end)
  CHK(ok)
end)
P7(function()
  local ws = game:GetService("Workspace")
  local p = Instance.new("Part")
  p.Anchored = true
  p.Size = Vector3.new(1, 1, 1)
  p.Position = Vector3.new(0, 800, 0)
  p.Parent = ws
  K.wait(0.05)
  local parts = ws:GetPartBoundsInBox(CFrame.new(0, 800, 0), Vector3.new(4, 4, 4))
  CHK(K.type(parts) == "table")
  local found = false
  local i
  for i = 1, #parts do
    if K.raweq(parts[i], p) then found = true; break end
  end
  CHK(found)
  p:Destroy()
end)
P7(function()
  local a = Instance.new("Attachment")
  local p = Instance.new("Part")
  a.Parent = p
  CHK(a:IsA("Attachment"))
  CHK(K.raweq(a.Parent, p))
  p:Destroy()
end)
P7(function()
  local a = Instance.new("Part")
  local b = Instance.new("Part")
  a.Anchored = true
  b.Anchored = false
  local w = Instance.new("WeldConstraint")
  w.Part0 = a; w.Part1 = b; w.Parent = a
  CHK(w:IsA("WeldConstraint"))
  CHK(K.raweq(w.Part0, a))
  CHK(K.raweq(w.Part1, b))
  a:Destroy()
end)
P7(function()
  local p = Instance.new("Part")
  p.Massless = true
  CHK(p.Massless == true)
  CHK(K.type(p:GetMass()) == "number")
  p:Destroy()
end)
P7(function()
  local ws = game:GetService("Workspace")
  local g = ws.Gravity
  CHK(K.type(g) == "number")
  ws.Gravity = g + 1
  CHK(ws.Gravity == g + 1)
  ws.Gravity = g
  CHK(ws.Gravity == g)
end)
P7(function()
  local p = Instance.new("Part")
  p.Anchored = false
  CHK(K.type(p.CanSetNetworkOwnership) == "function")
  CHK(K.pcall(function() return p:CanSetNetworkOwnership() end))
  p:Destroy()
end)
P7(function()
  local p = Instance.new("Part")
  p.Anchored = true
  local ok, r = K.pcall(function() return p:GetConnectedParts() end)
  CHK(ok); CHK(K.type(r) == "table")
  p:Destroy()
end)
P7(function()
  local p = Instance.new("Part")
  CHK(p.Touched ~= nil)
  CHK(K.type(p.Touched.Connect) == "function")
  p:Destroy()
end)
P7(function()
  local r3 = Region3int16.new(Vector3int16.new(0,0,0), Vector3int16.new(10,10,10))
  CHK(K.typeof(r3) == "Region3int16")
end)

K.defer(function()
  shuffle(PH7)
  local i
  for i = 1, #PH7 do PH7[i]() end
end)

local PH8_847293 = {}
local function P8_847293(fn) PH8_847293[#PH8_847293+1] = fn end
local PH8, P8 = PH8_847293, P8_847293

P8(function()
  ID(K.getmt(Vector3.new(1, 2, 3)), K.getmt(Vector3.new(4, 5, 6)))
end)
P8(function()
  CHK(not K.raweq(K.getmt(Vector3.new()), K.getmt(CFrame.new())))
end)
P8(function()
  local samples = {
    Vector3.new(), Vector2.new(), CFrame.new(), Color3.new(),
    UDim.new(), UDim2.new(), Rect.new(), TweenInfo.new(),
    Random.new(), Enum.KeyCode.W,
  }
  local i, v
  for i = 1, #samples do
    v = samples[i]
    local mt = K.getmt(v)
    if mt ~= nil then
      if K.type(mt) == "string" then
        CHK(K.find(mt, "lock", 1, true) ~= nil)
      else
        CHK(K.type(mt) == "table" and mt.__metatable ~= nil)
      end
    end
  end
end)
P8(function()
  local mt = K.getmt(Enum)
  if K.type(mt) == "string" then
    CHK(K.find(mt, "lock", 1, true))
  elseif K.type(mt) == "table" then
    CHK(mt.__newindex ~= nil or mt.__metatable ~= nil)
  end
end)
P8(function()
  local t = K.freeze({x = 1})
  CHK(K.isfrozen(t))
  CHK(not K.pcall(function() t.y = 2 end))
  CHK(not K.pcall(K.rawset, t, "y", 2))
end)
P8(function()
  local l1 = {v = 42}
  local l2 = K.setmt({}, {__index = l1})
  local l3 = K.setmt({}, {__index = l2})
  local l4 = K.setmt({}, {__index = l3})
  local l5 = K.setmt({}, {__index = l4})
  EQ(l5.v, 42)
end)
P8(function()
  local target = {}
  local proxy = K.setmt({}, {
    __newindex = function(_, k, v) K.rawset(target, k, v) end
  })
  proxy.a = 1; proxy.b = 2
  EQ(target.a, 1); EQ(target.b, 2)
  EQ(K.rawget(proxy, "a"), nil)
end)
P8(function()
  CHK(K.find(K.tostr({}), "table: ", 1, true) ~= nil)
end)
P8(function()
  if not K.newproxy then return end
  local p = K.newproxy(true)
  K.getmt(p).__tostring = function() return "MY_TAG" end
  EQ(K.tostr(p), "MY_TAG")
end)
P8(function()
  local t = K.setmt({}, {__len = function() return 42 end})
  EQ(#t, 42)
end)
P8(function()
  local mt = {__eq = function() return true end}
  local a = K.setmt({}, mt)
  local b = K.setmt({}, mt)
  local c = K.setmt({}, {__eq = function() return true end})
  CHK(a == b)
  CHK(not (a == c))
end)

K.defer(function()
  shuffle(PH8)
  local i
  for i = 1, #PH8 do PH8[i]() end
end)

local PH9_847293 = {}
local function P9_847293(fn) PH9_847293[#PH9_847293+1] = fn end
local PH9, P9 = PH9_847293, P9_847293

P9(function()
  local a = "A"
  local f = function()
    local b = "B"
    return function() return a .. b end
  end
  local mid = f()
  local n, v = K.getupval(mid, 1)
  EQ(v, "A")
end)
P9(function()
  local shared = 0
  local inc = function() shared = shared + 1 end
  local get = function() return shared end
  inc(); inc(); inc()
  EQ(get(), 3)
end)
P9(function()
  if not K.setupval or not K.getupval then return end
  local x = 1
  local f = function() return x end
  K.setupval(f, 1, 100)
  EQ(f(), 100)
end)
P9(function()
  local inner = function() return "inner" end
  local outer = function() return inner() end
  local s1 = K.info(inner, "s")
  local s2 = K.info(outer, "s")
  CHK(K.type(s1) == "string" and K.type(s2) == "string")
  CHK(s1 ~= "[C]" and s2 ~= "[C]")
end)
P9(function()
  if not K.getproto then return end
  local f = function()
    local _ = function() end
    local _ = function() end
    return nil
  end
  local p = K.getproto(f)
  CHK(K.type(p) == "table")
  CHK(#p >= 2)
end)
P9(function()
  local function rec(n)
    if n <= 0 then return 0 end
    return rec(n - 1) + 1
  end
  EQ(rec(50), 50)
end)
P9(function()
  if not K.getupval then return end
  local u = {}
  local f = function() return u end
  local name, val = K.getupval(f, 1)
  ID(val, u)
end)

K.defer(function()
  shuffle(PH9)
  local i
  for i = 1, #PH9 do PH9[i]() end
end)

local PH10_847293 = {}
local function P10_847293(fn) PH10_847293[#PH10_847293+1] = fn end
local PH10, P10 = PH10_847293, P10_847293

P10(function()
  local ev = Instance.new("BindableEvent")
  local count = 0
  local c = ev.Event:Connect(function() count = count + 1 end)
  ev:Fire(); K.wait(0.03)
  EQ(count, 1)
  ev:Fire(); K.wait(0.03)
  EQ(count, 2)
  c:Disconnect()
  ev:Fire(); K.wait(0.03)
  EQ(count, 2)
  ev:Destroy()
end)
P10(function()
  local ev = Instance.new("BindableEvent")
  local count = 0
  ev.Event:Once(function() count = count + 1 end)
  ev:Fire(); ev:Fire(); K.wait(0.03)
  EQ(count, 1)
  ev:Destroy()
end)
P10(function()
  local ev = Instance.new("BindableEvent")
  local t0 = K.clk()
  local v = ev.Event:Wait(0.05)
  local dt = K.clk() - t0
  CHK(v == nil)
  CHK(dt >= 0.03 and dt < 1)
  ev:Destroy()
end)
P10(function()
  local ev = Instance.new("BindableEvent")
  local ok = K.pcall(function() ev:Fire() end)
  CHK(ok)
  local ok2 = K.pcall(function() ev:Fire(1, 2, 3, nil, "x") end)
  CHK(ok2)
  ev:Destroy()
end)
P10(function()
  local ev = Instance.new("BindableEvent")
  local got = nil
  ev.Event:Connect(function(v) got = v end)
  ev:Fire("hello")
  K.wait(0.03)
  EQ(got, "hello")
  ev:Destroy()
end)
P10(function()
  local ev = Instance.new("BindableEvent")
  local c = ev.Event:Connect(function() end)
  EQ(c.Connected, true)
  c:Disconnect()
  EQ(c.Connected, false)
  c:Disconnect()
  EQ(c.Connected, false)
  ev:Destroy()
end)
P10(function()
  local ev = Instance.new("BindableEvent")
  local s1 = ev.Event
  local s2 = ev.Event
  CHK(K.typeof(s1) == "RBXScriptSignal")
  ID(s1, s2)
  ev:Destroy()
end)
P10(function()
  local ev = Instance.new("BindableEvent")
  local c = ev.Event:Connect(function() end)
  CHK(K.typeof(c) == "RBXScriptConnection")
  c:Disconnect()
  ev:Destroy()
end)
P10(function()
  local f = Instance.new("Folder")
  local destroyed = false
  f.Destroying:Connect(function() destroyed = true end)
  f:Destroy()
  K.wait(0.05)
  CHK(destroyed == true)
end)
P10(function()
  local p = Instance.new("Part")
  local changed = false
  p:GetPropertyChangedSignal("Anchored"):Connect(function() changed = true end)
  p.Anchored = true
  K.wait(0.03)
  CHK(changed == true)
  p:Destroy()
end)
P10(function()
  local p = Instance.new("Part")
  local n = 0
  p:GetPropertyChangedSignal("Position"):Connect(function() n = n + 1 end)
  p.Position = Vector3.new(1, 0, 0)
  p.Position = Vector3.new(2, 0, 0)
  p.Position = Vector3.new(3, 0, 0)
  K.wait(0.03)
  CHK(n >= 1)
  p:Destroy()
end)
P10(function()
  local p = Instance.new("Part")
  local mt = K.getmt(p)
  CHK(mt ~= nil)
  local sig = p.Changed
  CHK(K.typeof(sig) == "RBXScriptSignal")
  p:Destroy()
end)
P10(function()
  local p = Instance.new("Part")
  local added = nil
  p.ChildAdded:Connect(function(c) added = c end)
  local f = Instance.new("Folder", p)
  K.wait(0.03)
  CHK(K.raweq(added, f))
  p:Destroy()
end)
P10(function()
  local p = Instance.new("Part")
  local removed = nil
  p.ChildRemoved:Connect(function(c) removed = c end)
  local f = Instance.new("Folder", p)
  f.Parent = nil
  K.wait(0.03)
  CHK(K.raweq(removed, f))
  p:Destroy()
end)
P10(function()
  local p = Instance.new("Part")
  local descendant = nil
  p.DescendantAdded:Connect(function(d) descendant = d end)
  local f = Instance.new("Folder", p)
  local inner = Instance.new("Folder", f)
  K.wait(0.03)
  CHK(K.raweq(descendant, inner))
  p:Destroy()
end)

K.defer(function()
  shuffle(PH10)
  local i
  for i = 1, #PH10 do PH10[i]() end
end)

local PH11_847293 = {}
local function P11_847293(fn) PH11_847293[#PH11_847293+1] = fn end
local PH11, P11 = PH11_847293, P11_847293

P11(function()
  local m = K.match("hello world", "(%w+) (%w+)")
  EQ(m, "hello")
  local a, b = K.match("hello world", "(%w+) (%w+)")
  EQ(a, "hello"); EQ(b, "world")
end)
P11(function()
  local a = K.match("(x)", "%b()")
  EQ(a, "x")
  local b = K.match("[abc]", "%b[]")
  EQ(b, "abc")
end)
P11(function()
  local a = K.match("foo bar", "%f[%a]%a+")
  EQ(a, "foo")
end)
P11(function()
  local a = K.match("abc123def", "(%a+)(%d+)(%a+)")
  EQ(a, "abc")
end)
P11(function()
  local a, b, c = K.match("abc123def", "(%a+)(%d+)(%a+)")
  EQ(a, "abc"); EQ(b, "123"); EQ(c, "def")
end)
P11(function()
  local a = K.match("HELLO", "%u+")
  EQ(a, "HELLO")
  local b = K.match("hello", "%l+")
  EQ(b, "hello")
end)
P11(function()
  local a = K.match("   x   ", "^%s*(.-)%s*$")
  EQ(a, "x")
end)
P11(function()
  local n = 0
  local _
  for _ in K.gmatch("a,b,c,d", "[^,]+") do n = n + 1 end
  EQ(n, 4)
end)
P11(function()
  local out = K.gsub("hello", "l", "L")
  EQ(out, "heLLo")
end)
P11(function()
  local out, n = K.gsub("aaa", "a", "b", 2)
  EQ(out, "bba"); EQ(n, 2)
end)
P11(function()
  local out = K.gsub("abc", "%a", {a="1", b="2", c="3"})
  EQ(out, "123")
end)
P11(function()
  local out = K.gsub("abc", "(a)(b)", "%2%1")
  EQ(out, "bac")
end)
P11(function()
  EQ(K.match("abc", "^abc$"), "abc")
  EQ(K.match("xabcx", "^abc$"), nil)
end)
P11(function()
  EQ(K.match("12345", "%d+"), "12345")
  EQ(K.match("hello", "%d+"), nil)
end)
P11(function()
  EQ(K.match("a.c", "%."), ".")
  EQ(K.match("abc", "%."), nil)
end)
P11(function()
  local a = K.match("foo123", "(%a+%d+)")
  EQ(a, "foo123")
end)
P11(function()
  local a = K.match("a\nb\nc", "[^\n]+")
  EQ(a, "a")
end)
P11(function()
  EQ(K.match("", ""), "")
  EQ(K.match("a", ""), "")
end)

K.defer(function()
  shuffle(PH11)
  local i
  for i = 1, #PH11 do PH11[i]() end
end)

local PH12_847293 = {}
local function P12_847293(fn) PH12_847293[#PH12_847293+1] = fn end
local PH12, P12 = PH12_847293, P12_847293

P12(function()
  EQ(1e15 + 1, 1000000000000001)
  CHK(1e16 + 1 == 1e16)
end)
P12(function()
  EQ(2^53, 9007199254740992)
  CHK(2^53 + 1 == 2^53)
end)
P12(function()
  CHK(K.huge + 1 == K.huge)
  CHK(K.huge - K.huge ~= K.huge - K.huge)
  CHK(K.huge * 0 ~= K.huge * 0)
end)
P12(function()
  CHK(-0 == 0)
  CHK(1 / 0 == K.huge)
  CHK(1 / -0 == -K.huge)
end)
P12(function()
  EQ(K.floor(2.5), 2)
  EQ(K.floor(-2.5), -3)
  EQ(K.ceil(2.5), 3)
  EQ(K.ceil(-2.5), -2)
end)
P12(function()
  CHK(K.abs(-K.huge) == K.huge)
  CHK(K.abs(K.huge) == K.huge)
  CHK(K.abs(-0) == 0)
end)
P12(function()
  if not K.maxinteger then return end
  CHK(K.mininteger < 0)
  CHK(K.maxinteger > 0)
end)
P12(function()
  EQ(K.fmod(7, 3), 1)
  EQ(K.fmod(-7, 3), -1)
  EQ(K.fmod(7, -3), 1)
  EQ(K.fmod(-7, -3), -1)
end)
P12(function()
  local i, f = K.modf(3.7)
  EQ(i, 3)
  CHK(K.abs(f - 0.7) < 1e-9)
end)
P12(function()
  local i, f = K.modf(-3.7)
  EQ(i, -3)
  CHK(K.abs(f + 0.7) < 1e-9)
end)
P12(function()
  EQ(K.tonum("0x10"), 16)
  EQ(K.tonum("0X10"), 16)
  EQ(K.tonum("0b10"), 2)
  EQ(K.tonum("0o10"), 8)
end)
P12(function()
  EQ(K.tonum("1.5"), 1.5)
  EQ(K.tonum("1e2"), 100)
  EQ(K.tonum("1E2"), 100)
  EQ(K.tonum("inf"), nil)
end)
P12(function()
  EQ(K.floor(0.1 + 0.2), 0)
  EQ(K.floor(0.3), 0)
  CHK(0.1 + 0.2 > 0.3)
end)
P12(function()
  EQ(K.tostr(0), "0")
  EQ(K.tostr(-0), "0")
  EQ(K.tostr(1e100), "1e+100")
end)
P12(function()
  if not K.bnot then return end
  EQ(K.bnot(0), 0xFFFFFFFF)
  EQ(K.bnot(0xFFFFFFFF), 0)
end)
P12(function()
  EQ(K.lshift(1, 31), 0x80000000)
  EQ(K.rshift(0x80000000, 31), 1)
  EQ(K.arshift(0x80000000, 31), 0xFFFFFFFF)
end)
P12(function()
  if not K.lrotate then return end
  EQ(K.lrotate(1, 1), 2)
  EQ(K.rrotate(2, 1), 1)
  EQ(K.lrotate(1, 32), 1)
end)
P12(function()
  if not K.extract then return end
  EQ(K.extract(0xFF, 0, 4), 0xF)
  EQ(K.extract(0xFF00, 8, 4), 0xF)
end)
P12(function()
  if not K.countlz then return end
  EQ(K.countlz(0x80000000), 0)
  EQ(K.countlz(0), 32)
  EQ(K.countlz(1), 31)
end)

K.defer(function()
  shuffle(PH12)
  local i
  for i = 1, #PH12 do PH12[i]() end
end)

local PH13_847293 = {}
local function P13_847293(fn) PH13_847293[#PH13_847293+1] = fn end
local PH13, P13 = PH13_847293, P13_847293

P13(function()
  local t = {1, 2, 3, 4, 5}
  EQ(#t, 5)
  t[6] = 6
  EQ(#t, 6)
  t[6] = nil
  EQ(#t, 5)
end)
P13(function()
  local t = {}
  EQ(#t, 0)
  K.insert(t, "a")
  EQ(#t, 1)
end)
P13(function()
  local t = {}
  K.insert(t, 1, "a")
  K.insert(t, 2, "b")
  K.insert(t, 1, "z")
  EQ(t[1], "z"); EQ(t[2], "a"); EQ(t[3], "b")
end)
P13(function()
  local t = {10, 20, 30}
  local v = K.remove(t, 2)
  EQ(v, 20)
  EQ(#t, 2)
  EQ(t[1], 10); EQ(t[2], 30)
end)
P13(function()
  local t = {1, 2, 3}
  K.remove(t)
  EQ(#t, 2)
end)
P13(function()
  if not K.move then return end
  local src = {1, 2, 3, 4, 5}
  local dst = {}
  K.move(src, 2, 4, 1, dst)
  EQ(dst[1], 2); EQ(dst[2], 3); EQ(dst[3], 4)
end)
P13(function()
  local t = {}
  t[100] = "x"
  local count = 0
  local k, v
  for k, v in K.pairs(t) do
    CHK(k == 100 and v == "x")
    count = count + 1
  end
  EQ(count, 1)
end)
P13(function()
  local t = {a=1, b=2, c=3}
  local keys = {}
  local k
  for k in K.pairs(t) do K.insert(keys, k) end
  EQ(#keys, 3)
  K.sort(keys)
  EQ(keys[1], "a"); EQ(keys[2], "b"); EQ(keys[3], "c")
end)
P13(function()
  local t = {1, 2, 3}
  local sum = 0
  local _, v
  for _, v in K.ipairs(t) do sum = sum + v end
  EQ(sum, 6)
end)
P13(function()
  local t = {}
  local mt = {__index = function(_, k) return k * 2 end}
  K.setmt(t, mt)
  EQ(t[5], 10)
  EQ(t[10], 20)
  EQ(K.rawget(t, 5), nil)
end)
P13(function()
  local t = {x=1, y=2}
  K.rawset(t, "x", 10)
  EQ(t.x, 10)
  EQ(K.rawget(t, "x"), 10)
end)
P13(function()
  local t = {1, 2, 3}
  K.sort(t, function(a, b) return a > b end)
  EQ(t[1], 3); EQ(t[3], 1)
end)
P13(function()
  local t = {"c", "a", "b"}
  K.sort(t)
  EQ(t[1], "a"); EQ(t[2], "b"); EQ(t[3], "c")
end)
P13(function()
  EQ(K.concat({1, 2, 3}), "123")
  EQ(K.concat({1, 2, 3}, ""), "123")
  EQ(K.concat({}, "-"), "")
  EQ(K.concat({1}), ","), EQ("1")
end)
P13(function()
  local t = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10}
  local count = 0
  local _, v
  for _, v in K.ipairs(t) do count = count + 1 end
  EQ(count, 10)
end)
P13(function()
  local a = {1, 2, 3}
  local b = a
  b[4] = 4
  EQ(a[4], 4)
  CHK(K.raweq(a, b))
end)
P13(function()
  local t = {1, 2, 3}
  local length = 0
  local k, v
  for k, v in K.pairs(t) do
    if K.type(k) == "number" then length = length + 1 end
  end
  EQ(length, 3)
end)
P13(function()
  if not K.rawlen then return end
  EQ(K.rawlen({1,2,3}), 3)
  EQ(K.rawlen({}), 0)
end)

K.defer(function()
  shuffle(PH13)
  local i
  for i = 1, #PH13 do PH13[i]() end
end)

local PH14_847293 = {}
local function P14_847293(fn) PH14_847293[#PH14_847293+1] = fn end
local PH14, P14 = PH14_847293, P14_847293

P14(function()
  if not K.DateTime then return end
  local now = K.DateTime.now()
  CHK(K.type(now.UnixTimestamp) == "number")
  CHK(now.UnixTimestamp > 0)
end)
P14(function()
  if not K.DateTime then return end
  local d = K.DateTime.fromUnixTimestamp(0)
  EQ(d.UnixTimestamp, 0)
end)
P14(function()
  if not K.DateTime then return end
  local d = K.DateTime.fromUnixTimestamp(1700000000)
  EQ(d.UnixTimestamp, 1700000000)
end)
P14(function()
  if not K.DateTime then return end
  local d = K.DateTime.fromUnixTimestamp(0)
  CHK(K.type(d.UnixTimestampMillis) == "number")
  EQ(d.UnixTimestampMillis, 0)
end)
P14(function()
  local h = game:GetService("HttpService")
  local g1 = h:GenerateGUID(false)
  local g2 = h:GenerateGUID(false)
  CHK(g1 ~= g2)
  EQ(#g1, 36)
  EQ(#g2, 36)
end)
P14(function()
  local h = game:GetService("HttpService")
  local g = h:GenerateGUID(true)
  EQ(#g, 38)
  EQ(K.sub(g, 1, 1), "{")
  EQ(K.sub(g, -1), "}")
end)
P14(function()
  local h = game:GetService("HttpService")
  local s = h:JSONEncode({a = 1, b = "x", c = true, d = {1, 2}})
  CHK(K.type(s) == "string")
  local d = h:JSONDecode(s)
  EQ(d.a, 1); EQ(d.b, "x"); EQ(d.c, true)
  EQ(#d.d, 2)
end)
P14(function()
  local h = game:GetService("HttpService")
  local d = h:JSONDecode('{"n":1.5,"s":"a\\nb"}')
  EQ(d.n, 1.5)
  EQ(d.s, "a\nb")
end)
P14(function()
  local h = game:GetService("HttpService")
  CHK(not K.pcall(function() h:JSONDecode("not json") end))
end)
P14(function()
  local h = game:GetService("HttpService")
  local s = h:JSONEncode("")
  EQ(s, '""')
  EQ(h:JSONDecode(s), "")
end)
P14(function()
  local h = game:GetService("HttpService")
  local s = h:JSONEncode(nil)
  EQ(s, "null")
end)
P14(function()
  if not K.OverlapParams then return end
  local p = K.OverlapParams.new()
  CHK(p ~= nil)
  p.FilterType = Enum.RaycastFilterType.Include
  EQ(p.FilterType, Enum.RaycastFilterType.Include)
end)
P14(function()
  if not K.PhysicalProperties then return end
  local p = K.PhysicalProperties.new(1, 0.5, 0.3)
  NEAR(p.Density, 1, 1e-9)
  NEAR(p.Friction, 0.5, 1e-9)
  NEAR(p.Elasticity, 0.3, 1e-9)
end)
P14(function()
  if not K.BrickColor then return end
  local bc = K.BrickColor.new("Bright red")
  CHK(K.typeof(bc) == "BrickColor")
  local c3 = bc.Color
  CHK(K.typeof(c3) == "Color3")
end)
P14(function()
  if not K.Color3uint8 then return end
  local c = K.Color3uint8.new(255, 0, 0)
  CHK(K.typeof(c) == "Color3uint8")
end)
P14(function()
  if not K.Font then return end
  local f = K.Font.new("rbxasset://fonts/families/GothamSSm.json")
  CHK(K.typeof(f) == "Font")
end)
P14(function()
  if not K.Ray then return end
  local r = K.Ray.new(Vector3.new(0,0,0), Vector3.new(0,1,0))
  EQ(r.Origin.X, 0); EQ(r.Direction.Y, 1)
end)
P14(function()
  if not K.PathWaypoint then return end
  local pw = K.PathWaypoint.new(Vector3.new(1, 2, 3), Enum.PathWaypointAction.Walk)
  CHK(K.typeof(pw) == "PathWaypoint")
end)

K.defer(function()
  shuffle(PH14)
  local i
  for i = 1, #PH14 do PH14[i]() end
end)

local PH15_847293 = {}
local function P15_847293(fn) PH15_847293[#PH15_847293+1] = fn end
local PH15, P15 = PH15_847293, P15_847293

P15(function()
  local p = Instance.new("Part")
  local hit = nil
  p:GetPropertyChangedSignal("Name"):Connect(function() hit = "name" end)
  p.Name = "changed_" .. K.rnd(1e9)
  K.wait(0.03)
  EQ(hit, "name")
  p:Destroy()
end)
P15(function()
  local p = Instance.new("Part")
  local n = 0
  p:GetPropertyChangedSignal("Size"):Connect(function() n = n + 1 end)
  p.Size = Vector3.new(2, 2, 2)
  p.Size = Vector3.new(3, 3, 3)
  K.wait(0.03)
  CHK(n >= 1)
  p:Destroy()
end)
P15(function()
  local p = Instance.new("Part")
  local n = 0
  p:GetPropertyChangedSignal("Transparency"):Connect(function() n = n + 1 end)
  p.Transparency = 0.5
  K.wait(0.03)
  CHK(n == 1)
  p.Transparency = 0.5
  K.wait(0.03)
  CHK(n == 1)
  p:Destroy()
end)
P15(function()
  local p = Instance.new("Part")
  local c = p:GetPropertyChangedSignal("Color")
  CHK(K.typeof(c) == "RBXScriptSignal")
  p:Destroy()
end)
P15(function()
  local u = Instance.new("Folder")
  local changed = false
  u:GetPropertyChangedSignal("Name"):Connect(function() changed = true end)
  u.Name = "renamed"
  K.wait(0.03)
  CHK(changed)
  u:Destroy()
end)
P15(function()
  local s = Instance.new("StringValue")
  local got = nil
  s:GetPropertyChangedSignal("Value"):Connect(function() got = s.Value end)
  s.Value = "hello"
  K.wait(0.03)
  EQ(got, "hello")
  s:Destroy()
end)
P15(function()
  local n = Instance.new("NumberValue")
  local last = nil
  n:GetPropertyChangedSignal("Value"):Connect(function() last = n.Value end)
  n.Value = 42
  K.wait(0.03)
  EQ(last, 42)
  n:Destroy()
end)
P15(function()
  local b = Instance.new("BoolValue")
  local hits = 0
  b:GetPropertyChangedSignal("Value"):Connect(function() hits = hits + 1 end)
  b.Value = true
  b.Value = false
  b.Value = true
  K.wait(0.03)
  EQ(hits, 3)
  b:Destroy()
end)

K.defer(function()
  shuffle(PH15)
  local i
  for i = 1, #PH15 do PH15[i]() end
end)

local PH16_847293 = {}
local function P16_847293(fn) PH16_847293[#PH16_847293+1] = fn end
local PH16, P16 = PH16_847293, P16_847293

P16(function()
  if not K.gc then return end
  local c = K.gc("count")
  CHK(K.type(c) == "number")
  CHK(c > 0)
end)
P16(function()
  if not K.gc then return end
  K.gc("collect")
  local c = K.gc("count")
  CHK(K.type(c) == "number" and c > 0)
end)
P16(function()
  if not K.gc then return end
  local before = K.gc("count")
  local t = {}
  local i
  for i = 1, 5000 do t[i] = K.rep("Z", 128) end
  local after = K.gc("count")
  CHK(after >= before)
end)
P16(function()
  if not K.gc then return end
  local ok = K.pcall(function() K.gc("setpause", 200) end)
  CHK(ok)
  K.pcall(function() K.gc("setpause", 200) end)
end)
P16(function()
  if not K.gc then return end
  local ok = K.pcall(function() K.gc("setstepmul", 200) end)
  CHK(ok)
end)
P16(function()
  if not K.gc then return end
  local a = K.gc("count")
  K.wait(0.05)
  local b = K.gc("count")
  CHK(K.type(a) == "number" and K.type(b) == "number")
end)
P16(function()
  if not K.getregistry then return end
  local r = K.getregistry()
  CHK(K.type(r) == "table")
end)
P16(function()
  if not K.getregistry then return end
  local r = K.getregistry()
  local count = 0
  local k
  for k in K.pairs(r) do count = count + 1 end
  CHK(count > 0)
end)
P16(function()
  if not K.getregistry then return end
  local r = K.getregistry()
  local has_gc = K.rawget(r, "__gc")
  local has_mode = K.rawget(r, "__mode")
  CHK(has_gc ~= nil or has_mode ~= nil)
end)

K.defer(function()
  shuffle(PH16)
  local i
  for i = 1, #PH16 do PH16[i]() end
end)

local PH17_847293 = {}
local function P17_847293(fn) PH17_847293[#PH17_847293+1] = fn end
local PH17, P17 = PH17_847293, P17_847293

P17(function()
  if not K.checkcaller then return end
  local called = false
  local function probe()
    if K.checkcaller() == false then called = true end
  end
  probe()
  CHK(called == false)
end)
P17(function()
  if not K.islclosure or not K.iscclosure then return end
  CHK(K.islclosure(function() end) == true)
  CHK(K.iscclosure(function() end) == false)
  CHK(K.iscclosure(print) == true)
  CHK(K.islclosure(print) == false)
end)
P17(function()
  if not K.newcclosure then return end
  local f = function() return 42 end
  local ok, c = K.pcall(K.newcclosure, f)
  if ok and c then
    CHK(K.type(c) == "function")
    EQ(c(), 42)
  end
end)
P17(function()
  if not K.getrawmetatable then return end
  local v = Vector3.new()
  local mt = K.getrawmetatable(v)
  CHK(mt ~= nil)
  CHK(K.type(mt) == "table" or K.type(mt) == "string")
end)
P17(function()
  if not K.setrawmetatable then return end
  local t = {}
  local mt = {__index = function() return 1 end}
  K.setrawmetatable(t, mt)
  EQ(t.anything, 1)
end)
P17(function()
  if not K.getconnections then return end
  local ev = Instance.new("BindableEvent")
  local c = ev.Event:Connect(function() end)
  local conns = K.getconnections(ev.Event)
  CHK(K.type(conns) == "table")
  CHK(#conns >= 1)
  c:Disconnect()
  ev:Destroy()
end)
P17(function()
  if not K.getnilinstances then return end
  local n = K.getnilinstances()
  CHK(K.type(n) == "table")
end)
P17(function()
  if not K.getinstances then return end
  local i = K.getinstances()
  CHK(K.type(i) == "table")
end)
P17(function()
  if not K.identifyexecutor then return end
  local n = K.identifyexecutor()
  CHK(K.type(n) == "string" and #n > 0)
end)
P17(function()
  if not K.isexecutorclosure then return end
  local f = function() end
  local r = K.isexecutorclosure(f)
  CHK(K.type(r) == "boolean")
end)
P17(function()
  if not K.getloadedmodules then return end
  local m = K.getloadedmodules()
  CHK(K.type(m) == "table")
end)
P17(function()
  if not K.gethui then return end
  local h = K.gethui()
  if h ~= nil then
    EQ(K.typeof(h), "Instance")
  end
end)
P17(function()
  if not K.getscriptbytecode then return end
  local s = K.getscriptbytecode(function() end)
  if s then
    CHK(K.type(s) == "string" or K.type(s) == "function")
  end
end)
P17(function()
  local t = K.setmt({}, {__mode = "v"})
  local o = {}
  t[1] = o
  EQ(t[1], o)
  o = nil
  K.wait(0.05)
  K.pcall(function() K.gc("collect") end)
  local v = t[1]
  CHK(v == nil)
end)
P17(function()
  local mt = {__gc = function() end}
  local t = K.setmt({}, mt)
  CHK(K.getmt(t) == mt)
end)

K.defer(function()
  shuffle(PH17)
  local i
  for i = 1, #PH17 do PH17[i]() end
end)

local ALLPH = {PH1, PH2, PH3, PH4, PH5, PH6, PH7, PH8, PH9,
               PH10, PH11, PH12, PH13, PH14, PH15, PH16, PH17}

K.spawn(function()
  while true do
    K.pcall(function()
      shuffle(PH4)
      local i
      for i = 1, #PH4 do PH4[i]() end
    end)
    K.wait(K.rnd(500, 1500) / 1000)
  end
end)
K.spawn(function()
  while true do
    K.pcall(function()
      shuffle(PH5)
      local i
      for i = 1, #PH5 do PH5[i]() end
    end)
    K.wait(K.rnd(600, 1800) / 1000)
  end
end)
K.spawn(function()
  while true do
    K.pcall(function()
      shuffle(PH7)
      local i
      for i = 1, #PH7 do PH7[i]() end
    end)
    K.wait(K.rnd(1500, 3000) / 1000)
  end
end)
K.spawn(function()
  while true do
    K.pcall(function()
      shuffle(PH8)
      local i
      for i = 1, #PH8 do PH8[i]() end
    end)
    K.wait(K.rnd(1800, 3200) / 1000)
  end
end)
K.spawn(function()
  while true do
    K.pcall(function()
      shuffle(PH10)
      local i
      for i = 1, #PH10 do PH10[i]() end
    end)
    K.wait(K.rnd(2200, 3800) / 1000)
  end
end)
K.spawn(function()
  while true do
    K.pcall(function()
      shuffle(PH11)
      local i
      for i = 1, #PH11 do PH11[i]() end
    end)
    K.wait(K.rnd(2600, 4200) / 1000)
  end
end)
K.spawn(function()
  while true do
    K.pcall(function()
      shuffle(PH12)
      local i
      for i = 1, #PH12 do PH12[i]() end
    end)
    K.wait(K.rnd(2800, 4400) / 1000)
  end
end)
K.spawn(function()
  while true do
    K.pcall(function()
      shuffle(PH13)
      local i
      for i = 1, #PH13 do PH13[i]() end
    end)
    K.wait(K.rnd(3000, 4600) / 1000)
  end
end)
K.spawn(function()
  while true do
    K.pcall(function()
      shuffle(PH15)
      local i
      for i = 1, #PH15 do PH15[i]() end
    end)
    K.wait(K.rnd(3200, 4800) / 1000)
  end
end)
K.spawn(function()
  while true do
    K.pcall(function()
      shuffle(PH17)
      local i
      for i = 1, #PH17 do PH17[i]() end
    end)
    K.wait(K.rnd(3400, 5000) / 1000)
  end
end)

K.spawn(function()
  local last = 0
  while true do
    local v = K.rnd(1, 1e9)
    if v == last then FAIL() end
    last = v
    K.wait(1)
  end
end)

K.spawn(function()
  local key = "__DN7_TRIP_" .. K.rnd(1e9)
  _G[key] = "armed"
  while true do
    if _G[key] ~= "armed" then FAIL() end
    K.wait(2)
  end
end)

K.spawn(function()
  while true do
    if K.type(_G[_NSKEY]) ~= "table" then FAIL() end
    K.wait(3)
  end
end)

local KHASH847293 = 0
do
  local name, fn
  for name, fn in K.pairs(K) do
    if K.type(name) == "string" then
      local i
      for i = 1, #name do KHASH847293 = K.bxor(KHASH847293, K.byte(name, i)) end
      KHASH847293 = K.bxor(KHASH847293, K.type(fn) == "function" and 1 or 0)
    end
  end
end

K.spawn(function()
  while true do
    local h = 0
    local name, fn
    for name, fn in K.pairs(K) do
      if K.type(name) == "string" then
        local i
        for i = 1, #name do h = K.bxor(h, K.byte(name, i)) end
        h = K.bxor(h, K.type(fn) == "function" and 1 or 0)
      end
    end
    if h ~= KHASH847293 then FAIL() end
    K.wait(3)
  end
end)

_G["__DARKNOVA_V7_" .. _H6] = {
  seed = K.rnd(1, 2^31),
  ts   = K.time(),
  fp   = fp1_847293() + fp2_847293() + fp3_847293(),
  boot = _H6,
}

K.pcall(function()
  print("[Dark Nova V7] 17 phases online (boot " .. _H6 .. ")")
  print("daymm you actually of the checks ur env logger is really good or you executed this code")
end)
