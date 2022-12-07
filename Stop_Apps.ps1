$interval = 6;
$counter = 10;

for(; $counter -gt 0; $counter--)
{
    $processList = Get-Process "chrome","lghub" -ErrorAction SilentlyContinue;
    if($processList)
    {
        Stop-Process $processList -Force;
        Get-Process | Where-Object {$_.HasExited};
    }

    Write-Host $Counter;
    if($counter -eq 1 ) 
        { break }
    Start-Sleep -Seconds $interval;
}