--------------------------------------------------------------------------------
--  Function......... : setBaseOreilles
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function main.setBaseOreilles ( )
--------------------------------------------------------------------------------
local s = application.getCurrentUserScene ( )
    
    if ( s == nil )
    then
    return
    end

    local boreilles = scene.createRuntimeObject( s, "oreilles" )
    if ( boreilles ~= nil )
    then
        this.oreilles ( boreilles )
        object.setUniformScale (this.oreilles(),3)
        object.setRotation (this.oreilles ( ),0,-45,0,object.kParentSpace  )
        object.setTranslation (this.oreilles(),0,40,0,object.kParentSpace )
    else
        log.error ( "base non chargée!" )
    end
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
