--------------------------------------------------------------------------------
--  Handler.......... : onUpdateColor
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function NezAI.onUpdateColor (  )
--------------------------------------------------------------------------------
local usr=application.getCurrentUser ()

    if(usr~=nil)then
        local Rcolor=user.getAIVariable ( usr,"main","Rcolor" )
        local Gcolor=user.getAIVariable ( usr,"main","Gcolor" )
        local Bcolor=user.getAIVariable ( usr,"main","Bcolor" )
        if(Rcolor~=nil and Gcolor~=nil and Bcolor~=nil)then
            --  shape.setMeshSubsetMaterial ( this.currentOreilles ( ),1,"beta_skin" )
            shape.overrideMeshMaterialAmbient ( this.currentNez(),Rcolor,Gcolor,Bcolor,1 )
            -- shape.overrideMeshSubsetMaterialAmbient ( this.currentOreilles(),1,1.0,0.1,0.1,0.5 )
        end
    end
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
