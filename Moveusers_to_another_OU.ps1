import-module ActiveDirectory
$users = import-csv -path C:\Users\ajp13577\book1.csv
foreach ($user in $users) {  
$ajp=$User.name3
#$ajp=(Get-ADUser -Identity $_.ajp3).distinguishedName
write-host $ajp
Get-ADUser $ajp | Move-ADObject -TargetPath 'ou=Trainees,dc=ajubachn1,dc=net'
}