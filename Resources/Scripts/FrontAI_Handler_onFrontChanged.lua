--------------------------------------------------------------------------------
--  Handler.......... : onFrontChanged
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function FrontAI.onFrontChanged ( newPosition )
--------------------------------------------------------------------------------
	local getPosition
    
    getPosition=this._getPosition ( )+ newPosition
    if(getPosition<0)then getPosition=0 end
    this._getPosition (getPosition)
    this._getLastFileName (this._getFileName ( ))
    this.SelectObj()
    this.Load (  )
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
