#My Powershell Profile
#Screen Clean Setup
CLEAR-HOST
#Window Setup
$Host.UI.RawUI.WindowTitle = "Admin"
#characters Setup to utf-8
chcp 65001 | Out-Null
#prompt setup
function prompt {"$env:USERNAME@$env:COMPUTERNAME $((Get-Location).Path) > "}
#Aliases setup
Set-Alias -Name adb -Value 'D:\Android Tools\adb.exe'
Set-Alias -Name help -Value Get-help
Set-Alias -Name notepad -Value 'C:\Program Files\Notepad++\notepad++.exe'
Set-Alias docker-compose "docker-compose.exe"
Set-Alias docker "docker.exe"
Set-Alias activate ".\env\Scripts\Activate"
#Favorite-Folders-Setup
function devops{
    set-location D:\Codes
}
function webs{
    set-location c:\xampp\htdocs\webs
}
#poweroff set-up
function poweroff{
	Stop-Computer -COMPUTERNAME "localhost"
}
#Run to start
HOSTNAME
GET-DATE -f "yyyy. MMMM dd., dddd HH:mm:ss"
HOTFIX | Sort-Object InstalledOn -Descending | Select-Object -Property Description, InstalledOn | Format-Table -AutoSize	
