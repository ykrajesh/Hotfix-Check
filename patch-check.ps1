$hostname = Get-Content C:\hotfix\hostname.txt
foreach ($name in $hostname)
{
  Get-HotFix -ComputerName $name | Select-Object HotFixID , InstalledOn , PSComputerName ,Description -Last 3
# $deatil |  Export-Csv C:\hotfix1.csv -NoTypeInformation -Append
 
}
