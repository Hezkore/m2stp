#Import "../stf"
Using stf..

Function Main()
	
	'Create a new simple text format object
	Local formatText:=New StfString
	
	'Format test text
	Print formatText.Format( "STF version is v%stf_version%" )
	
	'Format again
	formatText.Format( "Next version will be v$add(%stf_version%,1)" )
	Print formatText
End