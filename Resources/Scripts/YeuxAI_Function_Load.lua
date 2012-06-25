--------------------------------------------------------------------------------
--  Function......... : Load
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function YeuxAI.Load ( )
--------------------------------------------------------------------------------
local s = application.getCurrentUserScene ( )
local usr =application.getCurrentUser ( )

    if ( s == nil )then return end
    if(this._getLastFileName ( )~="#EMPTY#")then scene.destroyRuntimeObject ( s,this.currentYeux ( )) end
    local yeux = scene.createRuntimeObject( s, this._getFileName ( ) )
    if ( yeux ~= nil )
    then
        this.currentYeux( yeux)
        object.setUniformScale (this.currentYeux(),3)
        
        local currentRotation=-45
        if(usr~=nil)then
            currentRotation=user.getAIVariable ( usr,"main","globalRotation" )
        end
        
        object.setRotation (this.currentYeux( ),0,currentRotation,0,object.kParentSpace  )
        object.setTranslation (this.currentYeux(),0,40,0,object.kParentSpace )
        
            this.sendEvent ( "onUpdateColor" )
    else
        log.error ( "yeux introuvable!" )
    end	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
