--------------------------------------------------------------------------------
--  Handler.......... : onKeyboardKeyUp
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function main.onKeyboardKeyUp ( kKeyCode )
--------------------------------------------------------------------------------
	
if(kKeyCode==input.kKeyO)then this.turnLeft(false)
elseif(kKeyCode==input.kKeyP)then this.turnRight(false)end
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
