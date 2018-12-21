function Invoke-Day2 {
    Param (
        $in
    )

    $twos = 0
    $threes = 0

    foreach ($boxid in $in) {
        $lettergroups = [char[]]$boxid | Group-Object

        if ($lettergroups | Where-Object Count -eq 2) {
            $twos++
        }
         if ($lettergroups | Where-Object Count -eq 3) {
            $threes++
        }
    }
    
    $twos * $threes
}