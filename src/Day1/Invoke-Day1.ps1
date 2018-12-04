Function Invoke-Day1 {
    $sum = 0
    Get-Content .\input.txt | foreach {$sum += $_}
    $sum
}

Function Invoke-Day1-Part2 {
    [System.Collections.ArrayList]$freqs = @()
    $sum = 0
    $changes = Get-Content .\input.txt
    $i = 0

    while ($true) {
        if ($freqs.Contains($sum)) {
            $sum
            break
        }
        else {
            $freqs.Add($sum) | Out-Null
        }
        
        $sum += $changes[$i]

        if ($i -ge $changes.Length-1) {
            $i = 0
        }
        else {
            $i++
        }
    }
}