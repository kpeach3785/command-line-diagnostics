$date = Get-Date
$output = "C:\KyleTools\DiagnosticReport.txt"

"==============================" | Out-File $output
"Kyle Laptop Diagnostic Report" | Out-File $output -Append
"Date: $date" | Out-File $output -Append
"==============================" | Out-File $output -Append
"" | Out-File $output -Append

"--- SYSTEM INFORMATION ---" | Out-File $output -Append
systeminfo | Out-File $output -Append
"" | Out-File $output -Append

"--- RUNNING PROCESSES ---" | Out-File $output -Append
tasklist | Out-File $output -Append
"" | Out-File $output -Append

"--- STARTUP PROGRAMS ---" | Out-File $output -Append
wmic startup get caption,command | Out-File $output -Append
"" | Out-File $output -Append

"--- DISK SPACE ---" | Out-File $output -Append
wmic logicaldisk get size,freespace,caption | Out-File $output -Append
"" | Out-File $output -Append

"--- NETWORK CONNECTIONS ---" | Out-File $output -Append
netstat -ano | Out-File $output -Append
"" | Out-File $output -Append

"Diagnostic Complete." | Out-File $output -Append