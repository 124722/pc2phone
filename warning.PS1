$EmFrom = "124722@gmail.com"    
$username = "124722@gmail.com"    
$pwd = "nrhbzscqorfbhtwg"    
$EmTo = "124722@gmail.com"    
$Server = "smtp.gmail.com"    
$port = 587    
$Subj = "WARNING"    
$Bod = "HIGH TEMPERATUER ON PC"       
$securepwd = ConvertTo-SecureString $pwd -AsPlainText -Force    
$cred = New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList $username, $securepwd    
Send-MailMessage -To $EmTo -From $EmFrom -Body $Bod -Subject $Subj -SmtpServer $Server -port $port -UseSsl  -Credential $cred