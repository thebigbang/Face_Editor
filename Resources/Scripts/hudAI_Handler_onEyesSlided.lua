--------------------------------------------------------------------------------
--  Handler.......... : onEyesSlided
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function hudAI.onEyesSlided (  )
--------------------------------------------------------------------------------
local usr=application.getCurrentUser ( )
if(usr==nil)then return end

    local Slider
    Slider=hud.getComponent (usr,"HUD.EyesSlider")
 
 if(Slider==nil)then return end
 
    local val=hud.getSliderValue ( Slider)
    local newPosition=0
    
    if(this.EyesOldValue ( )>val)then newPosition=-1
    elseif(this.EyesOldValue ( )<val)then newPosition=1 end
    
    object.sendEvent (user.getAIVariable ( usr,"main","yeux" ),"YeuxAI","onYeuxChanged",newPosition )
    
    hud.setLabelText ( hud.getComponent ( usr,"HUD.EyesValueLabel" ),string.format ("%g",val  ))

    this.EyesOldValue (val )
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
