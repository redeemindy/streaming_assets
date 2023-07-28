#Let's schedule this with https://blog.netwrix.com/2018/07/03/how-to-automate-powershell-scripts-with-task-scheduler/

Add-Type -AssemblyName "PresentationFramework"

#Get OBS if open
$obs = Get-Process obs64 -ErrorAction SilentlyContinue
if($obs) {
    #close gracefully if we can
    $obs.CloseMainWindow()
    Sleep 10
    if (!$obs.HasExited) { #probably this means we're still streaming-- we shouldn't be, though
        $kill = [System.Windows.MessageBox]::Show("$($obs.Name) couldn't be closed gracefully. Hard close?","App Close Error","YesNoCancel","Error")
        if($kill -eq "Yes"){
            $obs | Stop-Process -Force
        }
    }
}

#Lock workstation
rundll32.exe user32.dll,LockWorkStation;