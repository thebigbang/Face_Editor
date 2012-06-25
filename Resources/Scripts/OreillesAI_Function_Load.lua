--------------------------------------------------------------------------------
--  Function......... : Load
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function OreillesAI.Load ( )
--------------------------------------------------------------------------------
local s = application.getCurrentUserScene ( )
local usr =application.getCurrentUser ( )

    if ( s == nil )then return end
    if(this._getLastFileName ( )~="#EMPTY#")then scene.destroyRuntimeObject ( s,this.currentOreilles ( )) end
    local oreilles = scene.createRuntimeObject( s, this._getFileName ( ) )
    if ( oreilles ~= nil )
    then
        this.currentOreilles ( oreilles )
        object.setUniformScale (this.currentOreilles (),3)
        
        local currentRotation=-45
        if(usr~=nil)then
            currentRotation=user.getAIVariable ( usr,"main","globalRotation" )
        end
        
        object.setRotation (this.currentOreilles  ( ),0,currentRotation,0,object.kParentSpace  )
        object.setTranslation (this.currentOreilles (),0,40,0,object.kParentSpace )
        
            this.sendEvent ( "onUpdateColor" )
    else
        log.error ( "oreilles introuvable!" )
    end
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
