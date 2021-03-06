' -----------------------------------------------------------------------------
' Title: km2mi.bas - translation unit for fgConvertFBG.bas
' Version: 0.1 - May 2017
' Author: Robert Lock - beannachtai@homtail.com
' License: GPL v3
' About: Convert kilometers to miles
' -----------------------------------------------------------------------------
Locate 15,3 : Input "Enter the distance in kilometers: ",sDist
dDistE = Val(sDist)
While dDistE < 0.001 or Len(sDist) = 0 ' < 0.001 will reject accidental character input
	Locate 15,3 : Print "                                            "
	Locate 15,3 : Input "Enter the distance in kilometers: ",sDist
	Locate 16,3 : Print "Out of range: enter a postive distance."
	dDistE = Val(sDist)
Wend
dDistC = dDistE * kmTmi
Locate 16,2 : Print "                                            "
Locate 16,2
Print Using "#####.## kilometers is #####.## miles. ";dDistE;dDistC;
While Inkey$ <> "": Wend ' Flush the buffer
Sleep
Cls
' -----------------------------------------------------------------------------
