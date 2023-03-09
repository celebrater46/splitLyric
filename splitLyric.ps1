[string] $lyric = "hatarakitakunainyonnnyonnmyohoooo"

function isVowel($lyric){
    $zero = $lyric.Substring(0, 1)
    if(($zero -eq "a") -Or ($zero -eq "i") -Or ($zero -eq "u") -Or ($zero -eq "e") -Or ($zero -eq "o")){
        return $TRUE
    } else {
        return $FALSE
    }
}

function isConsonant($lyric){
    $zero = $lyric.Substring(0, 1)
    if(($zero -eq "k") -Or ($zero -eq "s") -Or ($zero -eq "t") -Or ($zero -eq "n") -Or ($zero -eq "h") -Or ($zero -eq "m") -Or ($zero -eq "y") -Or ($zero -eq "r") -Or ($zero -eq "w") -Or ($zero -eq "g") -Or ($zero -eq "z") -Or ($zero -eq "d") -Or ($zero -eq "b") -Or ($zero -eq "p") -Or ($zero -eq "x") -Or ($zero -eq "l") -Or ($zero -eq "c") -Or ($zero -eq "v") -Or ($zero -eq "q") -Or ($zero -eq "f") -Or ($zero -eq "j")){
        return $TRUE
    } else {
        return $FALSE
    }
}

function trimOneChar($lyric){
    if($lyric.Length -eq 1) {
        return @{char=$lyric; remain=""}
    }

    $zero = $lyric.Substring(0, 1)
    if(isVowel){
        return @{char=$zero; remain=$lyric.Substring(1)}
    } elseif(isConsonant){
        $one = $lyric.Substring(1, 1)
        if($zero -eq $one){
            return @{char=$zero; remain=$lyric.Substring(1)}
        }
    }
}