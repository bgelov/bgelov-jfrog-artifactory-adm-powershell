#Get all artifactory users

$url = 'https://artifactory.bgelov.ru' #Artifactory URL
$apiKey = 'BLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLA' #api key
$ResultPath = 'D:\result' #Result path

Invoke-WebRequest -H @{'X-JFrog-Art-Api' = $apiKey} -Method Get "$url/api/security/users" -OutFile "$ResultPath\artifactory_users.json"

