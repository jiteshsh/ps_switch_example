$temp = Read-Host "Enter the name of the Domain user, for which you need to the property"
$users = Get-ADUser -Identity $temp 
switch($temp) {
           Administrator {'This Account has full permission in the domain'}
           Guest {'Used for visitors'} 
           Rus {'This is a user account with limited permission'}
           krbtgt{'Kerberos account'}
           Linuxtest {'Linux machine account'}
           CORP$ {'Machine accont'} 
      }
 

