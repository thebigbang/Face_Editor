--------------------------------------------------------------------------------
--  Handler.......... : onMouthSlided
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function hudAI.onMouthSlided (  )
--------------------------------------------------------------------------------
local usr=application.getCurrentUser ( )
if(usr==nil)then return end

    local Slider
    Slider=hud.getComponent (usr,"HUD.MouthSlider")
 
 if(Slider==nil)then return end
 
    local val=hud.getSliderValue ( Slider)
    local newPosition=0
    
    if(this.MouthOldValue ( )>val)then newPosition=-1
    elseif(this.MouthOldValue ( )<val)then newPosition=1 end
    
--    object.sendEvent (user.getAIVariable ( usr,"main","bouche" ),"BoucheAI","onBoucheChanged",newPosition )
    
    hud.setLabelText ( hud.getComponent ( usr,"HUD.MouthValueLabel" ),string.format ("%g",val  ))

    this.MouthOldValue (val )
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
