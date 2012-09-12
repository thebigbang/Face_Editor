--------------------------------------------------------------------------------
--  Function......... : SelectObj
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function NezAI.SelectObj ( )
--------------------------------------------------------------------------------
	
	if(this._getPosition()==0)then this._getFileName ("nez00")
    elseif(this._getPosition()==1)then this._getFileName ("nez01")
    elseif(this._getPosition()==2)then this._getFileName ("nez02")
    elseif(this._getPosition()==3)then this._getFileName ("nez03")
    elseif(this._getPosition()==4)then this._getFileName ("nez04")
    elseif(this._getPosition()==5)then this._getFileName ("nez05")
    elseif(this._getPosition()==6)then this._getFileName ("nez06")
    elseif(this._getPosition()==7)then this._getFileName ("nez07")
    elseif(this._getPosition()==8)then this._getFileName ("nez08")
--    elseif(this._getPosition()==9)then this._getFileName ("nez09")
    else this._getFileName ("nez00") end
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
