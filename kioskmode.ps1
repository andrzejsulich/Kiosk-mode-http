# Script to launch a specific URL in full-screen Kiosk mode using Microsoft Edge.
#
# NOTE: This script is intended to be compiled into an executable (.exe)
# and then renamed to a screensaver (.scr) file.
# Screensavers must handle command-line arguments like /s, /c, and /p, which
# this simple script does NOT handle. It only executes the "start screensaver" action.
# For a proper screensaver, you should use C# or another language designed for this.

# 1. DEFINE THE TARGET URL HERE
$TargetURL = "https://www.google.com/search?q=screensaver+test"

# 2. Define the path to Microsoft Edge
$EdgePath = "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe"

# 3. Check if Edge exists, otherwise fall back to the default browser (optional)
if (-not (Test-Path $EdgePath)) {
    Write-Host "Microsoft Edge not found at the expected path. Using default browser."
    $EdgePath = "cmd.exe"
    $Arguments = "/c start $TargetURL"
} else {
    # The --kiosk argument forces the browser into full-screen mode without borders/UI.
    # Replace 'msedge.exe' with 'chrome.exe' if you prefer Chrome, ensuring the path is correct.
    $Arguments = "--kiosk --edge-kiosk-type=fullscreen $TargetURL"
}

# 4. Start the process
Write-Host "Launching URL: $TargetURL"
Start-Process -FilePath $EdgePath -ArgumentList $Arguments -NoNewWindow