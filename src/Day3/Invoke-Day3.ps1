function Invoke-Day3 {
    [CmdLetBinding()]
    Param (
        $in
    )

    (Get-ClaimedInches -in $in | Group-Object x, y | Where-Object count -gt 1 | Measure-Object).Count 

    
}

function Get-ClaimedInches {
    [CmdletBinding()]
    Param (
        $in
    )

    foreach ($claim in $in) {
        Write-Verbose $claim
        $startx = $claim.substring($claim.indexof('@')+2,($claim.indexof(',')-$claim.indexof('@')-2))
        $starty = $claim.substring($claim.indexof(',')+1,($claim.indexof(':')-$claim.indexof(',')-1))
        $xadd = $claim.substring($claim.indexof(':')+2,($claim.indexof('x')-$claim.indexof(':')-2))
        $yadd = $claim.substring($claim.indexof('x')+1)

        for ($x = $xadd-1;$x -ge 0;$x--) {
            for ($y = $yadd-1;$y -ge 0;$y--) {
                $inchtoclaim = [PSCustomObject]@{
                    'x' = $x + $startx
                    'y' = $y + $starty
                }
                $inchtoclaim
            }
        }
    }
}