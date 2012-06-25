--------------------------------------------------------------------------------
--  Handler.......... : onSkinColorChanged
--  Author........... : 
--  Description...... : méthode permettant le changement de couleurs dans les sliders.
--                      NON optimisée pour le moment.
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function hudAI.onSkinColorChanged ( typeColor )
--------------------------------------------------------------------------------
local usr=application.getCurrentUser ( )
if(usr==nil)then return end

    local Slider
    
	if(typeColor=="blue")then
        Slider=hud.getComponent (usr,"HUD.BlueColorSlider")
    elseif(typeColor=="green")then
    Slider=hud.getComponent (usr,"HUD.GreenColorSlider")
    elseif(typeColor=="red")then
    Slider=hud.getComponent (usr,"HUD.RedColorSlider")
    end
    
    if(Slider==nil)then return end
    local val=hud.getSliderValue ( Slider)
    local nRangeMin, nRangeMax = hud.getSliderRange ( Slider )
    
    if(val==nil)then return end
    val=(val/nRangeMax)
    --val=(val/(nRangeMax+nRangeMin))
    if(typeColor=="blue")then
        user.setAIVariable (usr,"main","Bcolor",val )
        hud.setLabelText ( hud.getComponent ( usr,"HUD.BlueValueLabel" ),string.format ("Blue: %.3g",val  ) )
    elseif(typeColor=="green")then
        user.setAIVariable (usr,"main","Gcolor",val )
        hud.setLabelText ( hud.getComponent ( usr,"HUD.GreenValueLabel" ),string.format ("Green: %.3g",val  ))
    elseif(typeColor=="red")then
        user.setAIVariable (usr,"main","Rcolor",val )
        hud.setLabelText ( hud.getComponent ( usr,"HUD.RedValueLabel" ),string.format ("Red: %.3g",val  ))
    end
    
	user.sendEvent ( usr,"main","onUpdateColor" )
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
