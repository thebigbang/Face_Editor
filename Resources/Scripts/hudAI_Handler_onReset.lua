--------------------------------------------------------------------------------
--  Handler.......... : onReset
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function hudAI.onReset (  )
--------------------------------------------------------------------------------
    local defaultRotation=-45
    local usr=application.getCurrentUser ( )
    if(usr==nil)then return end
    --reset des différentes valeurs de rotation:
    
    user.setAIVariable (usr,"main","globalRotation",defaultRotation)
    object.setRotation (user.getAIVariable ( usr,"main","base_head"),0,defaultRotation,0,object.kParentSpace)
    object.sendEvent ( user.getAIVariable ( usr,"main","front") , "FrontAI", "onTurn",defaultRotation )
    object.sendEvent ( user.getAIVariable ( usr,"main","oreilles"), "OreillesAI", "onTurn",defaultRotation)
    object.sendEvent ( user.getAIVariable ( usr,"main","nez") , "NezAI", "onTurn",defaultRotation )
    object.sendEvent ( user.getAIVariable ( usr,"main","yeux"),"YeuxAI","onTurn",defaultRotation)
    
    --reset des différents mesh 3D:
    user.sendEvent ( usr,"main","onBaseHeadReset" )
    object.sendEvent ( user.getAIVariable ( usr,"main","front") , "FrontAI", "onFrontReset")
    object.sendEvent ( user.getAIVariable ( usr,"main","oreilles"), "OreillesAI", "onOreillesReset")
    object.sendEvent ( user.getAIVariable ( usr,"main","nez") , "NezAI", "onNezReset")
    object.sendEvent ( user.getAIVariable ( usr,"main","yeux"),"YeuxAI","onYeuxReset")
    
    --reset des éléments du HUD:
    hud.setSliderValue ( hud.getComponent (usr,"HUD.BlueColorSlider"), 0)
    hud.setSliderValue ( hud.getComponent (usr,"HUD.GreenColorSlider"), 0)
    hud.setSliderValue ( hud.getComponent (usr,"HUD.RedColorSlider"), 0)
    
    hud.setSliderValue ( hud.getComponent (usr,"HUD.NoseSlider"), 0)
    hud.setSliderValue ( hud.getComponent (usr,"HUD.MouthSlider"), 0)
    hud.setSliderValue ( hud.getComponent (usr,"HUD.ForeheadSlider"), 0)
    hud.setSliderValue ( hud.getComponent (usr,"HUD.EarsSlider"), 0)
    hud.setSliderValue ( hud.getComponent (usr,"HUD.EyesSlider"), 0)
    this.sendEvent ("onSetDefault")
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------