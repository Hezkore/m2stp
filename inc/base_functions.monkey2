Namespace stf

'Base functions

'Adds
Class StfAdd Extends StfString.Func
	
	Method OnCall:String( param:Stack<String> ) Override
		If param.Length<=0 Then Return Null
		Local result:Float
		
		For Local s:=Eachin param
			result+=Float(s)
		Next
		
		Return result
	End
End

'Subtracts
Class StfSub Extends StfString.Func
	
	Method OnCall:String( param:Stack<String> ) Override
		If param.Length<=0 Then Return Null
		Local result:Float=Float( param[0] )
		
		For Local i:=1 Until param.Length
			result-=Float( param[i] )
		Next
		
		Return result
	End
End

'Divides
Class StfDiv Extends StfString.Func
	
	Method OnCall:String( param:Stack<String> ) Override
		If param.Length<=0 Then Return Null
		Local result:Float=Float( param[0] )
		
		For Local i:=1 Until param.Length
			result/=Float( param[i] )
		Next
		
		Return result
	End
End

'Multiplies
Class StfMul Extends StfString.Func
	
	Method OnCall:String( param:Stack<String> ) Override
		If param.Length<=0 Then Return Null
		Local result:Float=Float( param[0] )
		
		For Local i:=1 Until param.Length
			result*=Float( param[i] )
		Next
		
		Return result
	End
End