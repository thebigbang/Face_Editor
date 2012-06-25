--------------------------------------------------------------------------------
--  Function......... : updateTurnLeft
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function main.updateTurnLeft ( )
--------------------------------------------------------------------------------

  if(this.isTurnL ( ))then
    this.globalRotation (this.globalRotation ()-5 )
    object.setRotation (this.base_head ( ),0,this.globalRotation (),0,object.kParentSpace)
    object.sendEvent ( this.front ( ), "FrontAI", "onTurn",this.globalRotation ())
    object.sendEvent ( this.oreilles ( ), "OreillesAI", "onTurn",this.globalRotation ())
    object.sendEvent ( this.nez ( ), "NezAI", "onTurn",this.globalRotation ())
    object.sendEvent ( this.yeux(),"YeuxAI","onTurn",this.globalRotation () )
  
  --juste un for pour apprendre a faire cette boucle:
  --local hscene=application.getCurrentUserScene ( )
  --  for i=1,scene.getObjectCount(hscene)
  --  do
  --      object.setRotation (scene.getObjectAt (hscene,i-1 ),0,this.globalRotation (),0,object.kParentSpace)
  --  end
    
  end
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
