--------------------------------------------------------------------------------
--  Function......... : SelectObj
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function YeuxAI.SelectObj ( )
--------------------------------------------------------------------------------
	
	if(this._getPosition()==0)then this._getFileName ("yeux00")
    elseif(this._getPosition()==1)then this._getFileName ("yeux01")
    elseif(this._getPosition()==2)then this._getFileName ("yeux02")
    elseif(this._getPosition()==3)then this._getFileName ("yeux03")
    elseif(this._getPosition()==4)then this._getFileName ("yeux04")
  --  elseif(this._getPosition()==5)then this._getFileName ("yeux05")
   -- elseif(this._getPosition()==6)then this._getFileName ("yeux06")
    --elseif(this._getPosition()==7)then this._getFileName ("yeux07")
 --   elseif(this._getPosition()==8)then this._getFileName ("yeux08")
  --  elseif(this._getPosition()==9)then this._getFileName ("yeux09")
    else this._getFileName ("yeux00") end
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
