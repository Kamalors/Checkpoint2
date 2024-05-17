# Journal de log
function Log {
    param (
        [string]$Content
    )
  
    # Construit la ligne de journal
    $Date = Get-Date -Format "dd/MM/yyyy-HH:mm:ss"
    $User = [System.Security.Principal.WindowsIdentity]::GetCurrent().Name
    $logLine = "$Date;$User;$Content"

    # Ajoute la ligne de journal au fichier
    Add-Content -Path $LogFile -Value $logLine
}

# Définir la fonction Random-Password
Function Random-Password {
    param (
        [int]$length = 12
    )
    
    $punc = 46..46
    $digits = 48..57
    $letters = 65..90 + 97..122
    $password = Get-Random -Count $length -InputObject ($punc + $digits + $letters) | `
        ForEach -Begin { $aa = $null } -Process {$aa += [char]$_} -End {$aa}
    Return $password.ToString()
}

# Définir la fonction ManageAccentsAndCapitalLetters
Function ManageAccentsAndCapitalLetters {
    param ([String]$String)
    
    $StringWithoutAccent = $String -replace '[éèêë]', 'e' -replace '[àâä]', 'a' -replace '[îï]', 'i' -replace '[ôö]', 'o' -replace '[ùûü]', 'u'
    $StringWithoutAccentAndCapitalLetters = $StringWithoutAccent.ToLower()
    $StringWithoutAccentAndCapitalLetters
}

# Début du script
Write-Host "--- Début du script ---" 
Log "--- Début du script ---"

# Définir les chemins
$Path = "C:\Scripts"
$CsvFile = "$Path\Users.csv"
$LogFile = "$Path\Log.log"

# Importer les utilisateurs depuis le fichier CSV
$Users = Import-Csv -Path $CsvFile -Delimiter ";" -Header "prenom","nom","","","","description","","","","" -Encoding UTF8 | Select-Object -Skip 1

foreach ($User in $Users) {
    $Prenom = ManageAccentsAndCapitalLetters -String $User.prenom
    $Nom = ManageAccentsAndCapitalLetters -String $User.Nom
    $Name = "$Prenom.$Nom"
    If (-not (Get-LocalUser -Name "$Prenom.$Nom" -ErrorAction SilentlyContinue)) {
        $Pass = Random-Password
        $Password = ConvertTo-SecureString $Pass -AsPlainText -Force 
        $Description = "$($User.description) - $($User.fonction)"
        $UserInfo = @{
            Name                 = $Name
            FullName             = $Name
            Password             = $Password
            AccountNeverExpires  = $true
            PasswordNeverExpires = $false
            Description          = $Description
        }

        New-LocalUser @UserInfo
        Add-LocalGroupMember -Group "Utilisateur" -Member "$Name"
        Write-Host "Le compte $Prenom.$Nom a été créé avec le mot de passe $Pass" -ForegroundColor Green
        Log "Le compte $Prenom.$Nom a été créé avec le mot de passe $Pass"
    }
}

pause

# Fin du script
Write-Host "--- Fin du script ---" 
Log "--- Fin du script ---"
Start-Sleep -Seconds 10
