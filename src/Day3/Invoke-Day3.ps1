function Invoke-Day3 {
    Param (
        $in
    )

    $claimedinches = @{}

    foreach ($claim in $in) {
        $startx = $claim.substring($claim.indexof('@')+2,($claim.indexof(',')-$claim.indexof('@')-2))
        $starty = $claim.substring($claim.indexof(',')+1,($claim.indexof(':')-$claim.indexof(',')-1))
        $xadd = $claim.substring($claim.indexof(':')+2,($claim.indexof('x')-$claim.indexof(':')-2))
        $yadd = $claim.substring($claim.indexof('x')+1)

        for ($x = $xadd;$x -gt 0;$x--) {
            for ($y = $yadd;$y -gt 0;$y--) {

            }
        }

    }
}