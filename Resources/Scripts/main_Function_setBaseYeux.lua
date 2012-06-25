--------------------------------------------------------------------------------
--  Function......... : setBaseYeux
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function main.setBaseYeux ( )
--------------------------------------------------------------------------------
local s = application.getCurrentUserScene ( )
    
    if ( s == nil )
    then
    return
    end

    local byeux = scene.createRuntimeObject( s, "yeux" )
    if ( byeux ~= nil )
    then
        this.yeux ( byeux)
        object.setUniformScale (this.yeux(),3)
        object.setRotation (this.yeux ( ),0,-45,0,object.kParentSpace  )
        object.setTranslation (this.yeux(),0,40,0,object.kParentSpace )
    else
        log.error ( "base des yeux non chargée!" )
    end
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
