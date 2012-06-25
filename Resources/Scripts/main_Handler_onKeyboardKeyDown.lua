--------------------------------------------------------------------------------
--  Handler.......... : onKeyboardKeyDown
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function main.onKeyboardKeyDown ( kKeyCode )
--------------------------------------------------------------------------------
--def de la rotation de la tete de base: FULLY Implemented.
	if(kKeyCode==input.kKeyO)then this.turnLeft(true)
    elseif(kKeyCode==input.kKeyP)then this.turnRight(true)
--def du changement de front au clavier
    elseif(kKeyCode==input.kKeyA)then object.sendEvent ( this.front ( ), "FrontAI", "onFrontChanged",  -1 )
    elseif(kKeyCode==input.kKeyZ)then object.sendEvent ( this.front ( ), "FrontAI", "onFrontChanged",  1 )
    elseif(kKeyCode==input.kKeyE)then object.sendEvent ( this.oreilles ( ), "OreillesAI", "onOreillesChanged",  -1 )
    elseif(kKeyCode==input.kKeyR)then object.sendEvent ( this.oreilles( ), "OreillesAI", "onOreillesChanged",  1 )
    elseif(kKeyCode==input.kKeyT)then object.sendEvent ( this.nez ( ), "NezAI", "onNezChanged",  -1 )
    elseif(kKeyCode==input.kKeyY)then object.sendEvent ( this.nez( ), "NezAI", "onNezChanged",  1 )
    elseif(kKeyCode==input.kKeyU)then object.sendEvent ( this.yeux ( ),"YeuxAI","onYeuxChanged",-1 )
    elseif(kKeyCode==input.kKeyI)then object.sendEvent ( this.yeux ( ),"YeuxAI","onYeuxChanged",1 )
    end
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
