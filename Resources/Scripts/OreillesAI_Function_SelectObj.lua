--------------------------------------------------------------------------------
--  Function......... : SelectObj
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function OreillesAI.SelectObj ( )
--------------------------------------------------------------------------------
	if(this._getPosition()==0)then this._getFileName ("oreilles00")
    elseif(this._getPosition()==1)then this._getFileName ("oreilles01")
    elseif(this._getPosition()==2)then this._getFileName ("oreilles02")
    elseif(this._getPosition()==3)then this._getFileName ("oreilles03")
    elseif(this._getPosition()==4)then this._getFileName ("oreilles04")
    elseif(this._getPosition()==5)then this._getFileName ("oreilles05")
    elseif(this._getPosition()==6)then this._getFileName ("oreilles06")
    else this._getFileName ("oreilles00") end
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
