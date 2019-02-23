import-module ActiveDirectory
$users = import-csv -path C:\Users\ajp13577\book1.csv
foreach ($user in $users) {  
$usermove=$User.userid
Get-ADUser $usermove | Move-ADObject -TargetPath 'ou=Trainees,dc=ajubachn1,dc=net'
write-host "$usermove moved to new OU"
}
