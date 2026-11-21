--[[
  BeeSwarm_DarkCyber_v1.0.0  protected build
  Loader: fetch parts -> xor -> lzss -> run
]]
local _s6hJUSa={
"https://raw.githubusercontent.com/fhuev12/BeeSwarm-Scripts/main/parts/BeeSwarm_DarkCyber_v1.0.0.p1.txt",
"https://raw.githubusercontent.com/fhuev12/BeeSwarm-Scripts/main/parts/BeeSwarm_DarkCyber_v1.0.0.p2.txt"
}
local _gT3EcGQ={}
for _D8GsEIN=1,#_s6hJUSa do
  local _pG2gNDT=game:HttpGet(_s6hJUSa[_D8GsEIN])
  _gT3EcGQ[#_gT3EcGQ+1]=_pG2gNDT
end
local _sSKyhy5=table.concat(_gT3EcGQ):gsub('%s+','')
local _X29nral='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
local _f8FmLgc={}
for _D8GsEIN=1,#_X29nral do _f8FmLgc[_X29nral:sub(_D8GsEIN,_D8GsEIN)]=_D8GsEIN-1 end
local function _WJ27FI6(_CFT1wAP)
  local _DB6fQJn={}
  local _kp0UwHR=#_CFT1wAP
  local _D8GsEIN=1
  while _D8GsEIN<=_kp0UwHR do
    local _BBd0Qis=_f8FmLgc[_CFT1wAP:sub(_D8GsEIN,_D8GsEIN)]
    local _bhOLtY0=_f8FmLgc[_CFT1wAP:sub(_D8GsEIN+1,_D8GsEIN+1)]
    local _hNdgyfS=_CFT1wAP:sub(_D8GsEIN+2,_D8GsEIN+2)
    local _i5TKTdV=_CFT1wAP:sub(_D8GsEIN+3,_D8GsEIN+3)
    local _4sWDJWk=(_hNdgyfS=='=') and -1 or _f8FmLgc[_hNdgyfS]
    local _dqV9gcq=(_i5TKTdV=='=') and -1 or _f8FmLgc[_i5TKTdV]
    if not (_BBd0Qis and _bhOLtY0) then break end
    _DB6fQJn[#_DB6fQJn+1]=string.char(_BBd0Qis*4+math.floor(_bhOLtY0/16))
    if _4sWDJWk and _4sWDJWk>=0 then
      _DB6fQJn[#_DB6fQJn+1]=string.char((_bhOLtY0%16)*16+math.floor(_4sWDJWk/4))
      if _dqV9gcq and _dqV9gcq>=0 then
        _DB6fQJn[#_DB6fQJn+1]=string.char((_4sWDJWk%4)*64+_dqV9gcq)
      end
    end
    _D8GsEIN=_D8GsEIN+4
  end
  return table.concat(_DB6fQJn)
end
local _J9lJATJ='12c6tTF5QDmXQN6P5VE8fzDNZkbf'
local _ibDLxY3=bit32
local function _Wi8bP6P(_CFT1wAP)
  local _DB6fQJn={}
  local _yXVm0AA=#_J9lJATJ
  for _D8GsEIN=1,#_CFT1wAP do
    _DB6fQJn[_D8GsEIN]=string.char(_ibDLxY3.bxor(string.byte(_CFT1wAP,_D8GsEIN),string.byte(_J9lJATJ,(_D8GsEIN-1)%_yXVm0AA+1)))
  end
  return table.concat(_DB6fQJn)
end
local function _TjSXWVG(_CFT1wAP)
  local _DB6fQJn={}
  local _D8GsEIN=1
  local _h8dALtg=0
  local _YDYFOIX=0
  while _D8GsEIN<=#_CFT1wAP do
    if _YDYFOIX==0 then _h8dALtg=string.byte(_CFT1wAP,_D8GsEIN);_D8GsEIN=_D8GsEIN+1;_YDYFOIX=8 end
    if _ibDLxY3.band(_h8dALtg,1)==1 then
      local _UVLJCqE=string.byte(_CFT1wAP,_D8GsEIN)*256+string.byte(_CFT1wAP,_D8GsEIN+1)
      local _ypi6tVC=string.byte(_CFT1wAP,_D8GsEIN+2)
      _D8GsEIN=_D8GsEIN+3
      local _qdpq3Xw=#_DB6fQJn-_UVLJCqE
      for _jzV8yrw=1,_ypi6tVC do _DB6fQJn[#_DB6fQJn+1]=_DB6fQJn[_qdpq3Xw+_jzV8yrw] end
    else
      _DB6fQJn[#_DB6fQJn+1]=string.sub(_CFT1wAP,_D8GsEIN,_D8GsEIN)
      _D8GsEIN=_D8GsEIN+1
    end
    _h8dALtg=_ibDLxY3.rshift(_h8dALtg,1)
    _YDYFOIX=_YDYFOIX-1
  end
  return table.concat(_DB6fQJn)
end
local _gRvbGK9=_Wi8bP6P(_WJ27FI6(_sSKyhy5))
local _ypi6tVC=_ibDLxY3.band(string.byte(_gRvbGK9,1),255)+_ibDLxY3.lshift(_ibDLxY3.band(string.byte(_gRvbGK9,2),255),8)+_ibDLxY3.lshift(_ibDLxY3.band(string.byte(_gRvbGK9,3),255),16)+_ibDLxY3.lshift(_ibDLxY3.band(string.byte(_gRvbGK9,4),255),24)
local _zRJ84ux=string.sub(_gRvbGK9,5,4+_ypi6tVC)
local _5xJkmTu=_TjSXWVG(_zRJ84ux)
local _cS2jqLq=(loadstring or load)(_5xJkmTu,'@BeeSwarm_DarkCyber_v1.0.0')
if not _cS2jqLq then error('protected payload failed to load') end
_cS2jqLq()
