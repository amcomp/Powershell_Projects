function build-NewUser {
    param (
        [Parameter(Mandatory=$true)]
        [string] $User
    )

    $Password = Read-Host ("Password") -AsSecureString
    $fullname = Read-Host ("Full Name")

    $params = @{
    Name        = $User
    Password    = $Password
    FullName    = $fullname
    Disabled    = $false
    
}
    New-LocalUser @params
}

build-NewUser -User Jim