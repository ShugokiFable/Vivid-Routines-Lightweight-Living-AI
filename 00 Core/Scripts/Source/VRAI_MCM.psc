Scriptname VRAI_MCM extends MCM_ConfigBase
{Vivid Routines - Lightweight Living AI.
 Every setting is bound to a GlobalVariable via config.json (sourceType
 "GlobalValue"), so MCM Helper reads and writes the values natively and the
 AI packages react instantly. This script only anchors the menu; it keeps no
 state and registers for no events - zero save bloat by design.}

Int Function GetVersion()
	return 1
EndFunction
