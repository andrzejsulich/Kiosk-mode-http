# Kiosk-mode-http
Kiosk mode screensaver for any website

To make the script work, you would need to:
Compile or Convert the Script: You must use a third-party tool (like an PowerShell-to-EXE converter) to turn the Launch_Webpage.ps1 script into a standalone executable file (e.g., MyWebScreen.exe).
Rename the Executable: You then need to manually rename the compiled file from MyWebScreen.exe to MyWebScreen.scr.
Install: Copy the renamed .scr file to the C:\Windows\System32 folder.

Script to launch a specific URL in full-screen Kiosk mode using Microsoft Edge.

NOTE: This script is intended to be compiled into an executable (.exe) and then renamed to a screensaver (.scr) file.
Screensavers must handle command-line arguments like /s, /c, and /p, which this simple script does NOT handle.
It only executes the "start screensaver" action. For a proper screensaver, you should use C# or another language designed for this.
 
Powershell essential to start website in Edge Kiosk Mode (for test purposes):
cd "C:\Program Files (x86)\Microsoft\Edge\Application"
.\msedge.exe --kiosk --edge-kiosk-type=fullscreen localhost
localhost should be replaced to target webpage address
