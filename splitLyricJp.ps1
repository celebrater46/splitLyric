[string] $lyric = "�͂��炫�����Ȃ��ɂ���"
[string[]] $arr = @()

function isYouon($str){
    if($str -lt 2){
        return $FALSE
    }
    $c = $str.Substring(1,1)
    # if($c -eq "��" -or $c -eq "��" -or $c -eq "��" -or $c -eq "��" -or $c -eq "��")
    switch ($c) {
        "��" { return $TRUE }
        "��" { return $TRUE }
        "��" { return $TRUE }
        "��" { return $TRUE }
        "��" { return $TRUE }
        "��" { return $TRUE }
        "��" { return $TRUE }
        "��" { return $TRUE }
        default { return $FALSE }
    }
}

# return @(<char>, <remain>)
function trimOneChar($str){
    if($str.length -lt 1){
        return @("��", "")
    } elseif($str.length -lt 2){
        return @($str, "")
    } else {
        if(isYouon($str)){
            return @($str.Substring(0,2), $str.Substring(2))
        } else {
            return @($str.Substring(0,1), $str.Substring(1))
        }
    }
}

$remain = $lyric;
while($remain.length -gt 0){
    $separated = trimOneChar($remain)
    $arr += $separated[0]
    $remain = $separated[1]
}

foreach($char in $arr){
    write-host $char
}

write-host $arr
write-host $arr.length