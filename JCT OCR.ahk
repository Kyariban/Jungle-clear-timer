#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
CoordMode, Pixel

loopDelay := 500    ; in ms
nextCampCSNumber := 4
imageName = imgs/4.jpg

imageFound() {	
	global nextCampCSNumber
	global imageName

	Send {c}
	nextCampCSNumber+=4
	if(nextCampCSNumber <= 24) {
		if (nextCampCSNumber = 8) {			
			imageName = imgs/8.jpg
		}
		else if (nextCampCSNumber = 12) {
			imageName = imgs/12.jpg
		}
		else if (nextCampCSNumber = 16) {
			imageName = imgs/16.jpg
		}
		else if (nextCampCSNumber = 20) {
			imageName = imgs/20.jpg
		}
		else if (nextCampCSNumber = 24) {
			imageName = imgs/24.jpg
		}
		
	} else {
		resetRun() ; only resets the OCR not the associated livesplit
	}
		
}

resetRun() {
	global nextCampCSNumber
	global imageName
	nextCampCSNumber := 4
	imageName = imgs/4.jpg
}

loop { ; Main OCR loop, can be improved a bit so it scans less of the screen

	ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, *90 %imageName%
        If !ErrorLevel  
            imageFound()

    Sleep %loopDelay%
}


~^+p:: ; Catches the reset shortcut from the practice tool
	resetRun()
	Return
