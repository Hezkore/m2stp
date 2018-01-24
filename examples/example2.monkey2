#Import "../stf"
Using stf..

#Import "assets/version.txt"

Function Main()
	
	'Create a new simple text format object
	Local formatText:=New StfString
	
	'Exactly the same as example1 but via external file
	Print formatText.Format( LoadString("asset::version.txt") )
End