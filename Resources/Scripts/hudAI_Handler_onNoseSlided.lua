--------------------------------------------------------------------------------
--  Handler.......... : onNoseSlided
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function hudAI.onNoseSlided (  )
--------------------------------------------------------------------------------
local usr=application.getCurrentUser ( )
if(usr==nil)then return end

    local Slider
    Slider=hud.getComponent (usr,"HUD.NoseSlider")
 
 if(Slider==nil)then return end
 
    local val=hud.getSliderValue ( Slider)
    local newPosition=0
    
    if(this.NoseOldValue ( )>val)then newPosition=-1
    elseif(this.NoseOldValue ( )<val)then newPosition=1 end
    
    object.sendEvent (user.getAIVariable ( usr,"main","nez" ),"NezAI","onNezChanged",newPosition )
    
    hud.setLabelText ( hud.getComponent ( usr,"HUD.NoseValueLabel" ),string.format ("%g",val  ))

    this.NoseOldValue (val )
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
