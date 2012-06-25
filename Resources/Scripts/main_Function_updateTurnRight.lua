--------------------------------------------------------------------------------
--  Function......... : updateTurnRight
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function main.updateTurnRight ( )
--------------------------------------------------------------------------------
	
if(this.isTurnR ( ))then
this.globalRotation (this.globalRotation ()+5 )
object.setRotation (this.base_head ( ),0,this.globalRotation (),0,object.kParentSpace)
    object.sendEvent ( this.front ( ), "FrontAI", "onTurn",this.globalRotation ())
    object.sendEvent ( this.oreilles ( ), "OreillesAI", "onTurn",this.globalRotation ())
    object.sendEvent ( this.nez ( ), "NezAI", "onTurn",this.globalRotation ())
    object.sendEvent ( this.yeux(),"YeuxAI","onTurn",this.globalRotation () )
end
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
