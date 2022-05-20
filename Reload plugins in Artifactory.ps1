#Reload plugins in Artifactory

$url = 'https://artifactory.bgelov.ru' #Artifactory URL
$apiKey = 'BLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLABLA' #api key

Invoke-RestMethod "$url/artifactory/api/plugins/execute/reload" -Method POST -H @{'X-JFrog-Art-Api' = $apiKey} 
