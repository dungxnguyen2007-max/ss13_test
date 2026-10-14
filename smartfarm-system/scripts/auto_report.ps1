
Write-Host "Dang loc log..." > backup/bao-cao-su-co.txt
Write-Host "get-date >> backup/bao-cao-su-co.txt"
Write-Host "=== BAO CAO LOI ===" > logs/auto_report.txt
Get-Content ../log-he-thong.log | Select-String "ERROR" >> backup/bao-cao-su-co.txt
Write-Host "Tong so su co : "
(Get-Content ../log-he-thong.log | Select-String "ERROR" >> backup/bao-cao-su-co.txt).count


