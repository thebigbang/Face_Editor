--------------------------------------------------------------------------------
--  Function......... : setBaseFront
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function main.setBaseFront ( )
--------------------------------------------------------------------------------
local s = application.getCurrentUserScene ( )
    
    if ( s == nil )
    then
    return
    end

    local bfront = scene.createRuntimeObject( s, "front" )
    if ( bfront ~= nil )
    then
        this.front ( bfront )
        object.setUniformScale (this.front(),3)
        object.setRotation (this.front ( ),0,-45,0,object.kParentSpace  )
        object.setTranslation (this.front(),0,40,0,object.kParentSpace )
        --on ajoute le tag au front:
  --bug?      scene.setObjectTag (s,this.front,"front")
    else
        log.error ( "base non chargée!" )
    end
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
