param(
  [Parameter(Mandatory)] [string]$Dir,     # Ordner mit slides.html, z. B. instagram\post-02
  [Parameter(Mandatory)] [int]$Count       # Anzahl Folien
)
# Rendert slides.html#1..#Count zu slide-0X.png und slide-0X.jpg (1080x1350).
$ErrorActionPreference = 'Stop'
$Dir = (Resolve-Path $Dir).Path
$edge = 'C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe'
$profileDir = Join-Path $env:TEMP 'tiefenrausch-edge-render'
$url = 'file:///' + ($Dir -replace '\\','/' -replace ' ','%20') + '/slides.html'

Add-Type -AssemblyName System.Drawing
$codec = [System.Drawing.Imaging.ImageCodecInfo]::GetImageEncoders() | Where-Object MimeType -eq 'image/jpeg'
$ep = New-Object System.Drawing.Imaging.EncoderParameters 1
$ep.Param[0] = New-Object System.Drawing.Imaging.EncoderParameter([System.Drawing.Imaging.Encoder]::Quality, [long]92)

for ($i = 1; $i -le $Count; $i++) {
  $png = Join-Path $Dir ('slide-{0:D2}.png' -f $i)
  $jpg = Join-Path $Dir ('slide-{0:D2}.jpg' -f $i)
  & $edge --headless=new --disable-gpu --hide-scrollbars --force-device-scale-factor=1 `
    --user-data-dir="$profileDir" --window-size=1080,1350 --screenshot="$png" "$url#$i" | Out-Null
  $img = [System.Drawing.Image]::FromFile($png)
  $img.Save($jpg, $codec, $ep)
  $img.Dispose()
  Write-Output "Folie $i -> $png"
}
