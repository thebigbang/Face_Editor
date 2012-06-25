--------------------------------------------------------------------------------
--  Function......... : Load
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function FrontAI.Load ()
--------------------------------------------------------------------------------
local s = application.getCurrentUserScene ( )
local usr =application.getCurrentUser ( )

    if ( s == nil )then return end
    if(this._getLastFileName ( )~="#EMPTY#")then scene.destroyRuntimeObject ( s,this.currentFront ( )) end
    local front = scene.createRuntimeObject( s, this._getFileName ( ) )
    if ( front ~= nil )
    then
        this.currentFront ( front )
        object.setUniformScale (this.currentFront(),3)
        
        local currentRotation=-45
        if(usr~=nil)then
            currentRotation=user.getAIVariable ( usr,"main","globalRotation" )
        end
        
        object.setRotation (this.currentFront ( ),0,currentRotation,0,object.kParentSpace  )
        object.setTranslation (this.currentFront(),0,40,0,object.kParentSpace )
        
        this.sendEvent ( "onUpdateColor" )
    else
        log.error ( "front introuvable!" )
    end
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
