Set-Location $PSScriptRoot
$inputFile = Get-Content .\inputs-trebuchet
$alphas = '[a-zA-Z]'
[System.Int32[]]$processed = @()
foreach ($line in $inputFile) {
  $digits = $line -replace $alphas, ''
  $firstDigit = $digits.Substring(0, 1)
  $lastDigit = $digits.Substring(($digits.Length - 1), 1)
  $processed += $firstDigit + $lastDigit -as [int]
}
Write-Output "Part 1: $(($processed | Measure-Object -Sum).Sum)"
