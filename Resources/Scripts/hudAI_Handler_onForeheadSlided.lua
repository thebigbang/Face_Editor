--------------------------------------------------------------------------------
--  Handler.......... : onForeheadSlided
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function hudAI.onForeheadSlided (  )
--------------------------------------------------------------------------------
local usr=application.getCurrentUser ( )
if(usr==nil)then return end

    local Slider
    Slider=hud.getComponent (usr,"HUD.ForeheadSlider")
 
 if(Slider==nil)then return end
 
    local val=hud.getSliderValue ( Slider)
    local newPosition=0
    
    if(this.ForeheadOldValue ( )>val)then newPosition=-1
    elseif(this.ForeheadOldValue ( )<val)then newPosition=1 end
    
    object.sendEvent (user.getAIVariable ( usr,"main","front" ),"FrontAI","onFrontChanged",newPosition )
    
    hud.setLabelText ( hud.getComponent ( usr,"HUD.ForeheadValueLabel" ),string.format ("%g",val  ))

    this.ForeheadOldValue (val )
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
