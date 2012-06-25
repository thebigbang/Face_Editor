--------------------------------------------------------------------------------
--  Function......... : Load
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function change_front.Load ()
--------------------------------------------------------------------------------
local s = application.getCurrentUserScene ( )

    if ( s == nil )then return end
    if(this._getLastFileName ( )~="#EMPTY#")then scene.destroyRuntimeObject ( s,this.currentFront ( )) end
    local front = scene.createRuntimeObject( s, this._getFileName ( ) )
    if ( front ~= nil )
    then
        this.currentFront ( front )
        object.setUniformScale (this.currentFront(),3)
        object.setRotation (this.currentFront ( ),0,-45,0,object.kParentSpace  )
        object.setTranslation (this.currentFront(),0,40,0,object.kParentSpace )
    else
        log.error ( "front introuvable!" )
    end
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
