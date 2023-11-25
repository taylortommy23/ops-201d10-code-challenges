Get-Process | Sort-Object CPU -Descending

Get-Process | Sort-Object id -Descending

Get-Process | Sort-Object WS | Select-Object -Last 5

Start-Process msedge.exe https://owasp.org/www-project-top-ten

for ($i = 1; $i -le 10; $i++) {Start-Process notepad.exe}

Stop-Process -Name notepad

Stop-Process -id 476
