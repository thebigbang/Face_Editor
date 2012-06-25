--------------------------------------------------------------------------------
--  Function......... : setBaseNez
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function main.setBaseNez ( )
--------------------------------------------------------------------------------
local s = application.getCurrentUserScene ( )
    
    if ( s == nil )
    then
    return
    end

    local bnez = scene.createRuntimeObject( s, "nez" )
    if ( bnez ~= nil )
    then
        this.nez ( bnez )
        object.setUniformScale (this.nez(),3)
        object.setRotation (this.nez ( ),0,-45,0,object.kParentSpace  )
        object.setTranslation (this.nez(),0,40,0,object.kParentSpace )
    else
        log.error ( "base non chargée!" )
    end
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
