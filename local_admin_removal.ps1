$group =[ADSI]"WinNT://./Administrators"
$members = @($group.psbase.Invoke("Members"))
$cleanMember = $members | foreach {$_.GetType().InvokeMember("Name", 'GetProperty', $null, $_, $null)}
    foreach ($member in $cleanMember){
        if ($member -eq "Administrator" -or $member -eq "other username to exclude"){
        }
        else { 
            net localgroup Administrators /delete $member > $null
            $date = date
            echo "Removed user: $member at $date" >> C:\Windows\AdminRemovalLog.txt 
        }
    }