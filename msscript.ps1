$Host.UI.RawUI.BackgroundColor = 'White'
$Host.UI.RawUI.ForegroundColor = 'Black'
$Host.UI.RawUI.WindowSize = [System.Management.Automation.Host.Size]::new(70,30)
$Host.UI.RawUI.BufferSize = [System.Management.Automation.Host.Size]::new(70,30)
$Host.UI.RawUI.WindowTitle = "MS Multi Gameloader"
$checkadmin = ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)
cls
set-location $env:TEMP

#Links (DO NOT MODIFY!)

write-host "MS Multi Gameloader" -ForegroundColor White -BackgroundColor Black
write-host "VERSION ID: A_1.0.1 [CODENAME: JUNIOR_FIX]" -ForegroundColor White -BackgroundColor Black
write-host "Cracks are available from:" -ForegroundColor Magenta
write-host "SteamRIP.com" -ForegroundColor Magenta
write-host "Gamebounty.World (use UblockOrigin and add ||snowvan.xyz)" -ForegroundColor Magenta
write-host ""

start-sleep -seconds 2

# Functions


function Menu {
    while ($true) {
    write-host "----------------------------------------------------------------"
    write-host "When browsing any pirating site, use an AdBlocker such as UblockOrigin`nIn order to protect yourself from bad actors."
    write-host "----------------------------------------------------------------"
    write-host ""
    write-host "---------------------" -ForegroundColor Blue
    write-host "Please pick an option" -ForegroundColor Blue
    write-host "---Available Games---" -ForegroundColor Blue
    write-host "[1] Geometry Dash"
    write-host "[2] A Dance of fire and ice"
    write-host "---Upcoming Games---" -ForegroundColor Blue
    write-host "[?] Need For Speed: Most wanted Black Edition"
    write-host "[?] PEAK"
    write-host "[?] Getting Over It"
    write-host "---------------------" -ForegroundColor Blue
    write-host "More games are coming soon!" -ForegroundColor Magenta
    write-host "Check the version number to see if new games are released." -ForegroundColor Magenta
    $option = read-host "$"

    switch ($option) {
        '1' {
            write-host "Loading script!"
            irm "https://tinyurl.com/gfgguf" | iex
        }
        '2' {
            write-host "Loading script!"
            irm "https://tinyurl.com/1u293adofai" | iex
        }
        Default {
            write-host "This option doesn't exist." -Foregroundcolor Red
            start-sleep -seconds 1
            cls
        }
    }
}
}

function CheckElevation {
    if ($checkadmin) {
        write-host "Elevated: True" -ForegroundColor Green
        write-host "Launching..." -ForegroundColor Green
        Menu

    } else {
        write-host "Error!" -Foreground Red
        write-host "You need to run this script `nwith an Administrator Powershell instance." -ForegroundColor Red
        start-sleep -seconds 2
            Start-Process powershell -ArgumentList "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs
        exit
    }
}

CheckElevation