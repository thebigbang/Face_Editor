--------------------------------------------------------------------------------
--  Handler.......... : onSetDefault
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function hudAI.onSetDefault (  )
--------------------------------------------------------------------------------
local usr=application.getCurrentUser ( )
if(usr==nil)then return end


hud.setLabelText ( hud.getComponent ( usr,"HUD.NoseValueLabel" ),"0" )
hud.setLabelText ( hud.getComponent ( usr,"HUD.EyesValueLabel" ),"0" )
hud.setLabelText ( hud.getComponent ( usr,"HUD.EarsValueLabel" ),"0" )
hud.setLabelText ( hud.getComponent ( usr,"HUD.ForeheadValueLabel" ),"0" )
hud.setLabelText ( hud.getComponent ( usr,"HUD.MouthValueLabel" ),"0" )
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
