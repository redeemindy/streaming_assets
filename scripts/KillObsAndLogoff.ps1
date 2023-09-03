#Let's schedule this with https://blog.netwrix.com/2018/07/03/how-to-automate-powershell-scripts-with-task-scheduler/

Add-Type -AssemblyName "PresentationFramework"

#Get OBS if open
$obs = Get-Process obs64 -ErrorAction SilentlyContinue
if($obs) {
    #close gracefully if we can
    $obs.CloseMainWindow()
    Sleep 5

    #we might've only closed the care room window, even though it says it's the main window. So
    $obs2 = Get-Process obs64 -ErrorAction SilentlyContinue 
    if($obs2) {
        $obs2.CloseMainWindow()
    }
    Sleep 5
    if (!$obs.HasExited -or ($obs2 -and !$obs2.HasExited)) { #probably this means we're still streaming-- we shouldn't be, though
        $kill = [System.Windows.MessageBox]::Show("$($obs.Name) couldn't be closed gracefully. Hard close?","App Close Error","YesNoCancel","Error")
        if($kill -eq "Yes"){
            $obs | Stop-Process -Force
        }
    }
}

#Lock workstation
rundll32.exe user32.dll,LockWorkStation;