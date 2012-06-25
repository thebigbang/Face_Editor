--------------------------------------------------------------------------------
--  Handler.......... : onEarsSlided
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function hudAI.onEarsSlided (  )
--------------------------------------------------------------------------------
local usr=application.getCurrentUser ( )
if(usr==nil)then return end

    local Slider
    Slider=hud.getComponent (usr,"HUD.EarsSlider")
 
 if(Slider==nil)then return end
 
    local val=hud.getSliderValue ( Slider)
    local newPosition=0
    
    if(this.EarsOldValue ( )>val)then newPosition=-1
    elseif(this.EarsOldValue ( )<val)then newPosition=1 end
    
    object.sendEvent (user.getAIVariable ( usr,"main","oreilles" ),"OreillesAI","onOreillesChanged",newPosition )
    
    hud.setLabelText ( hud.getComponent ( usr,"HUD.EarsValueLabel" ),string.format ("%g",val  ))

    this.EarsOldValue (val )
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
