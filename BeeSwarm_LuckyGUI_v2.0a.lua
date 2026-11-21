--[[
  BeeSwarm_LuckyGUI_v2.0a  protected build
  Loader: fetch parts -> xor -> lzss -> run
]]
local _sm9Xxxv={
"https://raw.githubusercontent.com/fhuev12/BeeSwarm-Scripts/main/parts/BeeSwarm_LuckyGUI_v2.0a.p1.txt",
"https://raw.githubusercontent.com/fhuev12/BeeSwarm-Scripts/main/parts/BeeSwarm_LuckyGUI_v2.0a.p2.txt"
}
local _NLniElo={}
for _qthPHXm=1,#_sm9Xxxv do
  local _LUu5vdH=game:HttpGet(_sm9Xxxv[_qthPHXm])
  _NLniElo[#_NLniElo+1]=_LUu5vdH
end
local _gctJt5M=table.concat(_NLniElo):gsub('%s+','')
local _3xY4eZS='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
local _7uqJsnp={}
for _qthPHXm=1,#_3xY4eZS do _7uqJsnp[_3xY4eZS:sub(_qthPHXm,_qthPHXm)]=_qthPHXm-1 end
local function _NICT1Xq(_7yI65KS)
  local _aVV3bK3={}
  local _jNNBDoN=#_7yI65KS
  local _qthPHXm=1
  while _qthPHXm<=_jNNBDoN do
    local _xFQzfPm=_7uqJsnp[_7yI65KS:sub(_qthPHXm,_qthPHXm)]
    local _ADq3QpO=_7uqJsnp[_7yI65KS:sub(_qthPHXm+1,_qthPHXm+1)]
    local _OsIqJhN=_7yI65KS:sub(_qthPHXm+2,_qthPHXm+2)
    local _a6dMFHe=_7yI65KS:sub(_qthPHXm+3,_qthPHXm+3)
    local _DhljBdo=(_OsIqJhN=='=') and -1 or _7uqJsnp[_OsIqJhN]
    local _QVAzn51=(_a6dMFHe=='=') and -1 or _7uqJsnp[_a6dMFHe]
    if not (_xFQzfPm and _ADq3QpO) then break end
    _aVV3bK3[#_aVV3bK3+1]=string.char(_xFQzfPm*4+math.floor(_ADq3QpO/16))
    if _DhljBdo and _DhljBdo>=0 then
      _aVV3bK3[#_aVV3bK3+1]=string.char((_ADq3QpO%16)*16+math.floor(_DhljBdo/4))
      if _QVAzn51 and _QVAzn51>=0 then
        _aVV3bK3[#_aVV3bK3+1]=string.char((_DhljBdo%4)*64+_QVAzn51)
      end
    end
    _qthPHXm=_qthPHXm+4
  end
  return table.concat(_aVV3bK3)
end
local _uJEukgX='ug_qprpfCR0mAxk3LxGQfqCTZ1A5'
local _nLWk4PM=bit32
local function _w7u9Xut(_7yI65KS)
  local _aVV3bK3={}
  local _orankIQ=#_uJEukgX
  for _qthPHXm=1,#_7yI65KS do
    _aVV3bK3[_qthPHXm]=string.char(_nLWk4PM.bxor(string.byte(_7yI65KS,_qthPHXm),string.byte(_uJEukgX,(_qthPHXm-1)%_orankIQ+1)))
  end
  return table.concat(_aVV3bK3)
end
local function _MB1kowQ(_7yI65KS)
  local _aVV3bK3={}
  local _qthPHXm=1
  local _Hwc2TmB=0
  local _3wRQaY6=0
  while _qthPHXm<=#_7yI65KS do
    if _3wRQaY6==0 then _Hwc2TmB=string.byte(_7yI65KS,_qthPHXm);_qthPHXm=_qthPHXm+1;_3wRQaY6=8 end
    if _nLWk4PM.band(_Hwc2TmB,1)==1 then
      local _tfrrK4A=string.byte(_7yI65KS,_qthPHXm)*256+string.byte(_7yI65KS,_qthPHXm+1)
      local _yfjsVBr=string.byte(_7yI65KS,_qthPHXm+2)
      _qthPHXm=_qthPHXm+3
      local _aXSFVHi=#_aVV3bK3-_tfrrK4A
      for _oIbC7gs=1,_yfjsVBr do _aVV3bK3[#_aVV3bK3+1]=_aVV3bK3[_aXSFVHi+_oIbC7gs] end
    else
      _aVV3bK3[#_aVV3bK3+1]=string.sub(_7yI65KS,_qthPHXm,_qthPHXm)
      _qthPHXm=_qthPHXm+1
    end
    _Hwc2TmB=_nLWk4PM.rshift(_Hwc2TmB,1)
    _3wRQaY6=_3wRQaY6-1
  end
  return table.concat(_aVV3bK3)
end
local _TZ9Eqmt=_w7u9Xut(_NICT1Xq(_gctJt5M))
local _yfjsVBr=_nLWk4PM.band(string.byte(_TZ9Eqmt,1),255)+_nLWk4PM.lshift(_nLWk4PM.band(string.byte(_TZ9Eqmt,2),255),8)+_nLWk4PM.lshift(_nLWk4PM.band(string.byte(_TZ9Eqmt,3),255),16)+_nLWk4PM.lshift(_nLWk4PM.band(string.byte(_TZ9Eqmt,4),255),24)
local _tlCnuzQ=string.sub(_TZ9Eqmt,5,4+_yfjsVBr)
local _rLCrJ2m=_MB1kowQ(_tlCnuzQ)
local _rwh0ENE=(loadstring or load)(_rLCrJ2m,'@BeeSwarm_LuckyGUI_v2.0a')
if not _rwh0ENE then error('protected payload failed to load') end
_rwh0ENE()
