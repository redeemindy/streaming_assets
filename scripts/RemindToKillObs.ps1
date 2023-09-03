$obs = Get-Process obs64 -ErrorAction SilentlyContinue

if($obs){
    if([System.Windows.MessageBox]::Show("OBS appears to still be running from last week. You need to restart OBS before streaming.","OBS Still Running","Ok","Error")){
        #while we're not sure if this works, I don't want to kill OBS in the middle of a stream
        #$shh = $obs.CloseMainWindow()
        $obs2 = Get-Process obs64 -ErrorAction SilentlyContinue
        if($obs2){
            #$shh = $obs2.CloseMainWindow()
        }
    }
}