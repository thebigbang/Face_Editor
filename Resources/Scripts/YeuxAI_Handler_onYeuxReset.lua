--------------------------------------------------------------------------------
--  Handler.......... : onYeuxReset
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function YeuxAI.onYeuxReset (  )
--------------------------------------------------------------------------------
    this._getPosition (0)
    this._getLastFileName (this._getFileName ( ))
    this.SelectObj()
    this.Load (  )
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
