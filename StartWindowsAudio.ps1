# This script checks the status of the Windows Audio service and starts it if it is not running.

# Get the status of the Windows Audio service
$service = Get-Service -Name "AudioSrv"

# Check if the service is not running
if ($service.Status -ne 'Running') {
    # Start the service
    Start-Service -Name "AudioSrv"
    Write-Output "Windows Audio service has been started."
} else {
    Write-Output "Windows Audio service is already running."
}