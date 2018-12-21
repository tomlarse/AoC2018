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

function Invoke-Day2Part2 {
    Param (
        $in
    )

    foreach ($boxid in $in) {
        foreach ($comparebox in $in) {
            if ($boxid -ne $comparebox) {
                $differences = 0
                for ($i=0; $i -lt $boxid.length;$i++) {
                    if ($boxid[$i] -ne $comparebox[$i]) {
                        $differences ++
                        $diffindex = $i
                    }
                }
                if ($differences -eq 1) {
                    return $boxid.Remove($diffindex,1)
                }
            }
        }
    }
}