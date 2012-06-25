--------------------------------------------------------------------------------
--  Function......... : SelectObj
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function FrontAI.SelectObj ( )
--------------------------------------------------------------------------------
	
	if(this._getPosition()==0)then this._getFileName ("front00")
    elseif(this._getPosition()==1)then this._getFileName ("front01")
    elseif(this._getPosition()==2)then this._getFileName ("front02")
    elseif(this._getPosition()==3)then this._getFileName ("front03")
    elseif(this._getPosition()==4)then this._getFileName ("front04")
    elseif(this._getPosition()==5)then this._getFileName ("front05")
    else this._getFileName ("front00") end
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
