Add-Type -AssemblyName System.Windows.Forms
$latmax = [System.Windows.Forms.Screen]::GetBounds(1) | Select -ExpandProperty Width
$longmax = [System.Windows.Forms.Screen]::GetBounds(1) | Select -ExpandProperty Height
while (1) { 
  $lat = Get-Random -Minimum 0 -Maximum $latmax
  $long = Get-Random -Minimum 0 -Maximum $longmax
  [Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point(($lat), ($long));
  Start-Sleep -Milliseconds 2000
}
