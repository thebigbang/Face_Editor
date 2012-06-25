--------------------------------------------------------------------------------
--  Handler.......... : onInit
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function main.onInit (  )
--------------------------------------------------------------------------------
	
    application.setCurrentUserScene ( "scene" )
    
    --on créé le HUD; temp le temps de savoir comment appeler un etat:!!
    local hUser = application.getCurrentUser ( )
    hud.newTemplateInstance ( hUser, "HUD", "HUD" )

    this.globalRotation (-45 )
    this.setBase()
    this.setBaseFront ( )
    this.setBaseOreilles ( )
    this.setBaseNez ( )
    this.setBaseYeux ( )
    this.sendEvent ( "onUpdateColor" )
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
