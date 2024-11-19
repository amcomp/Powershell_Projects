import-module .\dependencies.psm1
add-dependencies
#imports needed modules for main script, then run its function.


$response = Read-Host ("What would you like to do?")


switch ($response) {

    newuser { 
        $username = Read-Host("Username")
        build-NewUser -User $username 
    }
    
    Default {
        Write-Error("Invalid option: $response")
    }
}


