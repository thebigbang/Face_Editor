--------------------------------------------------------------------------------
--  Handler.......... : onMouseWheel
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function main.onMouseWheel ( nDelta )
--------------------------------------------------------------------------------
	local newZ=this.camZInit ( )+(nDelta*2)
    local newX=this.camXInit ( )+(nDelta*2)
    
    if(newZ<-139 and newZ>-240)then this.camZInit (newZ) end    
    if(newX<-106 and newX>-205)then this.camXInit (newX) end
    
local cam=application.getCurrentUserActiveCamera ( )
if(cam~=nil)
    then
    object.setTranslation ( cam,this.camXInit ( ),this.camYInit ( ),this.camZInit ( ),object.kGlobalSpace )    
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
