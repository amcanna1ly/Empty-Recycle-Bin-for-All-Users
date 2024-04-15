$disks = Get-WmiObject Win32_LogicalDisk -Filter "DriveType=3"

foreach ($disk in $disks)
{
                  $rbpathnew = "$($disk.DeviceID)\`$Recycle.Bin"
                  
                  if (Test-Path $rbpathnew)
                  {
                                      cmd /c "rd /s /q $rbpathnew"
                  }
}
