# Requesting Admin to enter a user name, which he wants to lookup
function Get-JSUserdetails
{
      [CMDLetBinding()]   # Creating an Advance function
      param(
            [paramater(Mandatory=$true)]
            [ValidateSet("Administrator", "Guest", "Rus", "krbtgt", "Linuxtest", "CORP$")]
            [string]$temp 
      )   

      PROCESS {
            # Checking Active Directory for user details 
            Write-Verbose "Query Active Directory for the user information"
            Get-ADUser -Identity $temp 
            
            # Switch function proceessing 
            switch($temp) {
                        Administrator {'This Account has full permission in the domain'}
                        Guest {'Used for visitors'} 
                        Rus {'This is a user account with limited permission'}
                        krbtgt{'Kerberos account'}
                        Linuxtest {'Linux machine account'}
                        CORP$ {'Machine accont'} 
           }
      }
}
