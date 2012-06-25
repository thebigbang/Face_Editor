--------------------------------------------------------------------------------
--  Handler.......... : onUpdateColor
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function main.onUpdateColor (  )
--------------------------------------------------------------------------------
local usr=application.getCurrentUser ()

    object.sendEvent ( this.oreilles ( ),"OreillesAI","onUpdateColor" )
    object.sendEvent ( this.front ( ),"FrontAI","onUpdateColor" )
    object.sendEvent ( this.nez ( ),"NezAI","onUpdateColor" )
    object.sendEvent ( this.yeux ( ),"YeuxAI","onUpdateColor" )
    if(usr~=nil)then
        --  shape.setMeshSubsetMaterial ( this.currentOreilles ( ),1,"beta_skin" )
        shape.overrideMeshMaterialAmbient ( this.base_head(),this.Rcolor ( ),this.Gcolor(),this.Bcolor(),1 )
        -- shape.overrideMeshSubsetMaterialAmbient ( this.currentOreilles(),1,1.0,0.1,0.1,0.5 )
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
