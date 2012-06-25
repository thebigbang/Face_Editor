--------------------------------------------------------------------------------
--  Function......... : Load
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function NezAI.Load ( )
--------------------------------------------------------------------------------
local s = application.getCurrentUserScene ( )
local usr =application.getCurrentUser ( )

    if ( s == nil )then return end
    if(this._getLastFileName ( )~="#EMPTY#")then scene.destroyRuntimeObject ( s,this.currentNez ( )) end
    local nez = scene.createRuntimeObject( s, this._getFileName ( ) )
    if ( nez ~= nil )
    then
        this.currentNez ( nez)
        object.setUniformScale (this.currentNez (),3)
        
        local currentRotation=-45
        if(usr~=nil)then
            currentRotation=user.getAIVariable ( usr,"main","globalRotation" )
        end
        
        object.setRotation (this.currentNez ( ),0,currentRotation,0,object.kParentSpace  )
        object.setTranslation (this.currentNez (),0,40,0,object.kParentSpace )
        
        this.sendEvent ( "onUpdateColor" )
    else
        log.error ( "front introuvable!" )
    end	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
