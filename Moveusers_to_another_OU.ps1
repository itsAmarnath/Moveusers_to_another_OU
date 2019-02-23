import-module ActiveDirectory
$users = import-csv -path C:\Users\book1.csv   \\Mention here the path of CSV file. 
foreach ($user in $users) {  
$usermove=$User.userid               \\replace userid with name or mail if you want to move users based on name or mail. Remaining other two columns in the CSV can be skipped or left blank.
Get-ADUser $usermove | Move-ADObject -TargetPath 'ou=Trainees,dc=ajubachn1,dc=net'
write-host "$usermove moved to new OU"
}
