# Requesting Admin to enter a user name, which he wants to lookup

$temp = Read-Host "Enter the name of the Domain user, for which you need to the property"

# Move the user details to a varaible called $users
$users = Get-ADUser -Identity $temp 

# Running the switch function
switch($temp) {
           Administrator {'This Account has full permission in the domain'}
           Guest {'Used for visitors'} 
           Rus {'This is a user account with limited permission'}
           krbtgt{'Kerberos account'}
           Linuxtest {'Linux machine account'}
           CORP$ {'Machine accont'} 
      }
 

