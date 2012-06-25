--------------------------------------------------------------------------------
--  Function......... : setBase
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function main.setBase ( )
--------------------------------------------------------------------------------
	
	local s = application.getCurrentUserScene ( )
    
    if ( s == nil )
    then
    return
    end

    local base = scene.createRuntimeObject( s, "base" )
    if ( base ~= nil )
    then
        this.base_head ( base )
        object.setUniformScale (this.base_head(),3)
        object.setRotation (this.base_head ( ),0,this.globalRotation (),0,object.kParentSpace  )
        object.setTranslation (this.base_head(),0,40,0,object.kParentSpace )
        
    else
        log.error ( "base non chargée!" )
    end
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
